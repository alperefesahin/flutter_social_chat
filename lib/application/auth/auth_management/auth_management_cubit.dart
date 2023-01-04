// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:flutter_social_chat/infrastructure/core/firestore_helpers.dart';
import 'package:flutter_social_chat/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'auth_management_state.dart';
part 'auth_management_cubit.freezed.dart';

@lazySingleton
class AuthManagementCubit extends Cubit<AuthManagementState> {
  late final IAuthService _authService;
  late final FirebaseStorage _firebaseStorage;
  late final FirebaseFirestore _firebaseFirestore;
  late final AuthCubit _authCubit;

  AuthManagementCubit() : super(AuthManagementState.empty()) {
    _authService = getIt<IAuthService>();
    _firebaseStorage = getIt<FirebaseStorage>();
    _firebaseFirestore = getIt<FirebaseFirestore>();
    _authCubit = getIt<AuthCubit>();
  }

  void validateUserName({required bool isUserNameValid}) {
    emit(state.copyWith(isUserNameValid: isUserNameValid));
  }

  Future<void> selectProfileImage({
    required Future<XFile?> userFileImg,
  }) async {
    final fileImg = await userFileImg;

    if (fileImg == null) {
      return;
    }

    final selectedImagePath = File(fileImg.path).path;
    emit(state.copyWith(selectedImagePath: selectedImagePath));
  }

  Future<String> createProfile() async {
    if (state.isInProgress) {
      return "";
    }

    emit(state.copyWith(isInProgress: true));

    final uid = _authCubit.state.authUser.id;

    if (state.selectedImagePath != "" && state.isUserNameValid) {
      await _firebaseStorage.ref(uid).putFile(File(state.selectedImagePath)).then(
        (taskState) async {
          if (taskState.state == TaskState.success) {
            await downloadUrl();
          }
        },
      );

      return state.userProfilePhotoUrl;
    } else {
      emit(state.copyWith(isInProgress: false, userProfilePhotoUrl: ""));

      return "";
    }
  }

  Future<void> downloadUrl() async {
    final uid = _authCubit.state.authUser.id;

    final photoUrl = await _firebaseStorage.ref(uid).getDownloadURL();

    await _authService.updateDisplayName(
      displayName: _authCubit.state.authUser.userName!,
    );

    await _authService.updatePhotoURL(photoURL: photoUrl);

    await _firebaseFirestore.currentUserDocument().then(
          (value) => value.set(
            {
              "photoUrl": photoUrl,
              "displayName": _authCubit.state.authUser.userName,
            },
            SetOptions(merge: true),
          ),
        );

    emit(state.copyWith(isInProgress: false, userProfilePhotoUrl: photoUrl));
  }
}
