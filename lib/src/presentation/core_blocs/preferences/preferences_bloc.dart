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
      themeChanged: (event) async* {
        yield state.copyWith.call(themeMode: event.themeMode);
      },
      languageChanged: (event) async* {
        yield state.copyWith.call(language: event.language);
      },
    );
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
