// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_editor_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImageEditorEventTearOff {
  const _$ImageEditorEventTearOff();

  SelectFromLibrary selectFromLibrary() {
    return const SelectFromLibrary();
  }

  SelectFromCamera selectFromCamera() {
    return const SelectFromCamera();
  }

  Edit edit() {
    return const Edit();
  }

  RotateLeft rotateLeft() {
    return const RotateLeft();
  }

  RotateRight rotateRight() {
    return const RotateRight();
  }

  Flip flip() {
    return const Flip();
  }

  Restore restore() {
    return const Restore();
  }
}

// ignore: unused_element
const $ImageEditorEvent = _$ImageEditorEventTearOff();

mixin _$ImageEditorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  });
}

abstract class $ImageEditorEventCopyWith<$Res> {
  factory $ImageEditorEventCopyWith(
          ImageEditorEvent value, $Res Function(ImageEditorEvent) then) =
      _$ImageEditorEventCopyWithImpl<$Res>;
}

class _$ImageEditorEventCopyWithImpl<$Res>
    implements $ImageEditorEventCopyWith<$Res> {
  _$ImageEditorEventCopyWithImpl(this._value, this._then);

  final ImageEditorEvent _value;
  // ignore: unused_field
  final $Res Function(ImageEditorEvent) _then;
}

abstract class $SelectFromLibraryCopyWith<$Res> {
  factory $SelectFromLibraryCopyWith(
          SelectFromLibrary value, $Res Function(SelectFromLibrary) then) =
      _$SelectFromLibraryCopyWithImpl<$Res>;
}

class _$SelectFromLibraryCopyWithImpl<$Res>
    extends _$ImageEditorEventCopyWithImpl<$Res>
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
    return 'ImageEditorEvent.selectFromLibrary()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorEvent.selectFromLibrary'));
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
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return selectFromLibrary();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
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
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return selectFromLibrary(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectFromLibrary != null) {
      return selectFromLibrary(this);
    }
    return orElse();
  }
}

abstract class SelectFromLibrary implements ImageEditorEvent {
  const factory SelectFromLibrary() = _$SelectFromLibrary;
}

abstract class $SelectFromCameraCopyWith<$Res> {
  factory $SelectFromCameraCopyWith(
          SelectFromCamera value, $Res Function(SelectFromCamera) then) =
      _$SelectFromCameraCopyWithImpl<$Res>;
}

class _$SelectFromCameraCopyWithImpl<$Res>
    extends _$ImageEditorEventCopyWithImpl<$Res>
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
    return 'ImageEditorEvent.selectFromCamera()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorEvent.selectFromCamera'));
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
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return selectFromCamera();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
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
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return selectFromCamera(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectFromCamera != null) {
      return selectFromCamera(this);
    }
    return orElse();
  }
}

abstract class SelectFromCamera implements ImageEditorEvent {
  const factory SelectFromCamera() = _$SelectFromCamera;
}

abstract class $EditCopyWith<$Res> {
  factory $EditCopyWith(Edit value, $Res Function(Edit) then) =
      _$EditCopyWithImpl<$Res>;
}

class _$EditCopyWithImpl<$Res> extends _$ImageEditorEventCopyWithImpl<$Res>
    implements $EditCopyWith<$Res> {
  _$EditCopyWithImpl(Edit _value, $Res Function(Edit) _then)
      : super(_value, (v) => _then(v as Edit));

  @override
  Edit get _value => super._value as Edit;
}

class _$Edit with DiagnosticableTreeMixin implements Edit {
  const _$Edit();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorEvent.edit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImageEditorEvent.edit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Edit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return edit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return edit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class Edit implements ImageEditorEvent {
  const factory Edit() = _$Edit;
}

abstract class $RotateLeftCopyWith<$Res> {
  factory $RotateLeftCopyWith(
          RotateLeft value, $Res Function(RotateLeft) then) =
      _$RotateLeftCopyWithImpl<$Res>;
}

class _$RotateLeftCopyWithImpl<$Res>
    extends _$ImageEditorEventCopyWithImpl<$Res>
    implements $RotateLeftCopyWith<$Res> {
  _$RotateLeftCopyWithImpl(RotateLeft _value, $Res Function(RotateLeft) _then)
      : super(_value, (v) => _then(v as RotateLeft));

  @override
  RotateLeft get _value => super._value as RotateLeft;
}

class _$RotateLeft with DiagnosticableTreeMixin implements RotateLeft {
  const _$RotateLeft();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorEvent.rotateLeft()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImageEditorEvent.rotateLeft'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RotateLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return rotateLeft();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rotateLeft != null) {
      return rotateLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return rotateLeft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rotateLeft != null) {
      return rotateLeft(this);
    }
    return orElse();
  }
}

abstract class RotateLeft implements ImageEditorEvent {
  const factory RotateLeft() = _$RotateLeft;
}

abstract class $RotateRightCopyWith<$Res> {
  factory $RotateRightCopyWith(
          RotateRight value, $Res Function(RotateRight) then) =
      _$RotateRightCopyWithImpl<$Res>;
}

class _$RotateRightCopyWithImpl<$Res>
    extends _$ImageEditorEventCopyWithImpl<$Res>
    implements $RotateRightCopyWith<$Res> {
  _$RotateRightCopyWithImpl(
      RotateRight _value, $Res Function(RotateRight) _then)
      : super(_value, (v) => _then(v as RotateRight));

  @override
  RotateRight get _value => super._value as RotateRight;
}

class _$RotateRight with DiagnosticableTreeMixin implements RotateRight {
  const _$RotateRight();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorEvent.rotateRight()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorEvent.rotateRight'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RotateRight);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return rotateRight();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rotateRight != null) {
      return rotateRight();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return rotateRight(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rotateRight != null) {
      return rotateRight(this);
    }
    return orElse();
  }
}

abstract class RotateRight implements ImageEditorEvent {
  const factory RotateRight() = _$RotateRight;
}

abstract class $FlipCopyWith<$Res> {
  factory $FlipCopyWith(Flip value, $Res Function(Flip) then) =
      _$FlipCopyWithImpl<$Res>;
}

class _$FlipCopyWithImpl<$Res> extends _$ImageEditorEventCopyWithImpl<$Res>
    implements $FlipCopyWith<$Res> {
  _$FlipCopyWithImpl(Flip _value, $Res Function(Flip) _then)
      : super(_value, (v) => _then(v as Flip));

  @override
  Flip get _value => super._value as Flip;
}

class _$Flip with DiagnosticableTreeMixin implements Flip {
  const _$Flip();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorEvent.flip()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImageEditorEvent.flip'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Flip);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return flip();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flip != null) {
      return flip();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return flip(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flip != null) {
      return flip(this);
    }
    return orElse();
  }
}

abstract class Flip implements ImageEditorEvent {
  const factory Flip() = _$Flip;
}

abstract class $RestoreCopyWith<$Res> {
  factory $RestoreCopyWith(Restore value, $Res Function(Restore) then) =
      _$RestoreCopyWithImpl<$Res>;
}

class _$RestoreCopyWithImpl<$Res> extends _$ImageEditorEventCopyWithImpl<$Res>
    implements $RestoreCopyWith<$Res> {
  _$RestoreCopyWithImpl(Restore _value, $Res Function(Restore) _then)
      : super(_value, (v) => _then(v as Restore));

  @override
  Restore get _value => super._value as Restore;
}

class _$Restore with DiagnosticableTreeMixin implements Restore {
  const _$Restore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorEvent.restore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImageEditorEvent.restore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Restore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result selectFromLibrary(),
    @required Result selectFromCamera(),
    @required Result edit(),
    @required Result rotateLeft(),
    @required Result rotateRight(),
    @required Result flip(),
    @required Result restore(),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return restore();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result selectFromLibrary(),
    Result selectFromCamera(),
    Result edit(),
    Result rotateLeft(),
    Result rotateRight(),
    Result flip(),
    Result restore(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result selectFromLibrary(SelectFromLibrary value),
    @required Result selectFromCamera(SelectFromCamera value),
    @required Result edit(Edit value),
    @required Result rotateLeft(RotateLeft value),
    @required Result rotateRight(RotateRight value),
    @required Result flip(Flip value),
    @required Result restore(Restore value),
  }) {
    assert(selectFromLibrary != null);
    assert(selectFromCamera != null);
    assert(edit != null);
    assert(rotateLeft != null);
    assert(rotateRight != null);
    assert(flip != null);
    assert(restore != null);
    return restore(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result selectFromLibrary(SelectFromLibrary value),
    Result selectFromCamera(SelectFromCamera value),
    Result edit(Edit value),
    Result rotateLeft(RotateLeft value),
    Result rotateRight(RotateRight value),
    Result flip(Flip value),
    Result restore(Restore value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class Restore implements ImageEditorEvent {
  const factory Restore() = _$Restore;
}
