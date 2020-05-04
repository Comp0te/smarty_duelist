// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'file_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FileStorageFailureTearOff {
  const _$FileStorageFailureTearOff();

  UploadError uploadError(PlatformException exp) {
    return UploadError(
      exp,
    );
  }

  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

  Canceled canceled() {
    return const Canceled();
  }
}

// ignore: unused_element
const $FileStorageFailure = _$FileStorageFailureTearOff();

mixin _$FileStorageFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uploadError(PlatformException exp),
    @required Result unauthenticated(),
    @required Result canceled(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadError(PlatformException exp),
    Result unauthenticated(),
    Result canceled(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadError(UploadError value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result canceled(Canceled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadError(UploadError value),
    Result unauthenticated(Unauthenticated value),
    Result canceled(Canceled value),
    @required Result orElse(),
  });
}

abstract class $FileStorageFailureCopyWith<$Res> {
  factory $FileStorageFailureCopyWith(
          FileStorageFailure value, $Res Function(FileStorageFailure) then) =
      _$FileStorageFailureCopyWithImpl<$Res>;
}

class _$FileStorageFailureCopyWithImpl<$Res>
    implements $FileStorageFailureCopyWith<$Res> {
  _$FileStorageFailureCopyWithImpl(this._value, this._then);

  final FileStorageFailure _value;
  // ignore: unused_field
  final $Res Function(FileStorageFailure) _then;
}

abstract class $UploadErrorCopyWith<$Res> {
  factory $UploadErrorCopyWith(
          UploadError value, $Res Function(UploadError) then) =
      _$UploadErrorCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$UploadErrorCopyWithImpl<$Res>
    extends _$FileStorageFailureCopyWithImpl<$Res>
    implements $UploadErrorCopyWith<$Res> {
  _$UploadErrorCopyWithImpl(
      UploadError _value, $Res Function(UploadError) _then)
      : super(_value, (v) => _then(v as UploadError));

  @override
  UploadError get _value => super._value as UploadError;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(UploadError(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$UploadError with DiagnosticableTreeMixin implements UploadError {
  const _$UploadError(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileStorageFailure.uploadError(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileStorageFailure.uploadError'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadError &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $UploadErrorCopyWith<UploadError> get copyWith =>
      _$UploadErrorCopyWithImpl<UploadError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uploadError(PlatformException exp),
    @required Result unauthenticated(),
    @required Result canceled(),
  }) {
    assert(uploadError != null);
    assert(unauthenticated != null);
    assert(canceled != null);
    return uploadError(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadError(PlatformException exp),
    Result unauthenticated(),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadError != null) {
      return uploadError(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadError(UploadError value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result canceled(Canceled value),
  }) {
    assert(uploadError != null);
    assert(unauthenticated != null);
    assert(canceled != null);
    return uploadError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadError(UploadError value),
    Result unauthenticated(Unauthenticated value),
    Result canceled(Canceled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (uploadError != null) {
      return uploadError(this);
    }
    return orElse();
  }
}

abstract class UploadError implements FileStorageFailure {
  const factory UploadError(PlatformException exp) = _$UploadError;

  PlatformException get exp;
  $UploadErrorCopyWith<UploadError> get copyWith;
}

abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$FileStorageFailureCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

class _$Unauthenticated
    with DiagnosticableTreeMixin
    implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileStorageFailure.unauthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileStorageFailure.unauthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uploadError(PlatformException exp),
    @required Result unauthenticated(),
    @required Result canceled(),
  }) {
    assert(uploadError != null);
    assert(unauthenticated != null);
    assert(canceled != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadError(PlatformException exp),
    Result unauthenticated(),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadError(UploadError value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result canceled(Canceled value),
  }) {
    assert(uploadError != null);
    assert(unauthenticated != null);
    assert(canceled != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadError(UploadError value),
    Result unauthenticated(Unauthenticated value),
    Result canceled(Canceled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements FileStorageFailure {
  const factory Unauthenticated() = _$Unauthenticated;
}

abstract class $CanceledCopyWith<$Res> {
  factory $CanceledCopyWith(Canceled value, $Res Function(Canceled) then) =
      _$CanceledCopyWithImpl<$Res>;
}

class _$CanceledCopyWithImpl<$Res>
    extends _$FileStorageFailureCopyWithImpl<$Res>
    implements $CanceledCopyWith<$Res> {
  _$CanceledCopyWithImpl(Canceled _value, $Res Function(Canceled) _then)
      : super(_value, (v) => _then(v as Canceled));

  @override
  Canceled get _value => super._value as Canceled;
}

class _$Canceled with DiagnosticableTreeMixin implements Canceled {
  const _$Canceled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileStorageFailure.canceled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FileStorageFailure.canceled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result uploadError(PlatformException exp),
    @required Result unauthenticated(),
    @required Result canceled(),
  }) {
    assert(uploadError != null);
    assert(unauthenticated != null);
    assert(canceled != null);
    return canceled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result uploadError(PlatformException exp),
    Result unauthenticated(),
    Result canceled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result uploadError(UploadError value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result canceled(Canceled value),
  }) {
    assert(uploadError != null);
    assert(unauthenticated != null);
    assert(canceled != null);
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result uploadError(UploadError value),
    Result unauthenticated(Unauthenticated value),
    Result canceled(Canceled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class Canceled implements FileStorageFailure {
  const factory Canceled() = _$Canceled;
}
