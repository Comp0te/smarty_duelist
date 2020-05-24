import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:smarty_duelist/generated/l10n.dart' show S;
import 'package:smarty_duelist/src/injector/injector.dart' show getIt;

import 'auth_bloc_listener.dart';
import '../theme/theme.dart'
    show darkMaterialTheme, getCupertinoThemeData, lightMaterialTheme;
import '../core_blocs/core_blocs.dart';
import '../routes/routes.dart' show AuthGuard, MainRouter;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>(),
        ),
        BlocProvider<PreferencesBloc>(
          create: (_) => getIt<PreferencesBloc>(),
        ),
      ],
      child: AuthBlocListener(
        child: BlocBuilder<PreferencesBloc, PreferencesState>(
          builder: (context, prefs) => PlatformApp(
            locale: prefs.locale,
            localizationsDelegates: [
              S.delegate,
              DefaultMaterialLocalizations.delegate,
              DefaultCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            builder: ExtendedNavigator<MainRouter>(
              router: MainRouter(),
              guards: [AuthGuard()],
            ),
            cupertino: (_, __) => CupertinoAppData(
              theme: getCupertinoThemeData(prefs.brightness),
            ),
            material: (_, __) => MaterialAppData(
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
