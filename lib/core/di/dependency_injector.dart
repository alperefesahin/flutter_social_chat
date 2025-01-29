import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_social_chat/application/auth/auth_management/auth_management_cubit.dart';
import 'package:flutter_social_chat/application/auth/auth_setup/auth_cubit.dart';
import 'package:flutter_social_chat/application/auth/phone_number_sign_in/phone_number_sign_in_cubit.dart';
import 'package:flutter_social_chat/application/camera/camera_cubit.dart';
import 'package:flutter_social_chat/application/chat/chat_management/chat_management_cubit.dart';
import 'package:flutter_social_chat/application/chat/chat_setup/chat_setup_cubit.dart';
import 'package:flutter_social_chat/application/connectivity/connectivity_cubit.dart';
import 'package:flutter_social_chat/application/microphone/microphone_cubit.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:flutter_social_chat/domain/camera/i_camera_service.dart';
import 'package:flutter_social_chat/domain/chat/i_chat_service.dart';
import 'package:flutter_social_chat/domain/connectivity/i_connectivity_service.dart';
import 'package:flutter_social_chat/infrastructure/auth/firebase_auth_service.dart';
import 'package:flutter_social_chat/infrastructure/camera/camera_service.dart';
import 'package:flutter_social_chat/infrastructure/chat/getstream_chat_service.dart';
import 'package:flutter_social_chat/infrastructure/connectivity/connectivity_service.dart';
import 'package:flutter_social_chat/presentation/routes/router.dart';
import 'package:get_it/get_it.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:flutter_social_chat/domain/microphone/i_microphone_service.dart';
import 'package:flutter_social_chat/infrastructure/microphone/microphone_service.dart';

final getIt = GetIt.instance;

void injectionSetup() {
  // Firebase Services
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
  getIt.registerLazySingleton<FirebaseStorage>(() => FirebaseStorage.instance);

  // Microphone
  getIt.registerLazySingleton<IMicrophoneService>(() => MicrophoneService());
  getIt.registerFactory<MicrophoneCubit>(() => MicrophoneCubit(getIt<IMicrophoneService>()));

  // Connectivity
  getIt.registerSingleton<Connectivity>(Connectivity());
  getIt.registerLazySingleton<IConnectivityService>(() => ConnectivityHandler(getIt<Connectivity>()));
  getIt.registerLazySingleton<ConnectivityCubit>(() => ConnectivityCubit(getIt<IConnectivityService>()));

  // Chat
  getIt.registerSingleton<StreamChatClient>(StreamChatClient('3r6a7g8d4v8e', logLevel: Level.INFO));
  getIt.registerLazySingleton<IChatService>(
    () => GetstreamChatService(getIt<IAuthService>(), getIt<StreamChatClient>()),
  );
  getIt.registerFactory<ChatManagementCubit>(
    () => ChatManagementCubit(
      getIt<IChatService>(),
      getIt<FirebaseFirestore>(),
      getIt<AuthCubit>(),
    ),
  );
  getIt.registerLazySingleton<ChatSetupCubit>(() => ChatSetupCubit());

  // Camera
  getIt.registerLazySingleton<ICameraService>(() => CameraService());
  getIt.registerFactory(() => CameraCubit(getIt<ICameraService>()));

  // Auth
  getIt.registerLazySingleton<IAuthService>(
    () => FirebaseAuthService(getIt<FirebaseAuth>(), getIt<FirebaseFirestore>()),
  );
  getIt.registerLazySingleton<AuthCubit>(
    () => AuthCubit(
      authService: getIt<IAuthService>(),
      chatService: getIt<IChatService>(),
    ),
  );
  getIt.registerLazySingleton<AuthManagementCubit>(
    () => AuthManagementCubit(
      authService: getIt<IAuthService>(),
      firebaseStorage: getIt<FirebaseStorage>(),
      firebaseFirestore: getIt<FirebaseFirestore>(),
      authCubit: getIt<AuthCubit>(),
    ),
  );

  getIt.registerFactory(() => PhoneNumberSignInCubit(getIt<IAuthService>()));

  // App Services (Router, StreamChatClient, etc.)
  getIt.registerSingleton<AppRouter>(AppRouter());
}
