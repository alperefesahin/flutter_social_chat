// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:flutter_production_app/application/auth/auth_cubit.dart' as _i3;
import 'package:flutter_production_app/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i12;
import 'package:flutter_production_app/application/camera/camera_cubit.dart'
    as _i4;
import 'package:flutter_production_app/application/chat/chat_management/chat_management_cubit.dart'
    as _i5;
import 'package:flutter_production_app/application/chat/chat_setup/chat_setup_cubit.dart'
    as _i6;
import 'package:flutter_production_app/domain/auth/i_auth_service.dart' as _i10;
import 'package:flutter_production_app/domain/chat/i_chat_service.dart' as _i14;
import 'package:flutter_production_app/infrastructure/auth/firebase_auth_service.dart'
    as _i11;
import 'package:flutter_production_app/infrastructure/chat/getstream_chat_service.dart'
    as _i15;
import 'package:flutter_production_app/infrastructure/core/injectable_module.dart'
    as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart' as _i13;

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
    gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.CameraCubit>(() => _i4.CameraCubit());
    gh.factory<_i5.ChatManagementCubit>(() => _i5.ChatManagementCubit());
    gh.lazySingleton<_i6.ChatSetupCubit>(() => _i6.ChatSetupCubit());
    gh.lazySingleton<_i7.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i8.FirebaseFirestore>(() => injectableModule.firestore);
    gh.lazySingleton<_i9.FirebaseStorage>(
        () => injectableModule.firebaseStorage);
    gh.lazySingleton<_i10.IAuthService>(() => _i11.FirebaseAuthService(
          gh<_i7.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.factory<_i12.PhoneNumberSignInCubit>(
        () => _i12.PhoneNumberSignInCubit());
    gh.singleton<_i13.StreamChatClient>(injectableModule.streamChatClient);
    gh.lazySingleton<_i14.IChatService>(() => _i15.GetstreamChatService(
          gh<_i10.IAuthService>(),
          gh<_i13.StreamChatClient>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i16.InjectableModule {}
