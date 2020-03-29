import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import 'bloc.dart';

@injectable
class PreferencesBloc extends HydratedBloc<PreferencesEvent, PreferencesState> {
  @override
  PreferencesState get initialState {
    return super.initialState ?? const PreferencesState();
  }

  @override
  Stream<PreferencesState> mapEventToState(PreferencesEvent event) async* {
    yield* event.map(
      themeChanged: (event) => _mapSignedOutToState(event),
      languageChanged: (event) => _mapSignedInToState(event),
    );
  }

  Stream<PreferencesState> _mapSignedInToState(LanguageChanged event) async* {
    yield state.copyWith.call(language: event.language);
  }

  Stream<PreferencesState> _mapSignedOutToState(ThemeChanged event) async* {
    yield state.copyWith.call(themeMode: event.themeMode);
  }

  @override
  PreferencesState fromJson(Map<String, dynamic> json) {
    try {
      return PreferencesState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(PreferencesState state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }
}
