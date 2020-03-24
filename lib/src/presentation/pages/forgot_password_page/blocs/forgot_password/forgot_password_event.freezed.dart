// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$ForgotPasswordEvent {}

class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  ForgotPassword call() {
    return const ForgotPassword();
  }
}

const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

class _$ForgotPassword with DiagnosticableTreeMixin implements ForgotPassword {
  const _$ForgotPassword();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ForgotPasswordEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ForgotPasswordEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class ForgotPassword implements ForgotPasswordEvent {
  const factory ForgotPassword() = _$ForgotPassword;
}
