// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'image_editor_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImageEditorStateTearOff {
  const _$ImageEditorStateTearOff();

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

  ImageCropped imageCropped(Uint8List imageData) {
    return ImageCropped(
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
const $ImageEditorState = _$ImageEditorStateTearOff();

mixin _$ImageEditorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result imageCropped(Uint8List imageData),
    @required Result error(ImageFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result imageCropped(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result imageCropped(ImageCropped value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result imageCropped(ImageCropped value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $ImageEditorStateCopyWith<$Res> {
  factory $ImageEditorStateCopyWith(
          ImageEditorState value, $Res Function(ImageEditorState) then) =
      _$ImageEditorStateCopyWithImpl<$Res>;
}

class _$ImageEditorStateCopyWithImpl<$Res>
    implements $ImageEditorStateCopyWith<$Res> {
  _$ImageEditorStateCopyWithImpl(this._value, this._then);

  final ImageEditorState _value;
  // ignore: unused_field
  final $Res Function(ImageEditorState) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$ImageEditorStateCopyWithImpl<$Res>
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
    return 'ImageEditorState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImageEditorState.init'));
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
    @required Result imageCropped(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result imageCropped(Uint8List imageData),
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
    @required Result imageCropped(ImageCropped value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result imageCropped(ImageCropped value),
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

abstract class Init implements ImageEditorState {
  const factory Init() = _$Init;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$ImageEditorStateCopyWithImpl<$Res>
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
    return 'ImageEditorState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ImageEditorState.loading'));
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
    @required Result imageCropped(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result imageCropped(Uint8List imageData),
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
    @required Result imageCropped(ImageCropped value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result imageCropped(ImageCropped value),
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

abstract class Loading implements ImageEditorState {
  const factory Loading() = _$Loading;
}

abstract class $ImageSelectedCopyWith<$Res> {
  factory $ImageSelectedCopyWith(
          ImageSelected value, $Res Function(ImageSelected) then) =
      _$ImageSelectedCopyWithImpl<$Res>;
  $Res call({Uint8List imageData});
}

class _$ImageSelectedCopyWithImpl<$Res>
    extends _$ImageEditorStateCopyWithImpl<$Res>
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
    return 'ImageEditorState.imageSelected(imageData: $imageData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorState.imageSelected'))
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
    @required Result imageCropped(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return imageSelected(imageData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result imageCropped(Uint8List imageData),
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
    @required Result imageCropped(ImageCropped value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result imageCropped(ImageCropped value),
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

abstract class ImageSelected implements ImageEditorState {
  const factory ImageSelected(Uint8List imageData) = _$ImageSelected;

  Uint8List get imageData;
  $ImageSelectedCopyWith<ImageSelected> get copyWith;
}

abstract class $ImageCroppedCopyWith<$Res> {
  factory $ImageCroppedCopyWith(
          ImageCropped value, $Res Function(ImageCropped) then) =
      _$ImageCroppedCopyWithImpl<$Res>;
  $Res call({Uint8List imageData});
}

class _$ImageCroppedCopyWithImpl<$Res>
    extends _$ImageEditorStateCopyWithImpl<$Res>
    implements $ImageCroppedCopyWith<$Res> {
  _$ImageCroppedCopyWithImpl(
      ImageCropped _value, $Res Function(ImageCropped) _then)
      : super(_value, (v) => _then(v as ImageCropped));

  @override
  ImageCropped get _value => super._value as ImageCropped;

  @override
  $Res call({
    Object imageData = freezed,
  }) {
    return _then(ImageCropped(
      imageData == freezed ? _value.imageData : imageData as Uint8List,
    ));
  }
}

class _$ImageCropped with DiagnosticableTreeMixin implements ImageCropped {
  const _$ImageCropped(this.imageData) : assert(imageData != null);

  @override
  final Uint8List imageData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorState.imageCropped(imageData: $imageData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorState.imageCropped'))
      ..add(DiagnosticsProperty('imageData', imageData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageCropped &&
            (identical(other.imageData, imageData) ||
                const DeepCollectionEquality()
                    .equals(other.imageData, imageData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageData);

  @override
  $ImageCroppedCopyWith<ImageCropped> get copyWith =>
      _$ImageCroppedCopyWithImpl<ImageCropped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageSelected(Uint8List imageData),
    @required Result imageCropped(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return imageCropped(imageData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result imageCropped(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageCropped != null) {
      return imageCropped(imageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageSelected(ImageSelected value),
    @required Result imageCropped(ImageCropped value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return imageCropped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result imageCropped(ImageCropped value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageCropped != null) {
      return imageCropped(this);
    }
    return orElse();
  }
}

abstract class ImageCropped implements ImageEditorState {
  const factory ImageCropped(Uint8List imageData) = _$ImageCropped;

  Uint8List get imageData;
  $ImageCroppedCopyWith<ImageCropped> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({ImageFailure failure});

  $ImageFailureCopyWith<$Res> get failure;
}

class _$ErrorCopyWithImpl<$Res> extends _$ImageEditorStateCopyWithImpl<$Res>
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
    return 'ImageEditorState.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorState.error'))
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
    @required Result imageCropped(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageSelected(Uint8List imageData),
    Result imageCropped(Uint8List imageData),
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
    @required Result imageCropped(ImageCropped value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageSelected != null);
    assert(imageCropped != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageSelected(ImageSelected value),
    Result imageCropped(ImageCropped value),
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

abstract class Error implements ImageEditorState {
  const factory Error(ImageFailure failure) = _$Error;

  ImageFailure get failure;
  $ErrorCopyWith<Error> get copyWith;
}
