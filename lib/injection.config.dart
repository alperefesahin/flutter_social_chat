// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i4;
import 'application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart'
    as _i12;
import 'application/chat/cubit/chat_cubit.dart' as _i5;
import 'domain/auth/i_auth_service.dart' as _i8;
import 'domain/chat/i_chat_service.dart' as _i10;
import 'infrastructure/auth/firebase_auth_service.dart' as _i9;
import 'infrastructure/chat/getstream_chat_service.dart' as _i11;
import 'infrastructure/core/injectable_module.dart' as _i13;
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
  gh.lazySingleton<_i5.ChatCubit>(() => _i5.ChatCubit());
  gh.lazySingleton<_i6.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(() => injectableModule.firestore);
  gh.lazySingleton<_i8.IAuthService>(() => _i9.FirebaseAuthService(
        get<_i6.FirebaseAuth>(),
        get<_i7.FirebaseFirestore>(),
      ));
  gh.lazySingleton<_i10.IChatService>(() => _i11.GetstreamChatService());
  gh.factory<_i12.PhoneNumberSignInCubit>(() => _i12.PhoneNumberSignInCubit());
  return get;
}

class _$InjectableModule extends _i13.InjectableModule {}
