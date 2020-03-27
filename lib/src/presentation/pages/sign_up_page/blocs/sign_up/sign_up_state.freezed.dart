// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  Init init() {
    return const Init();
  }

  ValidationShowed validationShowed() {
    return const ValidationShowed();
  }

  Loading loading() {
    return const Loading();
  }

  Success success({@required User user}) {
    return Success(
      user: user,
    );
  }

  Error error({@required AuthFailure failure}) {
    return Error(
      failure: failure,
    );
  }
}

// ignore: unused_element
const $SignUpState = _$SignUpStateTearOff();

mixin _$SignUpState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required User user),
    @required Result error(@required AuthFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required User user),
    Result error(@required AuthFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result validationShowed(ValidationShowed value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result validationShowed(ValidationShowed value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpState.init'));
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
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required User user),
    @required Result error(@required AuthFailure failure),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required User user),
    Result error(@required AuthFailure failure),
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
    @required Result validationShowed(ValidationShowed value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result validationShowed(ValidationShowed value),
    Result loading(Loading value),
    Result success(Success value),
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

abstract class Init implements SignUpState {
  const factory Init() = _$Init;
}

abstract class $ValidationShowedCopyWith<$Res> {
  factory $ValidationShowedCopyWith(
          ValidationShowed value, $Res Function(ValidationShowed) then) =
      _$ValidationShowedCopyWithImpl<$Res>;
}

class _$ValidationShowedCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $ValidationShowedCopyWith<$Res> {
  _$ValidationShowedCopyWithImpl(
      ValidationShowed _value, $Res Function(ValidationShowed) _then)
      : super(_value, (v) => _then(v as ValidationShowed));

  @override
  ValidationShowed get _value => super._value as ValidationShowed;
}

class _$ValidationShowed
    with DiagnosticableTreeMixin
    implements ValidationShowed {
  const _$ValidationShowed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.validationShowed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.validationShowed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ValidationShowed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required User user),
    @required Result error(@required AuthFailure failure),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return validationShowed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required User user),
    Result error(@required AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationShowed != null) {
      return validationShowed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result validationShowed(ValidationShowed value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return validationShowed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result validationShowed(ValidationShowed value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationShowed != null) {
      return validationShowed(this);
    }
    return orElse();
  }
}

abstract class ValidationShowed implements SignUpState {
  const factory ValidationShowed() = _$ValidationShowed;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
    return 'SignUpState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpState.loading'));
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
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required User user),
    @required Result error(@required AuthFailure failure),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required User user),
    Result error(@required AuthFailure failure),
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
    @required Result validationShowed(ValidationShowed value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result validationShowed(ValidationShowed value),
    Result loading(Loading value),
    Result success(Success value),
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

abstract class Loading implements SignUpState {
  const factory Loading() = _$Loading;
}

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$SuccessCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Success(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success({@required this.user}) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.success(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.success'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required User user),
    @required Result error(@required AuthFailure failure),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required User user),
    Result error(@required AuthFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result validationShowed(ValidationShowed value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result validationShowed(ValidationShowed value),
    Result loading(Loading value),
    Result success(Success value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SignUpState {
  const factory Success({@required User user}) = _$Success;

  User get user;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

class _$ErrorCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
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
      failure: failure == freezed ? _value.failure : failure as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({@required this.failure}) : assert(failure != null);

  @override
  final AuthFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpState.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpState.error'))
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
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required User user),
    @required Result error(@required AuthFailure failure),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required User user),
    Result error(@required AuthFailure failure),
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
    @required Result validationShowed(ValidationShowed value),
    @required Result loading(Loading value),
    @required Result success(Success value),
    @required Result error(Error value),
  }) {
    assert(init != null);
    assert(validationShowed != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result validationShowed(ValidationShowed value),
    Result loading(Loading value),
    Result success(Success value),
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

abstract class Error implements SignUpState {
  const factory Error({@required AuthFailure failure}) = _$Error;

  AuthFailure get failure;
  $ErrorCopyWith<Error> get copyWith;
}
