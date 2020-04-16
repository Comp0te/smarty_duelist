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

  MaxSizeExceeded maxSizeExceeded(double megabyte) {
    return MaxSizeExceeded(
      megabyte,
    );
  }

  ImageEditorFailure editor(PlatformException exp) {
    return ImageEditorFailure(
      exp,
    );
  }
}

// ignore: unused_element
const $ImageFailure = _$ImageFailureTearOff();

mixin _$ImageFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result picker(PlatformException exp),
    @required Result maxSizeExceeded(double megabyte),
    @required Result editor(PlatformException exp),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result maxSizeExceeded(double megabyte),
    Result editor(PlatformException exp),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result maxSizeExceeded(MaxSizeExceeded value),
    @required Result editor(ImageEditorFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result maxSizeExceeded(MaxSizeExceeded value),
    Result editor(ImageEditorFailure value),
    @required Result orElse(),
  });
}

abstract class $ImageFailureCopyWith<$Res> {
  factory $ImageFailureCopyWith(
          ImageFailure value, $Res Function(ImageFailure) then) =
      _$ImageFailureCopyWithImpl<$Res>;
}

class _$ImageFailureCopyWithImpl<$Res> implements $ImageFailureCopyWith<$Res> {
  _$ImageFailureCopyWithImpl(this._value, this._then);

  final ImageFailure _value;
  // ignore: unused_field
  final $Res Function(ImageFailure) _then;
}

abstract class $ImagePickerFailureCopyWith<$Res> {
  factory $ImagePickerFailureCopyWith(
          ImagePickerFailure value, $Res Function(ImagePickerFailure) then) =
      _$ImagePickerFailureCopyWithImpl<$Res>;
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
    @required Result maxSizeExceeded(double megabyte),
    @required Result editor(PlatformException exp),
  }) {
    assert(picker != null);
    assert(maxSizeExceeded != null);
    assert(editor != null);
    return picker(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result maxSizeExceeded(double megabyte),
    Result editor(PlatformException exp),
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
    @required Result maxSizeExceeded(MaxSizeExceeded value),
    @required Result editor(ImageEditorFailure value),
  }) {
    assert(picker != null);
    assert(maxSizeExceeded != null);
    assert(editor != null);
    return picker(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result maxSizeExceeded(MaxSizeExceeded value),
    Result editor(ImageEditorFailure value),
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

  PlatformException get exp;
  $ImagePickerFailureCopyWith<ImagePickerFailure> get copyWith;
}

abstract class $MaxSizeExceededCopyWith<$Res> {
  factory $MaxSizeExceededCopyWith(
          MaxSizeExceeded value, $Res Function(MaxSizeExceeded) then) =
      _$MaxSizeExceededCopyWithImpl<$Res>;
  $Res call({double megabyte});
}

class _$MaxSizeExceededCopyWithImpl<$Res>
    extends _$ImageFailureCopyWithImpl<$Res>
    implements $MaxSizeExceededCopyWith<$Res> {
  _$MaxSizeExceededCopyWithImpl(
      MaxSizeExceeded _value, $Res Function(MaxSizeExceeded) _then)
      : super(_value, (v) => _then(v as MaxSizeExceeded));

  @override
  MaxSizeExceeded get _value => super._value as MaxSizeExceeded;

  @override
  $Res call({
    Object megabyte = freezed,
  }) {
    return _then(MaxSizeExceeded(
      megabyte == freezed ? _value.megabyte : megabyte as double,
    ));
  }
}

class _$MaxSizeExceeded
    with DiagnosticableTreeMixin
    implements MaxSizeExceeded {
  const _$MaxSizeExceeded(this.megabyte) : assert(megabyte != null);

  @override
  final double megabyte;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageFailure.maxSizeExceeded(megabyte: $megabyte)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageFailure.maxSizeExceeded'))
      ..add(DiagnosticsProperty('megabyte', megabyte));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MaxSizeExceeded &&
            (identical(other.megabyte, megabyte) ||
                const DeepCollectionEquality()
                    .equals(other.megabyte, megabyte)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(megabyte);

  @override
  $MaxSizeExceededCopyWith<MaxSizeExceeded> get copyWith =>
      _$MaxSizeExceededCopyWithImpl<MaxSizeExceeded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result picker(PlatformException exp),
    @required Result maxSizeExceeded(double megabyte),
    @required Result editor(PlatformException exp),
  }) {
    assert(picker != null);
    assert(maxSizeExceeded != null);
    assert(editor != null);
    return maxSizeExceeded(megabyte);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result maxSizeExceeded(double megabyte),
    Result editor(PlatformException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (maxSizeExceeded != null) {
      return maxSizeExceeded(megabyte);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result maxSizeExceeded(MaxSizeExceeded value),
    @required Result editor(ImageEditorFailure value),
  }) {
    assert(picker != null);
    assert(maxSizeExceeded != null);
    assert(editor != null);
    return maxSizeExceeded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result maxSizeExceeded(MaxSizeExceeded value),
    Result editor(ImageEditorFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (maxSizeExceeded != null) {
      return maxSizeExceeded(this);
    }
    return orElse();
  }
}

abstract class MaxSizeExceeded implements ImageFailure {
  const factory MaxSizeExceeded(double megabyte) = _$MaxSizeExceeded;

  double get megabyte;
  $MaxSizeExceededCopyWith<MaxSizeExceeded> get copyWith;
}

abstract class $ImageEditorFailureCopyWith<$Res> {
  factory $ImageEditorFailureCopyWith(
          ImageEditorFailure value, $Res Function(ImageEditorFailure) then) =
      _$ImageEditorFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$ImageEditorFailureCopyWithImpl<$Res>
    extends _$ImageFailureCopyWithImpl<$Res>
    implements $ImageEditorFailureCopyWith<$Res> {
  _$ImageEditorFailureCopyWithImpl(
      ImageEditorFailure _value, $Res Function(ImageEditorFailure) _then)
      : super(_value, (v) => _then(v as ImageEditorFailure));

  @override
  ImageEditorFailure get _value => super._value as ImageEditorFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(ImageEditorFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$ImageEditorFailure
    with DiagnosticableTreeMixin
    implements ImageEditorFailure {
  const _$ImageEditorFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageFailure.editor(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageFailure.editor'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageEditorFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $ImageEditorFailureCopyWith<ImageEditorFailure> get copyWith =>
      _$ImageEditorFailureCopyWithImpl<ImageEditorFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result picker(PlatformException exp),
    @required Result maxSizeExceeded(double megabyte),
    @required Result editor(PlatformException exp),
  }) {
    assert(picker != null);
    assert(maxSizeExceeded != null);
    assert(editor != null);
    return editor(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result maxSizeExceeded(double megabyte),
    Result editor(PlatformException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editor != null) {
      return editor(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result maxSizeExceeded(MaxSizeExceeded value),
    @required Result editor(ImageEditorFailure value),
  }) {
    assert(picker != null);
    assert(maxSizeExceeded != null);
    assert(editor != null);
    return editor(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result maxSizeExceeded(MaxSizeExceeded value),
    Result editor(ImageEditorFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editor != null) {
      return editor(this);
    }
    return orElse();
  }
}

abstract class ImageEditorFailure implements ImageFailure {
  const factory ImageEditorFailure(PlatformException exp) =
      _$ImageEditorFailure;

  PlatformException get exp;
  $ImageEditorFailureCopyWith<ImageEditorFailure> get copyWith;
}
