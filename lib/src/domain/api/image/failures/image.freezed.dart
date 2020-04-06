// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImageFailureTearOff {
  const _$ImageFailureTearOff();

  ImagePickerFailure picker(PlatformException exp) {
    return ImagePickerFailure(
      exp,
    );
  }

  ImageCropperFailure cropper(PlatformException exp) {
    return ImageCropperFailure(
      exp,
    );
  }
}

// ignore: unused_element
const $ImageFailure = _$ImageFailureTearOff();

mixin _$ImageFailure {
  PlatformException get exp;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result picker(PlatformException exp),
    @required Result cropper(PlatformException exp),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result cropper(PlatformException exp),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result cropper(ImageCropperFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result cropper(ImageCropperFailure value),
    @required Result orElse(),
  });

  $ImageFailureCopyWith<ImageFailure> get copyWith;
}

abstract class $ImageFailureCopyWith<$Res> {
  factory $ImageFailureCopyWith(
          ImageFailure value, $Res Function(ImageFailure) then) =
      _$ImageFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$ImageFailureCopyWithImpl<$Res> implements $ImageFailureCopyWith<$Res> {
  _$ImageFailureCopyWithImpl(this._value, this._then);

  final ImageFailure _value;
  // ignore: unused_field
  final $Res Function(ImageFailure) _then;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(_value.copyWith(
      exp: exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

abstract class $ImagePickerFailureCopyWith<$Res>
    implements $ImageFailureCopyWith<$Res> {
  factory $ImagePickerFailureCopyWith(
          ImagePickerFailure value, $Res Function(ImagePickerFailure) then) =
      _$ImagePickerFailureCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException exp});
}

class _$ImagePickerFailureCopyWithImpl<$Res>
    extends _$ImageFailureCopyWithImpl<$Res>
    implements $ImagePickerFailureCopyWith<$Res> {
  _$ImagePickerFailureCopyWithImpl(
      ImagePickerFailure _value, $Res Function(ImagePickerFailure) _then)
      : super(_value, (v) => _then(v as ImagePickerFailure));

  @override
  ImagePickerFailure get _value => super._value as ImagePickerFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(ImagePickerFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$ImagePickerFailure
    with DiagnosticableTreeMixin
    implements ImagePickerFailure {
  const _$ImagePickerFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageFailure.picker(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageFailure.picker'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImagePickerFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $ImagePickerFailureCopyWith<ImagePickerFailure> get copyWith =>
      _$ImagePickerFailureCopyWithImpl<ImagePickerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result picker(PlatformException exp),
    @required Result cropper(PlatformException exp),
  }) {
    assert(picker != null);
    assert(cropper != null);
    return picker(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result cropper(PlatformException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (picker != null) {
      return picker(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result cropper(ImageCropperFailure value),
  }) {
    assert(picker != null);
    assert(cropper != null);
    return picker(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result cropper(ImageCropperFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (picker != null) {
      return picker(this);
    }
    return orElse();
  }
}

abstract class ImagePickerFailure implements ImageFailure {
  const factory ImagePickerFailure(PlatformException exp) =
      _$ImagePickerFailure;

  @override
  PlatformException get exp;
  @override
  $ImagePickerFailureCopyWith<ImagePickerFailure> get copyWith;
}

abstract class $ImageCropperFailureCopyWith<$Res>
    implements $ImageFailureCopyWith<$Res> {
  factory $ImageCropperFailureCopyWith(
          ImageCropperFailure value, $Res Function(ImageCropperFailure) then) =
      _$ImageCropperFailureCopyWithImpl<$Res>;
  @override
  $Res call({PlatformException exp});
}

class _$ImageCropperFailureCopyWithImpl<$Res>
    extends _$ImageFailureCopyWithImpl<$Res>
    implements $ImageCropperFailureCopyWith<$Res> {
  _$ImageCropperFailureCopyWithImpl(
      ImageCropperFailure _value, $Res Function(ImageCropperFailure) _then)
      : super(_value, (v) => _then(v as ImageCropperFailure));

  @override
  ImageCropperFailure get _value => super._value as ImageCropperFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(ImageCropperFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$ImageCropperFailure
    with DiagnosticableTreeMixin
    implements ImageCropperFailure {
  const _$ImageCropperFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageFailure.cropper(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageFailure.cropper'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageCropperFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $ImageCropperFailureCopyWith<ImageCropperFailure> get copyWith =>
      _$ImageCropperFailureCopyWithImpl<ImageCropperFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result picker(PlatformException exp),
    @required Result cropper(PlatformException exp),
  }) {
    assert(picker != null);
    assert(cropper != null);
    return cropper(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result cropper(PlatformException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cropper != null) {
      return cropper(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result cropper(ImageCropperFailure value),
  }) {
    assert(picker != null);
    assert(cropper != null);
    return cropper(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result cropper(ImageCropperFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cropper != null) {
      return cropper(this);
    }
    return orElse();
  }
}

abstract class ImageCropperFailure implements ImageFailure {
  const factory ImageCropperFailure(PlatformException exp) =
      _$ImageCropperFailure;

  @override
  PlatformException get exp;
  @override
  $ImageCropperFailureCopyWith<ImageCropperFailure> get copyWith;
}
