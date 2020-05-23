import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show IUserDataProvider, IUserRepository, User, UserFailure;

@Injectable(as: IUserRepository)
@singleton
@immutable
class UserRepository implements IUserRepository {
  final IUserDataProvider userDataProvider;

  const UserRepository({
    @required this.userDataProvider,
  });

  @override
  Future<Option<User>> getCurrentUser() => userDataProvider.getCurrentUser();

  @override
  Future<Either<UserFailure, Unit>> deleteUser() {
    return userDataProvider.deleteUser();
  }

  @override
  Future<Either<UserFailure, Unit>> updateProfile({
    String name,
    String photoUrl,
  }) {
    return userDataProvider.updateProfile(
      photoUrl: photoUrl,
      name: name,
    );
  }
}
