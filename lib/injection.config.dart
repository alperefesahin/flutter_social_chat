// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:flutter_social_chat/application/auth/auth_management/auth_management_cubit.dart'
    as _i799;
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart'
    as _i974;
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i617;
import 'package:flutter_social_chat/application/camera/camera_cubit.dart'
    as _i215;
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart'
    as _i666;
import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_cubit.dart'
    as _i652;
import 'package:flutter_social_chat/application/microphone/microphone_cubit.dart'
    as _i439;
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart' as _i395;
import 'package:flutter_social_chat/domain/camera/i_camera_service.dart'
    as _i199;
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart' as _i280;
import 'package:flutter_social_chat/domain/connectivity/i_connectivity_service.dart'
    as _i469;
import 'package:flutter_social_chat/domain/microphone/i_microphone_service.dart'
    as _i782;
import 'package:flutter_social_chat/infrastructure/auth/firebase_auth_service.dart'
    as _i1070;
import 'package:flutter_social_chat/infrastructure/camera/camera_service.dart'
    as _i559;
import 'package:flutter_social_chat/infrastructure/chat/getstream_chat_service.dart'
    as _i495;
import 'package:flutter_social_chat/infrastructure/connectivity/connectivity_service.dart'
    as _i415;
import 'package:flutter_social_chat/infrastructure/core/injectable_module.dart'
    as _i3;
import 'package:flutter_social_chat/infrastructure/microphone/microphone_service.dart'
    as _i983;
import 'package:flutter_social_chat/presentation/routes/router.dart' as _i78;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i981;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart'
    as _i829;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i439.MicrophoneCubit>(() => _i439.MicrophoneCubit());
    gh.factory<_i666.ChatManagementCubit>(() => _i666.ChatManagementCubit());
    gh.factory<_i617.PhoneNumberSignInCubit>(
        () => _i617.PhoneNumberSignInCubit());
    gh.factory<_i215.CameraCubit>(() => _i215.CameraCubit());
    gh.singleton<_i829.Connectivity>(() => injectableModule.connectivity);
    gh.singleton<_i78.AppRouter>(() => injectableModule.appRouter);
    gh.singleton<_i829.StreamChatClient>(
        () => injectableModule.streamChatClient);
    gh.lazySingleton<_i652.ChatSetupCubit>(() => _i652.ChatSetupCubit());
    gh.lazySingleton<_i974.AuthCubit>(() => _i974.AuthCubit());
    gh.lazySingleton<_i799.AuthManagementCubit>(
        () => _i799.AuthManagementCubit());
    gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => injectableModule.firestore);
    gh.lazySingleton<_i457.FirebaseStorage>(
        () => injectableModule.firebaseStorage);
    gh.lazySingleton<_i199.ICameraService>(() => _i559.CameraService());
    gh.lazySingleton<_i782.IMicrophoneService>(() => _i983.MicrophoneService());
    gh.lazySingleton<_i469.IConnectivityService>(
        () => _i415.ConnectivityHandler());
    gh.lazySingleton<_i395.IAuthService>(() => _i1070.FirebaseAuthService(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i280.IChatService>(() => _i495.GetstreamChatService(
          gh<_i395.IAuthService>(),
          gh<_i981.StreamChatClient>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i3.InjectableModule {}
