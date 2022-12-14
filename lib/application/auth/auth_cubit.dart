// ignore_for_file: depend_on_referenced_packages
import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_production_app/domain/auth/auth_user_model.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/domain/chat/i_chat_service.dart';
import 'package:flutter_production_app/infrastructure/core/firestore_helpers.dart';
import 'package:flutter_production_app/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  late final IAuthService _authService;
  late final IChatService _chatService;
  late final FirebaseStorage _firebaseStorage;
  late final FirebaseFirestore _firebaseFirestore;

  late StreamSubscription<AuthUserModel>? _authUserSubscription;

  AuthCubit() : super(AuthState.empty()) {
    _authService = getIt<IAuthService>();
    _chatService = getIt<IChatService>();
    _firebaseStorage = getIt<FirebaseStorage>();
    _firebaseFirestore = getIt<FirebaseFirestore>();

    _authUserSubscription = _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> signOut() async {
    await _authService.signOut();
    await _chatService.disconnectUser();
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    emit(
      state.copyWith(
        isInProgress: true,
        authUser: authUser,
        isUserCheckedFromAuthService: true,
      ),
    );

    if (state.isLoggedIn) {
      await _chatService.connectTheCurrentUser();

      emit(
        state.copyWith(
          authUser: authUser,
          isInProgress: false,
        ),
      );
    }
  }

  void changeUserName({required String userName}) {
    emit(
      state.copyWith(
        authUser: AuthUserModel(
          id: state.authUser.id,
          phoneNumber: state.authUser.phoneNumber,
          isOnboardingCompleted: false,
          photoUrl: state.authUser.photoUrl,
          userFileImg: state.authUser.userFileImg,
          userName: userName,
        ),
      ),
    );
  }

  void validateUserName({required bool isUserNameValid}) {
    emit(
      state.copyWith(isUserNameValid: isUserNameValid),
    );
  }

  Future<void> changeUserProfileImage({
    required Future<XFile?> userFileImg,
  }) async {
    final path = await userFileImg;

    if (path == null) {
      return;
    }

    final temporaryFile = File(path.path);

    emit(
      state.copyWith(
        authUser: AuthUserModel(
          id: state.authUser.id,
          phoneNumber: state.authUser.phoneNumber,
          isOnboardingCompleted: state.authUser.isOnboardingCompleted,
          userFileImg: temporaryFile,
          photoUrl: state.authUser.photoUrl,
          userName: state.authUser.userName,
        ),
      ),
    );
  }

  Future<void> createProfile() async {
    if (state.isInProgress) {
      return;
    }

    emit(state.copyWith(isInProgress: true));

    final uid = state.authUser.id;

    if (state.authUser.userFileImg != null && state.isUserNameValid) {
      await _firebaseStorage.ref(uid).putFile(state.authUser.userFileImg!).then(
        (taskState) async {
          if (taskState.state.name == TaskState.success.name) {
            await downloadUrl();
          }
        },
      );
    }
  }

  Future<void> downloadUrl() async {
    final uid = state.authUser.id;

    await _firebaseStorage.ref(uid).getDownloadURL().then(
      (photoUrl) async {
        await _authService.updateDisplayName(
          displayName: state.authUser.userName!,
        );
        await _authService.updatePhotoURL(photoURL: photoUrl);

        await _firebaseFirestore.currentUserDocument().then(
              (value) => value.set(
                {
                  "photoUrl": photoUrl,
                  "displayName": state.authUser.userName,
                },
                SetOptions(merge: true),
              ),
            );

        emit(
          state.copyWith(
            authUser: AuthUserModel(
              id: state.authUser.id,
              phoneNumber: state.authUser.phoneNumber,
              userName: state.authUser.userName,
              photoUrl: photoUrl,
              userFileImg: state.authUser.userFileImg,
              isOnboardingCompleted: true,
            ),
            isInProgress: false,
          ),
        );
      },
    );
  }
}
