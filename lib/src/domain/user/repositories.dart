import 'package:dartz/dartz.dart';

import 'entities/entities.dart';
import 'failures/failures.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> updateProfile({
    String name,
    String photoUrl,
  });

  Future<Either<UserFailure, Unit>> deleteUser();

  Future<Option<User>> getCurrentUser();
}
