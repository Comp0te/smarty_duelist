import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show
        DeleteUserFailure,
        IUserDataProvider,
        UpdateUserFailure,
        User,
        UserFailure;

import '../dto/dto.dart';

@RegisterAs(IUserDataProvider)
@singleton
@immutable
class UserDataProvider implements IUserDataProvider {
  final FirebaseAuth auth;

  const UserDataProvider({
    @required this.auth,
  });

  @override
  Future<Option<User>> getCurrentUser() async {
    final user = await auth.currentUser();

    if (user == null) return None();

    return Some(user.toDomainUser());
  }

  @override
  Future<Either<UserFailure, Unit>> deleteUser() async {
    try {
      final user = await auth.currentUser();

      await user?.delete();

      return Right(unit);
    } on PlatformException catch (exp) {
      return Left(DeleteUserFailure(exp));
    }
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfile({
    @required String name,
    @required String photoUrl,
  }) async {
    try {
      final info = UserUpdateInfo()
        ..displayName = name
        ..photoUrl = photoUrl;

      final user = await auth.currentUser();

      await user?.updateProfile(info);

      return Right(unit);
    } on PlatformException catch (exp) {
      return Left(UpdateUserFailure(exp));
    }
  }
}
