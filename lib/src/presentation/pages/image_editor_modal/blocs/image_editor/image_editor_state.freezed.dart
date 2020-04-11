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

  ImageEdited imageEdited(Uint8List imageData) {
    return ImageEdited(
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
    @required Result imageEdited(Uint8List imageData),
    @required Result error(ImageFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageEdited(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageEdited(ImageEdited value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageEdited(ImageEdited value),
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
    @required Result imageEdited(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageEdited(Uint8List imageData),
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
    @required Result imageEdited(ImageEdited value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageEdited(ImageEdited value),
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
    @required Result imageEdited(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageEdited(Uint8List imageData),
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
    @required Result imageEdited(ImageEdited value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageEdited(ImageEdited value),
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

abstract class $ImageEditedCopyWith<$Res> {
  factory $ImageEditedCopyWith(
          ImageEdited value, $Res Function(ImageEdited) then) =
      _$ImageEditedCopyWithImpl<$Res>;
  $Res call({Uint8List imageData});
}

class _$ImageEditedCopyWithImpl<$Res>
    extends _$ImageEditorStateCopyWithImpl<$Res>
    implements $ImageEditedCopyWith<$Res> {
  _$ImageEditedCopyWithImpl(
      ImageEdited _value, $Res Function(ImageEdited) _then)
      : super(_value, (v) => _then(v as ImageEdited));

  @override
  ImageEdited get _value => super._value as ImageEdited;

  @override
  $Res call({
    Object imageData = freezed,
  }) {
    return _then(ImageEdited(
      imageData == freezed ? _value.imageData : imageData as Uint8List,
    ));
  }
}

class _$ImageEdited with DiagnosticableTreeMixin implements ImageEdited {
  const _$ImageEdited(this.imageData) : assert(imageData != null);

  @override
  final Uint8List imageData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageEditorState.imageEdited(imageData: $imageData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageEditorState.imageEdited'))
      ..add(DiagnosticsProperty('imageData', imageData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageEdited &&
            (identical(other.imageData, imageData) ||
                const DeepCollectionEquality()
                    .equals(other.imageData, imageData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(imageData);

  @override
  $ImageEditedCopyWith<ImageEdited> get copyWith =>
      _$ImageEditedCopyWithImpl<ImageEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result loading(),
    @required Result imageEdited(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return imageEdited(imageData);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageEdited(Uint8List imageData),
    Result error(ImageFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageEdited != null) {
      return imageEdited(imageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result loading(Loading value),
    @required Result imageEdited(ImageEdited value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return imageEdited(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageEdited(ImageEdited value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageEdited != null) {
      return imageEdited(this);
    }
    return orElse();
  }
}

abstract class ImageEdited implements ImageEditorState {
  const factory ImageEdited(Uint8List imageData) = _$ImageEdited;

  Uint8List get imageData;
  $ImageEditedCopyWith<ImageEdited> get copyWith;
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
    @required Result imageEdited(Uint8List imageData),
    @required Result error(ImageFailure failure),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result loading(),
    Result imageEdited(Uint8List imageData),
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
    @required Result imageEdited(ImageEdited value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(loading != null);
    assert(imageEdited != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result loading(Loading value),
    Result imageEdited(ImageEdited value),
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
