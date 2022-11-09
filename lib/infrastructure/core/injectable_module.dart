import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_production_app/secrets.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_production_app/presentation/routes/router.gr.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  StreamChatClient get streamChatClient =>
      StreamChatClient(getstreamApiKey, logLevel: Level.INFO);
}
