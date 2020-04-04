// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'main_bottom_tabs_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MainBottomTabsEventTearOff {
  const _$MainBottomTabsEventTearOff();

  NavigateToTab navigateToTab(MainBottomTabs tab) {
    return NavigateToTab(
      tab,
    );
  }
}

// ignore: unused_element
const $MainBottomTabsEvent = _$MainBottomTabsEventTearOff();

mixin _$MainBottomTabsEvent {
  MainBottomTabs get tab;

  $MainBottomTabsEventCopyWith<MainBottomTabsEvent> get copyWith;
}

abstract class $MainBottomTabsEventCopyWith<$Res> {
  factory $MainBottomTabsEventCopyWith(
          MainBottomTabsEvent value, $Res Function(MainBottomTabsEvent) then) =
      _$MainBottomTabsEventCopyWithImpl<$Res>;
  $Res call({MainBottomTabs tab});
}

class _$MainBottomTabsEventCopyWithImpl<$Res>
    implements $MainBottomTabsEventCopyWith<$Res> {
  _$MainBottomTabsEventCopyWithImpl(this._value, this._then);

  final MainBottomTabsEvent _value;
  // ignore: unused_field
  final $Res Function(MainBottomTabsEvent) _then;

  @override
  $Res call({
    Object tab = freezed,
  }) {
    return _then(_value.copyWith(
      tab: tab == freezed ? _value.tab : tab as MainBottomTabs,
    ));
  }
}

abstract class $NavigateToTabCopyWith<$Res>
    implements $MainBottomTabsEventCopyWith<$Res> {
  factory $NavigateToTabCopyWith(
          NavigateToTab value, $Res Function(NavigateToTab) then) =
      _$NavigateToTabCopyWithImpl<$Res>;
  @override
  $Res call({MainBottomTabs tab});
}

class _$NavigateToTabCopyWithImpl<$Res>
    extends _$MainBottomTabsEventCopyWithImpl<$Res>
    implements $NavigateToTabCopyWith<$Res> {
  _$NavigateToTabCopyWithImpl(
      NavigateToTab _value, $Res Function(NavigateToTab) _then)
      : super(_value, (v) => _then(v as NavigateToTab));

  @override
  NavigateToTab get _value => super._value as NavigateToTab;

  @override
  $Res call({
    Object tab = freezed,
  }) {
    return _then(NavigateToTab(
      tab == freezed ? _value.tab : tab as MainBottomTabs,
    ));
  }
}

class _$NavigateToTab with DiagnosticableTreeMixin implements NavigateToTab {
  const _$NavigateToTab(this.tab) : assert(tab != null);

  @override
  final MainBottomTabs tab;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainBottomTabsEvent.navigateToTab(tab: $tab)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainBottomTabsEvent.navigateToTab'))
      ..add(DiagnosticsProperty('tab', tab));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigateToTab &&
            (identical(other.tab, tab) ||
                const DeepCollectionEquality().equals(other.tab, tab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tab);

  @override
  $NavigateToTabCopyWith<NavigateToTab> get copyWith =>
      _$NavigateToTabCopyWithImpl<NavigateToTab>(this, _$identity);
}

abstract class NavigateToTab implements MainBottomTabsEvent {
  const factory NavigateToTab(MainBottomTabs tab) = _$NavigateToTab;

  @override
  MainBottomTabs get tab;
  @override
  $NavigateToTabCopyWith<NavigateToTab> get copyWith;
}
