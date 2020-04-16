import 'dart:typed_data';

import 'package:dartz/dartz.dart';

import 'package:smarty_duelist/src/core/core.dart';
import 'package:smarty_duelist/src/domain/domain.dart'
    show ImageFailure, MaxSizeExceeded;

Either<ImageFailure, Uint8List> validateImageData(Uint8List data) {
  if (data.lengthInBytes >= kMaxFileToUploadBytes) {
    return Left(MaxSizeExceeded(data.lengthInBytes.toMbFromBytes));
  }

  return Right(data);
}
