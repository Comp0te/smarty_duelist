import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart' show S;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import 'auth_bloc_listener.dart';
import '../theme/theme.dart'
    show darkMaterialTheme, getCupertinoThemeData, lightMaterialTheme;
import '../core_blocs/core_blocs.dart';
import '../routes/routes.dart' show AuthGuard, CupertinoRouter, MaterialRouter;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(const AppStarted()),
        ),
        BlocProvider<PreferencesBloc>(
          create: (_) => getIt<PreferencesBloc>(),
        ),
      ],
      child: AuthBlocListener(
        child: BlocBuilder<PreferencesBloc, PreferencesState>(
          builder: (context, prefs) => PlatformApp(
            locale: prefs.locale,
            localizationsDelegates: [S.delegate],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            ios: (_) => CupertinoAppData(
              theme: getCupertinoThemeData(prefs.brightness),
              builder: ExtendedNavigator<CupertinoRouter>(
                router: CupertinoRouter(),
                guards: [AuthGuard()],
              ),
            ),
            android: (_) => MaterialAppData(
              builder: ExtendedNavigator<MaterialRouter>(
                router: MaterialRouter(),
                guards: [AuthGuard()],
              ),
              theme: lightMaterialTheme,
              darkTheme: darkMaterialTheme,
              themeMode: prefs.themeMode,
            ),
          ),
        ),
      ),
    );
  }
}
