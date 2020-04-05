// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'main_bottom_tabs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MainBottomTabsStateTearOff {
  const _$MainBottomTabsStateTearOff();

  _MainBottomTabsState call(MainBottomTabs currentTab) {
    return _MainBottomTabsState(
      currentTab,
    );
  }
}

// ignore: unused_element
const $MainBottomTabsState = _$MainBottomTabsStateTearOff();

mixin _$MainBottomTabsState {
  MainBottomTabs get currentTab;

  $MainBottomTabsStateCopyWith<MainBottomTabsState> get copyWith;
}

abstract class $MainBottomTabsStateCopyWith<$Res> {
  factory $MainBottomTabsStateCopyWith(
          MainBottomTabsState value, $Res Function(MainBottomTabsState) then) =
      _$MainBottomTabsStateCopyWithImpl<$Res>;
  $Res call({MainBottomTabs currentTab});
}

class _$MainBottomTabsStateCopyWithImpl<$Res>
    implements $MainBottomTabsStateCopyWith<$Res> {
  _$MainBottomTabsStateCopyWithImpl(this._value, this._then);

  final MainBottomTabsState _value;
  // ignore: unused_field
  final $Res Function(MainBottomTabsState) _then;

  @override
  $Res call({
    Object currentTab = freezed,
  }) {
    return _then(_value.copyWith(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab as MainBottomTabs,
    ));
  }
}

abstract class _$MainBottomTabsStateCopyWith<$Res>
    implements $MainBottomTabsStateCopyWith<$Res> {
  factory _$MainBottomTabsStateCopyWith(_MainBottomTabsState value,
          $Res Function(_MainBottomTabsState) then) =
      __$MainBottomTabsStateCopyWithImpl<$Res>;
  @override
  $Res call({MainBottomTabs currentTab});
}

class __$MainBottomTabsStateCopyWithImpl<$Res>
    extends _$MainBottomTabsStateCopyWithImpl<$Res>
    implements _$MainBottomTabsStateCopyWith<$Res> {
  __$MainBottomTabsStateCopyWithImpl(
      _MainBottomTabsState _value, $Res Function(_MainBottomTabsState) _then)
      : super(_value, (v) => _then(v as _MainBottomTabsState));

  @override
  _MainBottomTabsState get _value => super._value as _MainBottomTabsState;

  @override
  $Res call({
    Object currentTab = freezed,
  }) {
    return _then(_MainBottomTabsState(
      currentTab == freezed ? _value.currentTab : currentTab as MainBottomTabs,
    ));
  }
}

class _$_MainBottomTabsState
    with DiagnosticableTreeMixin
    implements _MainBottomTabsState {
  const _$_MainBottomTabsState(this.currentTab) : assert(currentTab != null);

  @override
  final MainBottomTabs currentTab;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainBottomTabsState(currentTab: $currentTab)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainBottomTabsState'))
      ..add(DiagnosticsProperty('currentTab', currentTab));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainBottomTabsState &&
            (identical(other.currentTab, currentTab) ||
                const DeepCollectionEquality()
                    .equals(other.currentTab, currentTab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentTab);

  @override
  _$MainBottomTabsStateCopyWith<_MainBottomTabsState> get copyWith =>
      __$MainBottomTabsStateCopyWithImpl<_MainBottomTabsState>(
          this, _$identity);
}

abstract class _MainBottomTabsState implements MainBottomTabsState {
  const factory _MainBottomTabsState(MainBottomTabs currentTab) =
      _$_MainBottomTabsState;

  @override
  MainBottomTabs get currentTab;
  @override
  _$MainBottomTabsStateCopyWith<_MainBottomTabsState> get copyWith;
}
