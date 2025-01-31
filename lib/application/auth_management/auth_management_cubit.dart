import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_social_chat/application/auth_management/auth_management_state.dart';
import 'package:flutter_social_chat/view/sms_verification/cubit/auth_cubit.dart';
import 'package:flutter_social_chat/infrastructure/core/firestore_helpers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';

class AuthManagementCubit extends Cubit<AuthManagementState> {
  AuthManagementCubit({
    required IAuthService authService,
    required FirebaseStorage firebaseStorage,
    required FirebaseFirestore firebaseFirestore,
    required AuthCubit authCubit,
  })  : _authService = authService,
        _firebaseStorage = firebaseStorage,
        _firebaseFirestore = firebaseFirestore,
        _authCubit = authCubit,
        super(AuthManagementState.empty());

  final IAuthService _authService;
  final FirebaseStorage _firebaseStorage;
  final FirebaseFirestore _firebaseFirestore;
  final AuthCubit _authCubit;

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
      return '';
    }

    emit(state.copyWith(isInProgress: true));

    final uid = _authCubit.state.authUser.id;

    if (state.selectedImagePath != '' && state.isUserNameValid) {
      await _firebaseStorage.ref(uid).putFile(File(state.selectedImagePath)).then(
        (taskState) async {
          if (taskState.state == TaskState.success) {
            await downloadUrl();
          }
        },
      );

      return state.userProfilePhotoUrl;
    } else {
      emit(state.copyWith(isInProgress: false, userProfilePhotoUrl: ''));

      return '';
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
              'photoUrl': photoUrl,
              'displayName': _authCubit.state.authUser.userName,
            },
            SetOptions(merge: true),
          ),
        );

    emit(state.copyWith(isInProgress: false, userProfilePhotoUrl: photoUrl));
  }
}
