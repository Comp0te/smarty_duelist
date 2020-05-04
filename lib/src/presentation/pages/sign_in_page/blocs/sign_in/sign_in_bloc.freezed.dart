// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  SignInWithGoogle signInWithGoogle() {
    return const SignInWithGoogle();
  }

  SignInWithFacebook signInWithFacebook() {
    return const SignInWithFacebook();
  }

  SignInWithApple signInWithApple() {
    return const SignInWithApple();
  }

  SignInWithEmail signInWithEmail() {
    return const SignInWithEmail();
  }
}

// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
    @required Result signInWithApple(),
    @required Result signInWithEmail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    Result signInWithApple(),
    Result signInWithEmail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
    @required Result signInWithApple(SignInWithApple value),
    @required Result signInWithEmail(SignInWithEmail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    Result signInWithApple(SignInWithApple value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  });
}

abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

abstract class $SignInWithGoogleCopyWith<$Res> {
  factory $SignInWithGoogleCopyWith(
          SignInWithGoogle value, $Res Function(SignInWithGoogle) then) =
      _$SignInWithGoogleCopyWithImpl<$Res>;
}

class _$SignInWithGoogleCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithGoogleCopyWith<$Res> {
  _$SignInWithGoogleCopyWithImpl(
      SignInWithGoogle _value, $Res Function(SignInWithGoogle) _then)
      : super(_value, (v) => _then(v as SignInWithGoogle));

  @override
  SignInWithGoogle get _value => super._value as SignInWithGoogle;
}

class _$SignInWithGoogle
    with DiagnosticableTreeMixin
    implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signInWithGoogle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.signInWithGoogle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
    @required Result signInWithApple(),
    @required Result signInWithEmail(),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    Result signInWithApple(),
    Result signInWithEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
    @required Result signInWithApple(SignInWithApple value),
    @required Result signInWithEmail(SignInWithEmail value),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    Result signInWithApple(SignInWithApple value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements SignInEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

abstract class $SignInWithFacebookCopyWith<$Res> {
  factory $SignInWithFacebookCopyWith(
          SignInWithFacebook value, $Res Function(SignInWithFacebook) then) =
      _$SignInWithFacebookCopyWithImpl<$Res>;
}

class _$SignInWithFacebookCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithFacebookCopyWith<$Res> {
  _$SignInWithFacebookCopyWithImpl(
      SignInWithFacebook _value, $Res Function(SignInWithFacebook) _then)
      : super(_value, (v) => _then(v as SignInWithFacebook));

  @override
  SignInWithFacebook get _value => super._value as SignInWithFacebook;
}

class _$SignInWithFacebook
    with DiagnosticableTreeMixin
    implements SignInWithFacebook {
  const _$SignInWithFacebook();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signInWithFacebook()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInEvent.signInWithFacebook'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithFacebook);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
    @required Result signInWithApple(),
    @required Result signInWithEmail(),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithFacebook();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    Result signInWithApple(),
    Result signInWithEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
    @required Result signInWithApple(SignInWithApple value),
    @required Result signInWithEmail(SignInWithEmail value),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithFacebook(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    Result signInWithApple(SignInWithApple value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebook != null) {
      return signInWithFacebook(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebook implements SignInEvent {
  const factory SignInWithFacebook() = _$SignInWithFacebook;
}

abstract class $SignInWithAppleCopyWith<$Res> {
  factory $SignInWithAppleCopyWith(
          SignInWithApple value, $Res Function(SignInWithApple) then) =
      _$SignInWithAppleCopyWithImpl<$Res>;
}

class _$SignInWithAppleCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithAppleCopyWith<$Res> {
  _$SignInWithAppleCopyWithImpl(
      SignInWithApple _value, $Res Function(SignInWithApple) _then)
      : super(_value, (v) => _then(v as SignInWithApple));

  @override
  SignInWithApple get _value => super._value as SignInWithApple;
}

class _$SignInWithApple
    with DiagnosticableTreeMixin
    implements SignInWithApple {
  const _$SignInWithApple();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signInWithApple()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInEvent.signInWithApple'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithApple);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
    @required Result signInWithApple(),
    @required Result signInWithEmail(),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithApple();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    Result signInWithApple(),
    Result signInWithEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApple != null) {
      return signInWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
    @required Result signInWithApple(SignInWithApple value),
    @required Result signInWithEmail(SignInWithEmail value),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithApple(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    Result signInWithApple(SignInWithApple value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithApple != null) {
      return signInWithApple(this);
    }
    return orElse();
  }
}

abstract class SignInWithApple implements SignInEvent {
  const factory SignInWithApple() = _$SignInWithApple;
}

abstract class $SignInWithEmailCopyWith<$Res> {
  factory $SignInWithEmailCopyWith(
          SignInWithEmail value, $Res Function(SignInWithEmail) then) =
      _$SignInWithEmailCopyWithImpl<$Res>;
}

class _$SignInWithEmailCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithEmailCopyWith<$Res> {
  _$SignInWithEmailCopyWithImpl(
      SignInWithEmail _value, $Res Function(SignInWithEmail) _then)
      : super(_value, (v) => _then(v as SignInWithEmail));

  @override
  SignInWithEmail get _value => super._value as SignInWithEmail;
}

class _$SignInWithEmail
    with DiagnosticableTreeMixin
    implements SignInWithEmail {
  const _$SignInWithEmail();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInEvent.signInWithEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignInEvent.signInWithEmail'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result signInWithGoogle(),
    @required Result signInWithFacebook(),
    @required Result signInWithApple(),
    @required Result signInWithEmail(),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result signInWithGoogle(),
    Result signInWithFacebook(),
    Result signInWithApple(),
    Result signInWithEmail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result signInWithGoogle(SignInWithGoogle value),
    @required Result signInWithFacebook(SignInWithFacebook value),
    @required Result signInWithApple(SignInWithApple value),
    @required Result signInWithEmail(SignInWithEmail value),
  }) {
    assert(signInWithGoogle != null);
    assert(signInWithFacebook != null);
    assert(signInWithApple != null);
    assert(signInWithEmail != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result signInWithGoogle(SignInWithGoogle value),
    Result signInWithFacebook(SignInWithFacebook value),
    Result signInWithApple(SignInWithApple value),
    Result signInWithEmail(SignInWithEmail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmail implements SignInEvent {
  const factory SignInWithEmail() = _$SignInWithEmail;
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

  Success success(User user) {
    return Success(
      user,
    );
  }

  Error error(AuthFailure failure) {
    return Error(
      failure,
    );
  }
}

// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

mixin _$SignInState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result validationShowed(),
    Result loading(),
    Result success(User user),
    Result error(AuthFailure failure),
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

abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
    @required Result success(User user),
    @required Result error(AuthFailure failure),
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
    Result success(User user),
    Result error(AuthFailure failure),
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

abstract class $ValidationShowedCopyWith<$Res> {
  factory $ValidationShowedCopyWith(
          ValidationShowed value, $Res Function(ValidationShowed) then) =
      _$ValidationShowedCopyWithImpl<$Res>;
}

class _$ValidationShowedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
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
    @required Result success(User user),
    @required Result error(AuthFailure failure),
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
    Result success(User user),
    Result error(AuthFailure failure),
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

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
    @required Result success(User user),
    @required Result error(AuthFailure failure),
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
    Result success(User user),
    Result error(AuthFailure failure),
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

abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$SuccessCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
      user == freezed ? _value.user : user as User,
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
  const _$Success(this.user) : assert(user != null);

  @override
  final User user;

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
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailure failure),
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
    Result success(User user),
    Result error(AuthFailure failure),
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
  const factory Success(User user) = _$Success;

  User get user;
  $SuccessCopyWith<Success> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

class _$ErrorCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
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
      failure == freezed ? _value.failure : failure as AuthFailure,
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
  const _$Error(this.failure) : assert(failure != null);

  @override
  final AuthFailure failure;

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
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required Result validationShowed(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailure failure),
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
    Result success(User user),
    Result error(AuthFailure failure),
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
  const factory Error(AuthFailure failure) = _$Error;

  AuthFailure get failure;
  $ErrorCopyWith<Error> get copyWith;
}
