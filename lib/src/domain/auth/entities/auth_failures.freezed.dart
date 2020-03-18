// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  });
}

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  SendResetPasswordFailure sendResetPassword(AuthException exp) {
    return SendResetPasswordFailure(
      exp,
    );
  }

  ConfirmResetPasswordFailure confirmResetPassword(AuthException exp) {
    return ConfirmResetPasswordFailure(
      exp,
    );
  }

  SignUpWithEmailFailure signUpWithEmail(AuthException exp) {
    return SignUpWithEmailFailure(
      exp,
    );
  }

  SignInWithGoogleFailure signInWithGoogle(AuthException exp) {
    return SignInWithGoogleFailure(
      exp,
    );
  }

  GoogleAuthFailure googleAuth(PlatformException exp) {
    return GoogleAuthFailure(
      exp,
    );
  }

  SignInWithEmailFailure signInWithEmail(AuthException exp) {
    return SignInWithEmailFailure(
      exp,
    );
  }

  UnexpectedAuthFailure unexpected(AuthException exp) {
    return UnexpectedAuthFailure(
      exp,
    );
  }
}

const $AuthFailure = _$AuthFailureTearOff();

class _$CancelledByUser
    with DiagnosticableTreeMixin
    implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthFailure.cancelledByUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

class _$SendResetPasswordFailure
    with DiagnosticableTreeMixin
    implements SendResetPasswordFailure {
  const _$SendResetPasswordFailure(this.exp) : assert(exp != null);

  @override
  final AuthException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.sendResetPassword(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.sendResetPassword'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendResetPasswordFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$SendResetPasswordFailure copyWith({
    Object exp = freezed,
  }) {
    return _$SendResetPasswordFailure(
      exp == freezed ? this.exp : exp as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return sendResetPassword(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendResetPassword != null) {
      return sendResetPassword(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return sendResetPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendResetPassword != null) {
      return sendResetPassword(this);
    }
    return orElse();
  }
}

abstract class SendResetPasswordFailure implements AuthFailure {
  const factory SendResetPasswordFailure(AuthException exp) =
      _$SendResetPasswordFailure;

  AuthException get exp;

  SendResetPasswordFailure copyWith({AuthException exp});
}

class _$ConfirmResetPasswordFailure
    with DiagnosticableTreeMixin
    implements ConfirmResetPasswordFailure {
  const _$ConfirmResetPasswordFailure(this.exp) : assert(exp != null);

  @override
  final AuthException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.confirmResetPassword(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.confirmResetPassword'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmResetPasswordFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$ConfirmResetPasswordFailure copyWith({
    Object exp = freezed,
  }) {
    return _$ConfirmResetPasswordFailure(
      exp == freezed ? this.exp : exp as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return confirmResetPassword(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmResetPassword != null) {
      return confirmResetPassword(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return confirmResetPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmResetPassword != null) {
      return confirmResetPassword(this);
    }
    return orElse();
  }
}

abstract class ConfirmResetPasswordFailure implements AuthFailure {
  const factory ConfirmResetPasswordFailure(AuthException exp) =
      _$ConfirmResetPasswordFailure;

  AuthException get exp;

  ConfirmResetPasswordFailure copyWith({AuthException exp});
}

class _$SignUpWithEmailFailure
    with DiagnosticableTreeMixin
    implements SignUpWithEmailFailure {
  const _$SignUpWithEmailFailure(this.exp) : assert(exp != null);

  @override
  final AuthException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.signUpWithEmail(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.signUpWithEmail'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpWithEmailFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$SignUpWithEmailFailure copyWith({
    Object exp = freezed,
  }) {
    return _$SignUpWithEmailFailure(
      exp == freezed ? this.exp : exp as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return signUpWithEmail(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmail != null) {
      return signUpWithEmail(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return signUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmail != null) {
      return signUpWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignUpWithEmailFailure implements AuthFailure {
  const factory SignUpWithEmailFailure(AuthException exp) =
      _$SignUpWithEmailFailure;

  AuthException get exp;

  SignUpWithEmailFailure copyWith({AuthException exp});
}

class _$SignInWithGoogleFailure
    with DiagnosticableTreeMixin
    implements SignInWithGoogleFailure {
  const _$SignInWithGoogleFailure(this.exp) : assert(exp != null);

  @override
  final AuthException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.signInWithGoogle(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.signInWithGoogle'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithGoogleFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$SignInWithGoogleFailure copyWith({
    Object exp = freezed,
  }) {
    return _$SignInWithGoogleFailure(
      exp == freezed ? this.exp : exp as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return signInWithGoogle(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogleFailure implements AuthFailure {
  const factory SignInWithGoogleFailure(AuthException exp) =
      _$SignInWithGoogleFailure;

  AuthException get exp;

  SignInWithGoogleFailure copyWith({AuthException exp});
}

class _$GoogleAuthFailure
    with DiagnosticableTreeMixin
    implements GoogleAuthFailure {
  const _$GoogleAuthFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.googleAuth(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.googleAuth'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleAuthFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$GoogleAuthFailure copyWith({
    Object exp = freezed,
  }) {
    return _$GoogleAuthFailure(
      exp == freezed ? this.exp : exp as PlatformException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return googleAuth(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (googleAuth != null) {
      return googleAuth(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return googleAuth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (googleAuth != null) {
      return googleAuth(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthFailure implements AuthFailure {
  const factory GoogleAuthFailure(PlatformException exp) = _$GoogleAuthFailure;

  PlatformException get exp;

  GoogleAuthFailure copyWith({PlatformException exp});
}

class _$SignInWithEmailFailure
    with DiagnosticableTreeMixin
    implements SignInWithEmailFailure {
  const _$SignInWithEmailFailure(this.exp) : assert(exp != null);

  @override
  final AuthException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.signInWithEmail(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.signInWithEmail'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$SignInWithEmailFailure copyWith({
    Object exp = freezed,
  }) {
    return _$SignInWithEmailFailure(
      exp == freezed ? this.exp : exp as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return signInWithEmail(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailFailure implements AuthFailure {
  const factory SignInWithEmailFailure(AuthException exp) =
      _$SignInWithEmailFailure;

  AuthException get exp;

  SignInWithEmailFailure copyWith({AuthException exp});
}

class _$UnexpectedAuthFailure
    with DiagnosticableTreeMixin
    implements UnexpectedAuthFailure {
  const _$UnexpectedAuthFailure(this.exp) : assert(exp != null);

  @override
  final AuthException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.unexpected(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.unexpected'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnexpectedAuthFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  _$UnexpectedAuthFailure copyWith({
    Object exp = freezed,
  }) {
    return _$UnexpectedAuthFailure(
      exp == freezed ? this.exp : exp as AuthException,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(AuthException exp),
    @required Result confirmResetPassword(AuthException exp),
    @required Result signUpWithEmail(AuthException exp),
    @required Result signInWithGoogle(AuthException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(AuthException exp),
    @required Result unexpected(AuthException exp),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return unexpected(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(AuthException exp),
    Result confirmResetPassword(AuthException exp),
    Result signUpWithEmail(AuthException exp),
    Result signInWithGoogle(AuthException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(AuthException exp),
    Result unexpected(AuthException exp),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(exp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithGoogle(SignInWithGoogleFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithGoogle != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithGoogle(SignInWithGoogleFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedAuthFailure implements AuthFailure {
  const factory UnexpectedAuthFailure(AuthException exp) =
      _$UnexpectedAuthFailure;

  AuthException get exp;

  UnexpectedAuthFailure copyWith({AuthException exp});
}
