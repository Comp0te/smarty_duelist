// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signedIn(@required FirebaseUser user),
    @required Result signedOut(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signedIn(@required FirebaseUser user),
    Result signedOut(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  });
}

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AppStarted appStarted() {
    return const AppStarted();
  }

  SignedIn signedIn({@required FirebaseUser user}) {
    return SignedIn(
      user: user,
    );
  }

  SignedOut signedOut() {
    return const SignedOut();
  }
}

const $AuthEvent = _$AuthEventTearOff();

class _$AppStarted with DiagnosticableTreeMixin implements AppStarted {
  const _$AppStarted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.appStarted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.appStarted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AppStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signedIn(@required FirebaseUser user),
    @required Result signedOut(),
  }) {
    assert(appStarted != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return appStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signedIn(@required FirebaseUser user),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(appStarted != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return appStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (appStarted != null) {
      return appStarted(this);
    }
    return orElse();
  }
}

abstract class AppStarted implements AuthEvent {
  const factory AppStarted() = _$AppStarted;
}

class _$SignedIn with DiagnosticableTreeMixin implements SignedIn {
  const _$SignedIn({@required this.user}) : assert(user != null);

  @override
  final FirebaseUser user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedIn(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.signedIn'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedIn &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$SignedIn copyWith({
    Object user = freezed,
  }) {
    return _$SignedIn(
      user: user == freezed ? this.user : user as FirebaseUser,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signedIn(@required FirebaseUser user),
    @required Result signedOut(),
  }) {
    assert(appStarted != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedIn(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signedIn(@required FirebaseUser user),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(appStarted != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements AuthEvent {
  const factory SignedIn({@required FirebaseUser user}) = _$SignedIn;

  FirebaseUser get user;

  SignedIn copyWith({FirebaseUser user});
}

class _$SignedOut with DiagnosticableTreeMixin implements SignedOut {
  const _$SignedOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AuthEvent.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signedIn(@required FirebaseUser user),
    @required Result signedOut(),
  }) {
    assert(appStarted != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signedIn(@required FirebaseUser user),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result appStarted(AppStarted value),
    @required Result signedIn(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(appStarted != null);
    assert(signedIn != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result appStarted(AppStarted value),
    Result signedIn(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}
