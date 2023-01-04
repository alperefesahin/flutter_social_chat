// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_storage/firebase_storage.dart' as _i13;
import 'package:flutter_social_chat/application/auth/auth_management/auth_management_cubit.dart'
    as _i5;
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart'
    as _i4;
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i23;
import 'package:flutter_social_chat/application/camera/camera_cubit.dart'
    as _i6;
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart'
    as _i7;
import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_cubit.dart'
    as _i8;
import 'package:flutter_social_chat/application/connectivity/connectivity_cubit.dart'
    as _i10;
import 'package:flutter_social_chat/application/microphone/microphone_cubit.dart'
    as _i22;
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart' as _i14;
import 'package:flutter_social_chat/domain/camera/i_camera_service.dart'
    as _i16;
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart' as _i24;
import 'package:flutter_social_chat/domain/connectivity/i_connectivity_service.dart'
    as _i18;
import 'package:flutter_social_chat/domain/microphone/i_microphone_service.dart'
    as _i20;
import 'package:flutter_social_chat/infrastructure/auth/firebase_auth_service.dart'
    as _i15;
import 'package:flutter_social_chat/infrastructure/camera/camera_service.dart'
    as _i17;
import 'package:flutter_social_chat/infrastructure/chat/getstream_chat_service.dart'
    as _i25;
import 'package:flutter_social_chat/infrastructure/connectivity/connectivity_service.dart'
    as _i19;
import 'package:flutter_social_chat/infrastructure/core/injectable_module.dart'
    as _i27;
import 'package:flutter_social_chat/infrastructure/microphone/microphone_service.dart'
    as _i21;
import 'package:flutter_social_chat/presentation/routes/router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i26;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart' as _i9;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.singleton<_i3.AppRouter>(injectableModule.appRouter);
    gh.lazySingleton<_i4.AuthCubit>(() => _i4.AuthCubit());
    gh.lazySingleton<_i5.AuthManagementCubit>(() => _i5.AuthManagementCubit());
    gh.factory<_i6.CameraCubit>(() => _i6.CameraCubit());
    gh.factory<_i7.ChatManagementCubit>(() => _i7.ChatManagementCubit());
    gh.lazySingleton<_i8.ChatSetupCubit>(() => _i8.ChatSetupCubit());
    gh.singleton<_i9.Connectivity>(injectableModule.connectivity);
    gh.lazySingleton<_i10.ConnectivityCubit>(() => _i10.ConnectivityCubit());
    gh.lazySingleton<_i11.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i12.FirebaseFirestore>(() => injectableModule.firestore);
    gh.lazySingleton<_i13.FirebaseStorage>(
        () => injectableModule.firebaseStorage);
    gh.lazySingleton<_i14.IAuthService>(() => _i15.FirebaseAuthService(
          gh<_i11.FirebaseAuth>(),
          gh<_i12.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i16.ICameraService>(() => _i17.CameraService());
    gh.lazySingleton<_i18.IConnectivityService>(
        () => _i19.ConnectivityHandler());
    gh.lazySingleton<_i20.IMicrophoneService>(() => _i21.MicrophoneService());
    gh.factory<_i22.MicrophoneCubit>(() => _i22.MicrophoneCubit());
    gh.factory<_i23.PhoneNumberSignInCubit>(
        () => _i23.PhoneNumberSignInCubit());
    gh.singleton<_i9.StreamChatClient>(injectableModule.streamChatClient);
    gh.lazySingleton<_i24.IChatService>(() => _i25.GetstreamChatService(
          gh<_i14.IAuthService>(),
          gh<_i26.StreamChatClient>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i27.InjectableModule {}
