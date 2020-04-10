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

  ImageEditorFailure editor(PlatformException exp) {
    return ImageEditorFailure(
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
    @required Result editor(PlatformException exp),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
    Result editor(PlatformException exp),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result picker(ImagePickerFailure value),
    @required Result editor(ImageEditorFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
    Result editor(ImageEditorFailure value),
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
    @required Result editor(PlatformException exp),
  }) {
    assert(picker != null);
    assert(editor != null);
    return picker(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
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
    @required Result editor(ImageEditorFailure value),
  }) {
    assert(picker != null);
    assert(editor != null);
    return picker(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
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

  @override
  PlatformException get exp;
  @override
  $ImagePickerFailureCopyWith<ImagePickerFailure> get copyWith;
}

abstract class $ImageEditorFailureCopyWith<$Res>
    implements $ImageFailureCopyWith<$Res> {
  factory $ImageEditorFailureCopyWith(
          ImageEditorFailure value, $Res Function(ImageEditorFailure) then) =
      _$ImageEditorFailureCopyWithImpl<$Res>;
  @override
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
    @required Result editor(PlatformException exp),
  }) {
    assert(picker != null);
    assert(editor != null);
    return editor(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result picker(PlatformException exp),
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
    @required Result editor(ImageEditorFailure value),
  }) {
    assert(picker != null);
    assert(editor != null);
    return editor(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result picker(ImagePickerFailure value),
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

  @override
  PlatformException get exp;
  @override
  $ImageEditorFailureCopyWith<ImageEditorFailure> get copyWith;
}
