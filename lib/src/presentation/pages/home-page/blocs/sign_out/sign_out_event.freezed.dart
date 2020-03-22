// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_out_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$SignOutEvent {}

class _$SignOutEventTearOff {
  const _$SignOutEventTearOff();

  SignOut call() {
    return const SignOut();
  }
}

const $SignOutEvent = _$SignOutEventTearOff();

class _$SignOut with DiagnosticableTreeMixin implements SignOut {
  const _$SignOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignOutEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SignOutEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SignOut implements SignOutEvent {
  const factory SignOut() = _$SignOut;
}
