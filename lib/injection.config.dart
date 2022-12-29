// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_storage/firebase_storage.dart' as _i12;
import 'package:flutter_production_app/application/auth/auth_cubit.dart' as _i4;
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i22;
import 'package:flutter_production_app/application/camera/camera_cubit.dart'
    as _i5;
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart'
    as _i6;
import 'package:flutter_production_app/application/chat/chat_setup/chat_setup_cubit.dart'
    as _i7;
import 'package:flutter_production_app/application/connectivity/connectivity_cubit.dart'
    as _i9;
import 'package:flutter_production_app/application/microphone/microphone_cubit.dart'
    as _i21;
import 'package:flutter_production_app/domain/auth/i_auth_service.dart' as _i13;
import 'package:flutter_production_app/domain/camera/i_camera_handler.dart'
    as _i15;
import 'package:flutter_production_app/domain/chat/i_chat_service.dart' as _i23;
import 'package:flutter_production_app/domain/connectivity/i_connectivity_service.dart'
    as _i17;
import 'package:flutter_production_app/domain/microphone/i_microphone_handler.dart'
    as _i19;
import 'package:flutter_production_app/infrastructure/auth/firebase_auth_service.dart'
    as _i14;
import 'package:flutter_production_app/infrastructure/camera/camera_handler.dart'
    as _i16;
import 'package:flutter_production_app/infrastructure/chat/getstream_chat_service.dart'
    as _i24;
import 'package:flutter_production_app/infrastructure/connectivity/connectivity_service.dart'
    as _i18;
import 'package:flutter_production_app/infrastructure/core/injectable_module.dart'
    as _i26;
import 'package:flutter_production_app/infrastructure/microphone/microphone_handler.dart'
    as _i20;
import 'package:flutter_production_app/presentation/routes/router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i25;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart' as _i8;

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
    gh.factory<_i5.CameraCubit>(() => _i5.CameraCubit());
    gh.factory<_i6.ChatManagementCubit>(() => _i6.ChatManagementCubit());
    gh.lazySingleton<_i7.ChatSetupCubit>(() => _i7.ChatSetupCubit());
    gh.singleton<_i8.Connectivity>(injectableModule.connectivity);
    gh.lazySingleton<_i9.ConnectivityCubit>(() => _i9.ConnectivityCubit());
    gh.lazySingleton<_i10.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i11.FirebaseFirestore>(() => injectableModule.firestore);
    gh.lazySingleton<_i12.FirebaseStorage>(
        () => injectableModule.firebaseStorage);
    gh.lazySingleton<_i13.IAuthService>(() => _i14.FirebaseAuthService(
          gh<_i10.FirebaseAuth>(),
          gh<_i11.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i15.ICameraHandler>(() => _i16.CameraHandler());
    gh.lazySingleton<_i17.IConnectivityService>(
        () => _i18.ConnectivityHandler());
    gh.lazySingleton<_i19.IMicrophoneHandler>(() => _i20.MicrophoneHandler());
    gh.factory<_i21.MicrophoneCubit>(() => _i21.MicrophoneCubit());
    gh.factory<_i22.PhoneNumberSignInCubit>(
        () => _i22.PhoneNumberSignInCubit());
    gh.singleton<_i8.StreamChatClient>(injectableModule.streamChatClient);
    gh.lazySingleton<_i23.IChatService>(() => _i24.GetstreamChatService(
          gh<_i13.IAuthService>(),
          gh<_i25.StreamChatClient>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i26.InjectableModule {}
