// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_event.dart';

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
