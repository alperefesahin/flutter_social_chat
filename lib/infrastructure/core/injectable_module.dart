// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_social_chat/presentation/routes/router.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

@module
abstract class InjectableModule {
  @singleton
  Connectivity get connectivity => Connectivity();

  @singleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  //getstream api key: 3r6a7g8d4v8e
  @singleton
  StreamChatClient get streamChatClient => StreamChatClient('3r6a7g8d4v8e', logLevel: Level.INFO);
}
