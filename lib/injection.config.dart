// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart' as _i14;

import 'application/auth/auth_cubit.dart' as _i4;
import 'application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i13;
import 'application/camera/camera_cubit.dart' as _i5;
import 'application/chat/chat_management/chat_management_cubit.dart' as _i6;
import 'application/chat/chat_setup/chat_setup_cubit.dart' as _i7;
import 'domain/auth/i_auth_service.dart' as _i11;
import 'domain/chat/i_chat_service.dart' as _i15;
import 'infrastructure/auth/firebase_auth_service.dart' as _i12;
import 'infrastructure/chat/getstream_chat_service.dart' as _i16;
import 'infrastructure/core/injectable_module.dart' as _i17;
import 'presentation/routes/router.gr.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.AppRouter>(injectableModule.appRouter);
  gh.lazySingleton<_i4.AuthCubit>(() => _i4.AuthCubit());
  gh.lazySingleton<_i5.CameraCubit>(() => _i5.CameraCubit());
  gh.factory<_i6.ChatManagementCubit>(() => _i6.ChatManagementCubit());
  gh.lazySingleton<_i7.ChatSetupCubit>(() => _i7.ChatSetupCubit());
  gh.lazySingleton<_i8.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseFirestore>(() => injectableModule.firestore);
  gh.lazySingleton<_i10.FirebaseStorage>(
      () => injectableModule.firebaseStorage);
  gh.lazySingleton<_i11.IAuthService>(() => _i12.FirebaseAuthService(
        get<_i8.FirebaseAuth>(),
        get<_i9.FirebaseFirestore>(),
      ));
  gh.factory<_i13.PhoneNumberSignInCubit>(() => _i13.PhoneNumberSignInCubit());
  gh.singleton<_i14.StreamChatClient>(injectableModule.streamChatClient);
  gh.lazySingleton<_i15.IChatService>(() => _i16.GetstreamChatService(
        get<_i11.IAuthService>(),
        get<_i14.StreamChatClient>(),
      ));
  return get;
}

class _$InjectableModule extends _i17.InjectableModule {}
