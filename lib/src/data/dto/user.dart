import 'package:firebase_auth/firebase_auth.dart';

import 'package:smarty_duelist/src/domain/user/user.dart';

extension FirebaseUserX on FirebaseUser {
  User toDomainUser() {
    return this != null
        ? User(
            id: uid,
            name: displayName ?? email.split('@').first,
            email: email,
            photoUrl: photoUrl,
            creationTimestamp: metadata.creationTime,
            lastSignInTimestamp: metadata.lastSignInTime,
          )
        : null;
  }
}
