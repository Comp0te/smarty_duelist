// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  SendResetPasswordFailure sendResetPassword(PlatformException exp) {
    return SendResetPasswordFailure(
      exp,
    );
  }

  ConfirmResetPasswordFailure confirmResetPassword(PlatformException exp) {
    return ConfirmResetPasswordFailure(
      exp,
    );
  }

  SignUpWithEmailFailure signUpWithEmail(PlatformException exp) {
    return SignUpWithEmailFailure(
      exp,
    );
  }

  SignInWithCredentialFailure signInWithCredential(PlatformException exp) {
    return SignInWithCredentialFailure(
      exp,
    );
  }

  GoogleAuthFailure googleAuth(PlatformException exp) {
    return GoogleAuthFailure(
      exp,
    );
  }

  SignInWithEmailFailure signInWithEmail(PlatformException exp) {
    return SignInWithEmailFailure(
      exp,
    );
  }

  UnexpectedAuthFailure unexpected(PlatformException exp) {
    return UnexpectedAuthFailure(
      exp,
    );
  }

  FetchSignInMethodsForEmailFailure fetchSignInMethodsForEmail() {
    return const FetchSignInMethodsForEmailFailure();
  }

  AccountExistsWithDifferentCredentialFailure
      accountExistsWithDifferentCredential(List<String> possibleAuthMethods) {
    return AccountExistsWithDifferentCredentialFailure(
      possibleAuthMethods,
    );
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result sendResetPassword(SendResetPasswordFailure value),
    @required Result confirmResetPassword(ConfirmResetPasswordFailure value),
    @required Result signUpWithEmail(SignUpWithEmailFailure value),
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

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
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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

abstract class $SendResetPasswordFailureCopyWith<$Res> {
  factory $SendResetPasswordFailureCopyWith(SendResetPasswordFailure value,
          $Res Function(SendResetPasswordFailure) then) =
      _$SendResetPasswordFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$SendResetPasswordFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SendResetPasswordFailureCopyWith<$Res> {
  _$SendResetPasswordFailureCopyWithImpl(SendResetPasswordFailure _value,
      $Res Function(SendResetPasswordFailure) _then)
      : super(_value, (v) => _then(v as SendResetPasswordFailure));

  @override
  SendResetPasswordFailure get _value =>
      super._value as SendResetPasswordFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(SendResetPasswordFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$SendResetPasswordFailure
    with DiagnosticableTreeMixin
    implements SendResetPasswordFailure {
  const _$SendResetPasswordFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

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
  $SendResetPasswordFailureCopyWith<SendResetPasswordFailure> get copyWith =>
      _$SendResetPasswordFailureCopyWithImpl<SendResetPasswordFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return sendResetPassword(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return sendResetPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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
  const factory SendResetPasswordFailure(PlatformException exp) =
      _$SendResetPasswordFailure;

  PlatformException get exp;
  $SendResetPasswordFailureCopyWith<SendResetPasswordFailure> get copyWith;
}

abstract class $ConfirmResetPasswordFailureCopyWith<$Res> {
  factory $ConfirmResetPasswordFailureCopyWith(
          ConfirmResetPasswordFailure value,
          $Res Function(ConfirmResetPasswordFailure) then) =
      _$ConfirmResetPasswordFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$ConfirmResetPasswordFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ConfirmResetPasswordFailureCopyWith<$Res> {
  _$ConfirmResetPasswordFailureCopyWithImpl(ConfirmResetPasswordFailure _value,
      $Res Function(ConfirmResetPasswordFailure) _then)
      : super(_value, (v) => _then(v as ConfirmResetPasswordFailure));

  @override
  ConfirmResetPasswordFailure get _value =>
      super._value as ConfirmResetPasswordFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(ConfirmResetPasswordFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$ConfirmResetPasswordFailure
    with DiagnosticableTreeMixin
    implements ConfirmResetPasswordFailure {
  const _$ConfirmResetPasswordFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

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
  $ConfirmResetPasswordFailureCopyWith<ConfirmResetPasswordFailure>
      get copyWith => _$ConfirmResetPasswordFailureCopyWithImpl<
          ConfirmResetPasswordFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return confirmResetPassword(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return confirmResetPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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
  const factory ConfirmResetPasswordFailure(PlatformException exp) =
      _$ConfirmResetPasswordFailure;

  PlatformException get exp;
  $ConfirmResetPasswordFailureCopyWith<ConfirmResetPasswordFailure>
      get copyWith;
}

abstract class $SignUpWithEmailFailureCopyWith<$Res> {
  factory $SignUpWithEmailFailureCopyWith(SignUpWithEmailFailure value,
          $Res Function(SignUpWithEmailFailure) then) =
      _$SignUpWithEmailFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$SignUpWithEmailFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SignUpWithEmailFailureCopyWith<$Res> {
  _$SignUpWithEmailFailureCopyWithImpl(SignUpWithEmailFailure _value,
      $Res Function(SignUpWithEmailFailure) _then)
      : super(_value, (v) => _then(v as SignUpWithEmailFailure));

  @override
  SignUpWithEmailFailure get _value => super._value as SignUpWithEmailFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(SignUpWithEmailFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$SignUpWithEmailFailure
    with DiagnosticableTreeMixin
    implements SignUpWithEmailFailure {
  const _$SignUpWithEmailFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

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
  $SignUpWithEmailFailureCopyWith<SignUpWithEmailFailure> get copyWith =>
      _$SignUpWithEmailFailureCopyWithImpl<SignUpWithEmailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return signUpWithEmail(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return signUpWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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
  const factory SignUpWithEmailFailure(PlatformException exp) =
      _$SignUpWithEmailFailure;

  PlatformException get exp;
  $SignUpWithEmailFailureCopyWith<SignUpWithEmailFailure> get copyWith;
}

abstract class $SignInWithCredentialFailureCopyWith<$Res> {
  factory $SignInWithCredentialFailureCopyWith(
          SignInWithCredentialFailure value,
          $Res Function(SignInWithCredentialFailure) then) =
      _$SignInWithCredentialFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$SignInWithCredentialFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SignInWithCredentialFailureCopyWith<$Res> {
  _$SignInWithCredentialFailureCopyWithImpl(SignInWithCredentialFailure _value,
      $Res Function(SignInWithCredentialFailure) _then)
      : super(_value, (v) => _then(v as SignInWithCredentialFailure));

  @override
  SignInWithCredentialFailure get _value =>
      super._value as SignInWithCredentialFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(SignInWithCredentialFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$SignInWithCredentialFailure
    with DiagnosticableTreeMixin
    implements SignInWithCredentialFailure {
  const _$SignInWithCredentialFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.signInWithCredential(exp: $exp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthFailure.signInWithCredential'))
      ..add(DiagnosticsProperty('exp', exp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithCredentialFailure &&
            (identical(other.exp, exp) ||
                const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exp);

  @override
  $SignInWithCredentialFailureCopyWith<SignInWithCredentialFailure>
      get copyWith => _$SignInWithCredentialFailureCopyWithImpl<
          SignInWithCredentialFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return signInWithCredential(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredential != null) {
      return signInWithCredential(exp);
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return signInWithCredential(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithCredential != null) {
      return signInWithCredential(this);
    }
    return orElse();
  }
}

abstract class SignInWithCredentialFailure implements AuthFailure {
  const factory SignInWithCredentialFailure(PlatformException exp) =
      _$SignInWithCredentialFailure;

  PlatformException get exp;
  $SignInWithCredentialFailureCopyWith<SignInWithCredentialFailure>
      get copyWith;
}

abstract class $GoogleAuthFailureCopyWith<$Res> {
  factory $GoogleAuthFailureCopyWith(
          GoogleAuthFailure value, $Res Function(GoogleAuthFailure) then) =
      _$GoogleAuthFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$GoogleAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $GoogleAuthFailureCopyWith<$Res> {
  _$GoogleAuthFailureCopyWithImpl(
      GoogleAuthFailure _value, $Res Function(GoogleAuthFailure) _then)
      : super(_value, (v) => _then(v as GoogleAuthFailure));

  @override
  GoogleAuthFailure get _value => super._value as GoogleAuthFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(GoogleAuthFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
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
  $GoogleAuthFailureCopyWith<GoogleAuthFailure> get copyWith =>
      _$GoogleAuthFailureCopyWithImpl<GoogleAuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return googleAuth(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return googleAuth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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
  $GoogleAuthFailureCopyWith<GoogleAuthFailure> get copyWith;
}

abstract class $SignInWithEmailFailureCopyWith<$Res> {
  factory $SignInWithEmailFailureCopyWith(SignInWithEmailFailure value,
          $Res Function(SignInWithEmailFailure) then) =
      _$SignInWithEmailFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$SignInWithEmailFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $SignInWithEmailFailureCopyWith<$Res> {
  _$SignInWithEmailFailureCopyWithImpl(SignInWithEmailFailure _value,
      $Res Function(SignInWithEmailFailure) _then)
      : super(_value, (v) => _then(v as SignInWithEmailFailure));

  @override
  SignInWithEmailFailure get _value => super._value as SignInWithEmailFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(SignInWithEmailFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$SignInWithEmailFailure
    with DiagnosticableTreeMixin
    implements SignInWithEmailFailure {
  const _$SignInWithEmailFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

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
  $SignInWithEmailFailureCopyWith<SignInWithEmailFailure> get copyWith =>
      _$SignInWithEmailFailureCopyWithImpl<SignInWithEmailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return signInWithEmail(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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
  const factory SignInWithEmailFailure(PlatformException exp) =
      _$SignInWithEmailFailure;

  PlatformException get exp;
  $SignInWithEmailFailureCopyWith<SignInWithEmailFailure> get copyWith;
}

abstract class $UnexpectedAuthFailureCopyWith<$Res> {
  factory $UnexpectedAuthFailureCopyWith(UnexpectedAuthFailure value,
          $Res Function(UnexpectedAuthFailure) then) =
      _$UnexpectedAuthFailureCopyWithImpl<$Res>;
  $Res call({PlatformException exp});
}

class _$UnexpectedAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnexpectedAuthFailureCopyWith<$Res> {
  _$UnexpectedAuthFailureCopyWithImpl(
      UnexpectedAuthFailure _value, $Res Function(UnexpectedAuthFailure) _then)
      : super(_value, (v) => _then(v as UnexpectedAuthFailure));

  @override
  UnexpectedAuthFailure get _value => super._value as UnexpectedAuthFailure;

  @override
  $Res call({
    Object exp = freezed,
  }) {
    return _then(UnexpectedAuthFailure(
      exp == freezed ? _value.exp : exp as PlatformException,
    ));
  }
}

class _$UnexpectedAuthFailure
    with DiagnosticableTreeMixin
    implements UnexpectedAuthFailure {
  const _$UnexpectedAuthFailure(this.exp) : assert(exp != null);

  @override
  final PlatformException exp;

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
  $UnexpectedAuthFailureCopyWith<UnexpectedAuthFailure> get copyWith =>
      _$UnexpectedAuthFailureCopyWithImpl<UnexpectedAuthFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return unexpected(exp);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
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
  const factory UnexpectedAuthFailure(PlatformException exp) =
      _$UnexpectedAuthFailure;

  PlatformException get exp;
  $UnexpectedAuthFailureCopyWith<UnexpectedAuthFailure> get copyWith;
}

abstract class $FetchSignInMethodsForEmailFailureCopyWith<$Res> {
  factory $FetchSignInMethodsForEmailFailureCopyWith(
          FetchSignInMethodsForEmailFailure value,
          $Res Function(FetchSignInMethodsForEmailFailure) then) =
      _$FetchSignInMethodsForEmailFailureCopyWithImpl<$Res>;
}

class _$FetchSignInMethodsForEmailFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $FetchSignInMethodsForEmailFailureCopyWith<$Res> {
  _$FetchSignInMethodsForEmailFailureCopyWithImpl(
      FetchSignInMethodsForEmailFailure _value,
      $Res Function(FetchSignInMethodsForEmailFailure) _then)
      : super(_value, (v) => _then(v as FetchSignInMethodsForEmailFailure));

  @override
  FetchSignInMethodsForEmailFailure get _value =>
      super._value as FetchSignInMethodsForEmailFailure;
}

class _$FetchSignInMethodsForEmailFailure
    with DiagnosticableTreeMixin
    implements FetchSignInMethodsForEmailFailure {
  const _$FetchSignInMethodsForEmailFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.fetchSignInMethodsForEmail()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthFailure.fetchSignInMethodsForEmail'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchSignInMethodsForEmailFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return fetchSignInMethodsForEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSignInMethodsForEmail != null) {
      return fetchSignInMethodsForEmail();
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return fetchSignInMethodsForEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSignInMethodsForEmail != null) {
      return fetchSignInMethodsForEmail(this);
    }
    return orElse();
  }
}

abstract class FetchSignInMethodsForEmailFailure implements AuthFailure {
  const factory FetchSignInMethodsForEmailFailure() =
      _$FetchSignInMethodsForEmailFailure;
}

abstract class $AccountExistsWithDifferentCredentialFailureCopyWith<$Res> {
  factory $AccountExistsWithDifferentCredentialFailureCopyWith(
          AccountExistsWithDifferentCredentialFailure value,
          $Res Function(AccountExistsWithDifferentCredentialFailure) then) =
      _$AccountExistsWithDifferentCredentialFailureCopyWithImpl<$Res>;
  $Res call({List<String> possibleAuthMethods});
}

class _$AccountExistsWithDifferentCredentialFailureCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $AccountExistsWithDifferentCredentialFailureCopyWith<$Res> {
  _$AccountExistsWithDifferentCredentialFailureCopyWithImpl(
      AccountExistsWithDifferentCredentialFailure _value,
      $Res Function(AccountExistsWithDifferentCredentialFailure) _then)
      : super(_value,
            (v) => _then(v as AccountExistsWithDifferentCredentialFailure));

  @override
  AccountExistsWithDifferentCredentialFailure get _value =>
      super._value as AccountExistsWithDifferentCredentialFailure;

  @override
  $Res call({
    Object possibleAuthMethods = freezed,
  }) {
    return _then(AccountExistsWithDifferentCredentialFailure(
      possibleAuthMethods == freezed
          ? _value.possibleAuthMethods
          : possibleAuthMethods as List<String>,
    ));
  }
}

class _$AccountExistsWithDifferentCredentialFailure
    with DiagnosticableTreeMixin
    implements AccountExistsWithDifferentCredentialFailure {
  const _$AccountExistsWithDifferentCredentialFailure(this.possibleAuthMethods)
      : assert(possibleAuthMethods != null);

  @override
  final List<String> possibleAuthMethods;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthFailure.accountExistsWithDifferentCredential(possibleAuthMethods: $possibleAuthMethods)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'AuthFailure.accountExistsWithDifferentCredential'))
      ..add(DiagnosticsProperty('possibleAuthMethods', possibleAuthMethods));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountExistsWithDifferentCredentialFailure &&
            (identical(other.possibleAuthMethods, possibleAuthMethods) ||
                const DeepCollectionEquality()
                    .equals(other.possibleAuthMethods, possibleAuthMethods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(possibleAuthMethods);

  @override
  $AccountExistsWithDifferentCredentialFailureCopyWith<
          AccountExistsWithDifferentCredentialFailure>
      get copyWith => _$AccountExistsWithDifferentCredentialFailureCopyWithImpl<
          AccountExistsWithDifferentCredentialFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result sendResetPassword(PlatformException exp),
    @required Result confirmResetPassword(PlatformException exp),
    @required Result signUpWithEmail(PlatformException exp),
    @required Result signInWithCredential(PlatformException exp),
    @required Result googleAuth(PlatformException exp),
    @required Result signInWithEmail(PlatformException exp),
    @required Result unexpected(PlatformException exp),
    @required Result fetchSignInMethodsForEmail(),
    @required
        Result accountExistsWithDifferentCredential(
            List<String> possibleAuthMethods),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return accountExistsWithDifferentCredential(possibleAuthMethods);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result sendResetPassword(PlatformException exp),
    Result confirmResetPassword(PlatformException exp),
    Result signUpWithEmail(PlatformException exp),
    Result signInWithCredential(PlatformException exp),
    Result googleAuth(PlatformException exp),
    Result signInWithEmail(PlatformException exp),
    Result unexpected(PlatformException exp),
    Result fetchSignInMethodsForEmail(),
    Result accountExistsWithDifferentCredential(
        List<String> possibleAuthMethods),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountExistsWithDifferentCredential != null) {
      return accountExistsWithDifferentCredential(possibleAuthMethods);
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
    @required Result signInWithCredential(SignInWithCredentialFailure value),
    @required Result googleAuth(GoogleAuthFailure value),
    @required Result signInWithEmail(SignInWithEmailFailure value),
    @required Result unexpected(UnexpectedAuthFailure value),
    @required
        Result fetchSignInMethodsForEmail(
            FetchSignInMethodsForEmailFailure value),
    @required
        Result accountExistsWithDifferentCredential(
            AccountExistsWithDifferentCredentialFailure value),
  }) {
    assert(cancelledByUser != null);
    assert(sendResetPassword != null);
    assert(confirmResetPassword != null);
    assert(signUpWithEmail != null);
    assert(signInWithCredential != null);
    assert(googleAuth != null);
    assert(signInWithEmail != null);
    assert(unexpected != null);
    assert(fetchSignInMethodsForEmail != null);
    assert(accountExistsWithDifferentCredential != null);
    return accountExistsWithDifferentCredential(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result sendResetPassword(SendResetPasswordFailure value),
    Result confirmResetPassword(ConfirmResetPasswordFailure value),
    Result signUpWithEmail(SignUpWithEmailFailure value),
    Result signInWithCredential(SignInWithCredentialFailure value),
    Result googleAuth(GoogleAuthFailure value),
    Result signInWithEmail(SignInWithEmailFailure value),
    Result unexpected(UnexpectedAuthFailure value),
    Result fetchSignInMethodsForEmail(FetchSignInMethodsForEmailFailure value),
    Result accountExistsWithDifferentCredential(
        AccountExistsWithDifferentCredentialFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountExistsWithDifferentCredential != null) {
      return accountExistsWithDifferentCredential(this);
    }
    return orElse();
  }
}

abstract class AccountExistsWithDifferentCredentialFailure
    implements AuthFailure {
  const factory AccountExistsWithDifferentCredentialFailure(
          List<String> possibleAuthMethods) =
      _$AccountExistsWithDifferentCredentialFailure;

  List<String> get possibleAuthMethods;
  $AccountExistsWithDifferentCredentialFailureCopyWith<
      AccountExistsWithDifferentCredentialFailure> get copyWith;
}
