// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'upload_task_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UploadTaskEventTearOff {
  const _$UploadTaskEventTearOff();

  _UploadTaskEvent call(
      {UploadTaskEventType type, int bytesTransferred, int totalByteCount}) {
    return _UploadTaskEvent(
      type: type,
      bytesTransferred: bytesTransferred,
      totalByteCount: totalByteCount,
    );
  }
}

// ignore: unused_element
const $UploadTaskEvent = _$UploadTaskEventTearOff();

mixin _$UploadTaskEvent {
  UploadTaskEventType get type;
  int get bytesTransferred;
  int get totalByteCount;

  $UploadTaskEventCopyWith<UploadTaskEvent> get copyWith;
}

abstract class $UploadTaskEventCopyWith<$Res> {
  factory $UploadTaskEventCopyWith(
          UploadTaskEvent value, $Res Function(UploadTaskEvent) then) =
      _$UploadTaskEventCopyWithImpl<$Res>;
  $Res call(
      {UploadTaskEventType type, int bytesTransferred, int totalByteCount});
}

class _$UploadTaskEventCopyWithImpl<$Res>
    implements $UploadTaskEventCopyWith<$Res> {
  _$UploadTaskEventCopyWithImpl(this._value, this._then);

  final UploadTaskEvent _value;
  // ignore: unused_field
  final $Res Function(UploadTaskEvent) _then;

  @override
  $Res call({
    Object type = freezed,
    Object bytesTransferred = freezed,
    Object totalByteCount = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as UploadTaskEventType,
      bytesTransferred: bytesTransferred == freezed
          ? _value.bytesTransferred
          : bytesTransferred as int,
      totalByteCount: totalByteCount == freezed
          ? _value.totalByteCount
          : totalByteCount as int,
    ));
  }
}

abstract class _$UploadTaskEventCopyWith<$Res>
    implements $UploadTaskEventCopyWith<$Res> {
  factory _$UploadTaskEventCopyWith(
          _UploadTaskEvent value, $Res Function(_UploadTaskEvent) then) =
      __$UploadTaskEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {UploadTaskEventType type, int bytesTransferred, int totalByteCount});
}

class __$UploadTaskEventCopyWithImpl<$Res>
    extends _$UploadTaskEventCopyWithImpl<$Res>
    implements _$UploadTaskEventCopyWith<$Res> {
  __$UploadTaskEventCopyWithImpl(
      _UploadTaskEvent _value, $Res Function(_UploadTaskEvent) _then)
      : super(_value, (v) => _then(v as _UploadTaskEvent));

  @override
  _UploadTaskEvent get _value => super._value as _UploadTaskEvent;

  @override
  $Res call({
    Object type = freezed,
    Object bytesTransferred = freezed,
    Object totalByteCount = freezed,
  }) {
    return _then(_UploadTaskEvent(
      type: type == freezed ? _value.type : type as UploadTaskEventType,
      bytesTransferred: bytesTransferred == freezed
          ? _value.bytesTransferred
          : bytesTransferred as int,
      totalByteCount: totalByteCount == freezed
          ? _value.totalByteCount
          : totalByteCount as int,
    ));
  }
}

class _$_UploadTaskEvent extends _UploadTaskEvent with DiagnosticableTreeMixin {
  _$_UploadTaskEvent({this.type, this.bytesTransferred, this.totalByteCount})
      : super._();

  @override
  final UploadTaskEventType type;
  @override
  final int bytesTransferred;
  @override
  final int totalByteCount;

  bool _didpercent = false;
  String _percent;

  @override
  String get percent {
    if (_didpercent == false) {
      _didpercent = true;
      _percent = (bytesTransferred / totalByteCount).toStringAsFixed(2);
    }
    return _percent;
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UploadTaskEvent(type: $type, bytesTransferred: $bytesTransferred, totalByteCount: $totalByteCount, percent: $percent)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UploadTaskEvent'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('bytesTransferred', bytesTransferred))
      ..add(DiagnosticsProperty('totalByteCount', totalByteCount))
      ..add(DiagnosticsProperty('percent', percent));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadTaskEvent &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.bytesTransferred, bytesTransferred) ||
                const DeepCollectionEquality()
                    .equals(other.bytesTransferred, bytesTransferred)) &&
            (identical(other.totalByteCount, totalByteCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalByteCount, totalByteCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(bytesTransferred) ^
      const DeepCollectionEquality().hash(totalByteCount);

  @override
  _$UploadTaskEventCopyWith<_UploadTaskEvent> get copyWith =>
      __$UploadTaskEventCopyWithImpl<_UploadTaskEvent>(this, _$identity);
}

abstract class _UploadTaskEvent extends UploadTaskEvent {
  _UploadTaskEvent._() : super._();
  factory _UploadTaskEvent(
      {UploadTaskEventType type,
      int bytesTransferred,
      int totalByteCount}) = _$_UploadTaskEvent;

  @override
  UploadTaskEventType get type;
  @override
  int get bytesTransferred;
  @override
  int get totalByteCount;
  @override
  _$UploadTaskEventCopyWith<_UploadTaskEvent> get copyWith;
}
