// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_picker_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImagePickerEventTearOff {
  const _$ImagePickerEventTearOff();

  SelectFromLibrary selectFromLibrary() {
    return const SelectFromLibrary();
  }

  SelectFromCamera selectFromCamera() {
    return const SelectFromCamera();
  }

  ClearSelected clear() {
    return const ClearSelected();
  }
}

// ignore: unused_element
const $ImagePickerEvent = _$ImagePickerEventTearOff();

mixin _$ImagePickerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result clear(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result clear(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result clear(ClearSelected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result clear(ClearSelected value),
    @required Result orElse(),
  });
}

abstract class $ImagePickerEventCopyWith<$Res> {
  factory $ImagePickerEventCopyWith(
          ImagePickerEvent value, $Res Function(ImagePickerEvent) then) =
      _$ImagePickerEventCopyWithImpl<$Res>;
}

class _$ImagePickerEventCopyWithImpl<$Res>
    implements $ImagePickerEventCopyWith<$Res> {
  _$ImagePickerEventCopyWithImpl(this._value, this._then);

  final ImagePickerEvent _value;
  // ignore: unused_field
  final $Res Function(ImagePickerEvent) _then;
}

abstract class $SelectFromLibraryCopyWith<$Res> {
  factory $SelectFromLibraryCopyWith(
          SelectFromLibrary value, $Res Function(SelectFromLibrary) then) =
      _$SelectFromLibraryCopyWithImpl<$Res>;
}

class _$SelectFromLibraryCopyWithImpl<$Res>
    extends _$ImagePickerEventCopyWithImpl<$Res>
    implements $SelectFromLibraryCopyWith<$Res> {
  _$SelectFromLibraryCopyWithImpl(
      SelectFromLibrary _value, $Res Function(SelectFromLibrary) _then)
      : super(_value, (v) => _then(v as SelectFromLibrary));

  @override
  SelectFromLibrary get _value => super._value as SelectFromLibrary;
}

class _$SelectFromLibrary
    with DiagnosticableTreeMixin
    implements SelectFromLibrary {
  const _$SelectFromLibrary();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerEvent.selectFromLibrary()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagePickerEvent.selectFromLibrary'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectFromLibrary);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result clear(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(clear != null);
    return selectFromLibrary();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectFromLibrary != null) {
      return selectFromLibrary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result clear(ClearSelected value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(clear != null);
    return selectFromLibrary(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result clear(ClearSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectFromLibrary != null) {
      return selectFromLibrary(this);
    }
    return orElse();
  }
}

abstract class SelectFromLibrary implements ImagePickerEvent {
  const factory SelectFromLibrary() = _$SelectFromLibrary;
}

abstract class $SelectFromCameraCopyWith<$Res> {
  factory $SelectFromCameraCopyWith(
          SelectFromCamera value, $Res Function(SelectFromCamera) then) =
      _$SelectFromCameraCopyWithImpl<$Res>;
}

class _$SelectFromCameraCopyWithImpl<$Res>
    extends _$ImagePickerEventCopyWithImpl<$Res>
    implements $SelectFromCameraCopyWith<$Res> {
  _$SelectFromCameraCopyWithImpl(
      SelectFromCamera _value, $Res Function(SelectFromCamera) _then)
      : super(_value, (v) => _then(v as SelectFromCamera));

  @override
  SelectFromCamera get _value => super._value as SelectFromCamera;
}

class _$SelectFromCamera
    with DiagnosticableTreeMixin
    implements SelectFromCamera {
  const _$SelectFromCamera();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerEvent.selectFromCamera()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagePickerEvent.selectFromCamera'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SelectFromCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result clear(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(clear != null);
    return selectFromCamera();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectFromCamera != null) {
      return selectFromCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result clear(ClearSelected value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(clear != null);
    return selectFromCamera(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result clear(ClearSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectFromCamera != null) {
      return selectFromCamera(this);
    }
    return orElse();
  }
}

abstract class SelectFromCamera implements ImagePickerEvent {
  const factory SelectFromCamera() = _$SelectFromCamera;
}

abstract class $ClearSelectedCopyWith<$Res> {
  factory $ClearSelectedCopyWith(
          ClearSelected value, $Res Function(ClearSelected) then) =
      _$ClearSelectedCopyWithImpl<$Res>;
}

class _$ClearSelectedCopyWithImpl<$Res>
    extends _$ImagePickerEventCopyWithImpl<$Res>
    implements $ClearSelectedCopyWith<$Res> {
  _$ClearSelectedCopyWithImpl(
      ClearSelected _value, $Res Function(ClearSelected) _then)
      : super(_value, (v) => _then(v as ClearSelected));

  @override
  ClearSelected get _value => super._value as ClearSelected;
}

class _$ClearSelected with DiagnosticableTreeMixin implements ClearSelected {
  const _$ClearSelected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerEvent.clear()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagePickerEvent.clear'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result clear(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(clear != null);
    return clear();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result clear(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result clear(ClearSelected value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(clear != null);
    return clear(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result clear(ClearSelected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class ClearSelected implements ImagePickerEvent {
  const factory ClearSelected() = _$ClearSelected;
}
