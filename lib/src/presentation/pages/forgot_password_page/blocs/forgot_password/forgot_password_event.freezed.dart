// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'forgot_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  ForgotPassword call() {
    return const ForgotPassword();
  }
}

// ignore: unused_element
const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

mixin _$ForgotPasswordEvent {}

abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

abstract class $ForgotPasswordCopyWith<$Res> {
  factory $ForgotPasswordCopyWith(
          ForgotPassword value, $Res Function(ForgotPassword) then) =
      _$ForgotPasswordCopyWithImpl<$Res>;
}

class _$ForgotPasswordCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordCopyWith<$Res> {
  _$ForgotPasswordCopyWithImpl(
      ForgotPassword _value, $Res Function(ForgotPassword) _then)
      : super(_value, (v) => _then(v as ForgotPassword));

  @override
  ForgotPassword get _value => super._value as ForgotPassword;
}

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
