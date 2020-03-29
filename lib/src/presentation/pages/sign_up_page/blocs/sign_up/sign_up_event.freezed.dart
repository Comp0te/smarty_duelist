// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  SignUp call() {
    return const SignUp();
  }
}

// ignore: unused_element
const $SignUpEvent = _$SignUpEventTearOff();

mixin _$SignUpEvent {}

abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

abstract class $SignUpCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) then) =
      _$SignUpCopyWithImpl<$Res>;
}

class _$SignUpCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(SignUp _value, $Res Function(SignUp) _then)
      : super(_value, (v) => _then(v as SignUp));

  @override
  SignUp get _value => super._value as SignUp;
}

class _$SignUp with DiagnosticableTreeMixin implements SignUp {
  const _$SignUp();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignUpEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignUp implements SignUpEvent {
  const factory SignUp() = _$SignUp;
}
