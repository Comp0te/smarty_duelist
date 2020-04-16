import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smarty_duelist/src/core/constants/config.dart';

import 'package:smarty_duelist/src/domain/domain.dart'
    show
        FileStorageFailure,
        IFileStorageDataProvider,
        IFileStorageRepository,
        IUserDataProvider,
        Unauthenticated,
        UploadTaskEvent,
        User;

@RegisterAs(IFileStorageRepository)
@singleton
@immutable
class FileStorageRepository implements IFileStorageRepository {
  final IFileStorageDataProvider fileStorageDataProvider;
  final IUserDataProvider userDataProvider;

  const FileStorageRepository({
    @required this.fileStorageDataProvider,
    @required this.userDataProvider,
  });

  @override
  Future<Either<FileStorageFailure, Stream<UploadTaskEvent>>> uploadAvatar(
    Uint8List data,
  ) async {
    final user = await userDataProvider.getCurrentUser();

    return user.fold(
      () => left(const Unauthenticated()),
      (user) => fileStorageDataProvider.uploadData(
        data,
        getAvatarPath(user),
        cacheControl: kAvatarCacheControl,
      ),
    );
  }
}

extension FileStorageRepositoryX on FileStorageRepository {
  String getAvatarPath(User user) => 'avatar/${user.id}/avatar.jpeg';
}
