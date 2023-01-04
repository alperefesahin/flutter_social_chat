// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_social_chat/presentation/routes/router.dart';
import 'package:flutter_social_chat/secrets.dart';
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

  @singleton
  StreamChatClient get streamChatClient => StreamChatClient(getstreamApiKey, logLevel: Level.INFO);
}
