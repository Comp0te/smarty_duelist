// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null

part of 'sign_in_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SignInState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required FirebaseUser user),
    @required Result error(@required Failure failure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(@required FirebaseUser user),
    Result error(@required Failure failure),
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

class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  Init init() {
    return const Init();
  }

  ValidationShowed validationShowed() {
    return const ValidationShowed();
  }

  Loading loading() {
    return const Loading();
  }

  Success success({@required FirebaseUser user}) {
    return Success(
      user: user,
    );
  }

  Error error({@required Failure failure}) {
    return Error(
      failure: failure,
    );
  }
}

const $SignInState = _$SignInStateTearOff();

class _$Init with DiagnosticableTreeMixin implements Init {
  const _$Init();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInState.init'));
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
    @required Result success(@required FirebaseUser user),
    @required Result error(@required Failure failure),
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
    Result success(@required FirebaseUser user),
    Result error(@required Failure failure),
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

abstract class Init implements SignInState {
  const factory Init() = _$Init;
}

class _$ValidationShowed
    with DiagnosticableTreeMixin
    implements ValidationShowed {
  const _$ValidationShowed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.validationShowed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.validationShowed'));
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
    @required Result success(@required FirebaseUser user),
    @required Result error(@required Failure failure),
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
    Result success(@required FirebaseUser user),
    Result error(@required Failure failure),
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

abstract class ValidationShowed implements SignInState {
  const factory ValidationShowed() = _$ValidationShowed;
}

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInState.loading'));
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
    @required Result success(@required FirebaseUser user),
    @required Result error(@required Failure failure),
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
    Result success(@required FirebaseUser user),
    Result error(@required Failure failure),
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

abstract class Loading implements SignInState {
  const factory Loading() = _$Loading;
}

class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success({@required this.user}) : assert(user != null);

  @override
  final FirebaseUser user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.success(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.success'))
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
  _$Success copyWith({
    Object user = freezed,
  }) {
    return _$Success(
      user: user == freezed ? this.user : user as FirebaseUser,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required FirebaseUser user),
    @required Result error(@required Failure failure),
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
    Result success(@required FirebaseUser user),
    Result error(@required Failure failure),
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

abstract class Success implements SignInState {
  const factory Success({@required FirebaseUser user}) = _$Success;

  FirebaseUser get user;

  Success copyWith({FirebaseUser user});
}

class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error({@required this.failure}) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInState.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInState.error'))
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
  _$Error copyWith({
    Object failure = freezed,
  }) {
    return _$Error(
      failure: failure == freezed ? this.failure : failure as Failure,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(@required FirebaseUser user),
    @required Result error(@required Failure failure),
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
    Result success(@required FirebaseUser user),
    Result error(@required Failure failure),
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

abstract class Error implements SignInState {
  const factory Error({@required Failure failure}) = _$Error;

  Failure get failure;

  Error copyWith({Failure failure});
}
