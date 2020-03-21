// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SignUpEvent {}

class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  SignUp call() {
    return const SignUp();
  }
}

const $SignUpEvent = _$SignUpEventTearOff();

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
