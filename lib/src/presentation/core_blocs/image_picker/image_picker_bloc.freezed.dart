// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImagePickerStateTearOff {
  const _$ImagePickerStateTearOff();

  Init init() {
    return const Init();
  }

  Loading loading() {
    return const Loading();
  }

  ImageSelected imageSelected(Uint8List imageData) {
    return ImageSelected(
      imageData,
    );
  }

  Error error(ImageFailure failure) {
    return Error(
      failure,
    );
  }
}

// ignore: unused_element
const $ImagePickerState = _$ImagePickerStateTearOff();

mixin _$ImagePickerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result error(ImageFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $ImagePickerStateCopyWith<$Res> {
  factory $ImagePickerStateCopyWith(
          ImagePickerState value, $Res Function(ImagePickerState) then) =
      _$ImagePickerStateCopyWithImpl<$Res>;
}

class _$ImagePickerStateCopyWithImpl<$Res>
    implements $ImagePickerStateCopyWith<$Res> {
  _$ImagePickerStateCopyWithImpl(this._value, this._then);

  final ImagePickerState _value;
  // ignore: unused_field
  final $Res Function(ImagePickerState) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$ImagePickerStateCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

class _$Init with DiagnosticableTreeMixin implements Init {
  const _$Init();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagePickerState.init'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ImagePickerState {
  const factory Init() = _$Init;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$ImagePickerStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImagePickerState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ImagePickerState {
  const factory Loading() = _$Loading;
}

abstract class $ImageSelectedCopyWith<$Res> {
  factory $ImageSelectedCopyWith(
          ImageSelected value, $Res Function(ImageSelected) then) =
      _$ImageSelectedCopyWithImpl<$Res>;
  $Res call({Uint8List imageData});
}

class _$ImageSelectedCopyWithImpl<$Res>
    extends _$ImagePickerStateCopyWithImpl<$Res>
    implements $ImageSelectedCopyWith<$Res> {
  _$ImageSelectedCopyWithImpl(
      ImageSelected _value, $Res Function(ImageSelected) _then)
      : super(_value, (v) => _then(v as ImageSelected));

  @override
  ImageSelected get _value => super._value as ImageSelected;

  @override
  $Res call({
    Object imageData = freezed,
  }) {
    return _then(ImageSelected(
      imageData == freezed ? _value.imageData : imageData as Uint8List,
    ));
  }
}

class _$ImageSelected with DiagnosticableTreeMixin implements ImageSelected {
  const _$ImageSelected(this.imageData) : assert(imageData != null);

  @override
  final Uint8List imageData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerState.imageSelected(imageData: $imageData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagePickerState.imageSelected'))
      ..add(DiagnosticsProperty('imageData', imageData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageSelected &&
            (identical(other.imageData, imageData) ||
                const DeepCollectionEquality()
                    .equals(other.imageData, imageData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageData);

  @override
  $ImageSelectedCopyWith<ImageSelected> get copyWith =>
      _$ImageSelectedCopyWithImpl<ImageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return imageSelected(imageData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageSelected != null) {
      return imageSelected(imageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class ImageSelected implements ImagePickerState {
  const factory ImageSelected(Uint8List imageData) = _$ImageSelected;

  Uint8List get imageData;
  $ImageSelectedCopyWith<ImageSelected> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({ImageFailure failure});

  $ImageFailureCopyWith<$Res> get failure;
}

class _$ErrorCopyWithImpl<$Res> extends _$ImagePickerStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(Error(
      failure == freezed ? _value.failure : failure as ImageFailure,
    ));
  }

  @override
  $ImageFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ImageFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error(this.failure) : assert(failure != null);

  @override
  final ImageFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImagePickerState.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImagePickerState.error'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ImagePickerState {
  const factory Error(ImageFailure failure) = _$Error;

  ImageFailure get failure;
  $ErrorCopyWith<Error> get copyWith;
}

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
