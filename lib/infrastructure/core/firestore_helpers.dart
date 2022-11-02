import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_production_app/domain/auth/i_auth_service.dart';
import 'package:flutter_production_app/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthService>().getSignedInUser();
    final user = userOption.getOrElse(
      () => throw Exception("Not authanticated"),
    );

    return FirebaseFirestore.instance.collection('users').doc(user.id);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userCollection => collection('users');
}
