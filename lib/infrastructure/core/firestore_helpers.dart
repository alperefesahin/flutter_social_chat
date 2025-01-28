import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_social_chat/core/di/dependency_injector.dart';
import 'package:flutter_social_chat/domain/auth/i_auth_service.dart';
import 'package:fpdart/fpdart.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> currentUserDocument() async {
    final userOption = await getIt<IAuthService>().getSignedInUser();
    final user = userOption.getOrElse(() => throw Exception('Not authanticated'));

    return FirebaseFirestore.instance.collection('users').doc(user.id);
  }

  Future<DocumentReference> userDocument({required String userId}) async {
    return FirebaseFirestore.instance.collection('users').doc(userId);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userCollection => collection('users');
}
