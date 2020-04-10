// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AppStarted appStarted() {
    return const AppStarted();
  }

  SignedIn signedIn(User user) {
    return SignedIn(
      user,
    );
  }

  SignedOut signedOut() {
    return const SignedOut();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signedIn(User user),
    @required Result signedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result appStarted(),
    Result signedIn(User user),
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

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $AppStartedCopyWith<$Res> {
  factory $AppStartedCopyWith(
          AppStarted value, $Res Function(AppStarted) then) =
      _$AppStartedCopyWithImpl<$Res>;
}

class _$AppStartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AppStartedCopyWith<$Res> {
  _$AppStartedCopyWithImpl(AppStarted _value, $Res Function(AppStarted) _then)
      : super(_value, (v) => _then(v as AppStarted));

  @override
  AppStarted get _value => super._value as AppStarted;
}

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
    @required Result signedIn(User user),
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
    Result signedIn(User user),
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

abstract class $SignedInCopyWith<$Res> {
  factory $SignedInCopyWith(SignedIn value, $Res Function(SignedIn) then) =
      _$SignedInCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$SignedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedInCopyWith<$Res> {
  _$SignedInCopyWithImpl(SignedIn _value, $Res Function(SignedIn) _then)
      : super(_value, (v) => _then(v as SignedIn));

  @override
  SignedIn get _value => super._value as SignedIn;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(SignedIn(
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

class _$SignedIn with DiagnosticableTreeMixin implements SignedIn {
  const _$SignedIn(this.user) : assert(user != null);

  @override
  final User user;

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
  $SignedInCopyWith<SignedIn> get copyWith =>
      _$SignedInCopyWithImpl<SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result appStarted(),
    @required Result signedIn(User user),
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
    Result signedIn(User user),
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
  const factory SignedIn(User user) = _$SignedIn;

  User get user;
  $SignedInCopyWith<SignedIn> get copyWith;
}

abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
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
    @required Result signedIn(User user),
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
    Result signedIn(User user),
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
