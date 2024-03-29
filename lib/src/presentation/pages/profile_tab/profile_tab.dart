import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:smarty_duelist/generated/l10n.dart' show S;
import 'package:smarty_duelist/src/injector/injector.dart';
import 'package:smarty_duelist/src/presentation/core_blocs/core_blocs.dart';
import 'package:smarty_duelist/src/presentation/routes/routes.dart';

import '../../theme/theme.dart';
import '../../localisation/localisation.dart';
import '../../shared_widgets/shared_widgets.dart'
    show
        Avatar,
        Button,
        LanguageButton,
        NativeScaffold,
        ThemeButton,
        showImageActions;
import 'blocs/blocs.dart';

export 'blocs/blocs.dart';

class ProfileTab extends StatelessWidget implements AutoRouteWrapper {
  const ProfileTab();

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<ProfileTabBloc>(
            create: (_) => getIt<ProfileTabBloc>(),
          ),
          BlocProvider<SignOutBloc>(
            create: (_) => getIt<SignOutBloc>(),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    final profileTabBloc = BlocProvider.of<ProfileTabBloc>(context);
    final url = BlocProvider.of<AuthBloc>(context).state.maybeWhen(
          authAuthenticated: (user) => user.photoUrl,
          orElse: () => null,
        );

    return NativeScaffold(
      title: Text(MainBottomTabs.profile.getLabel(context)),
      trailingActions: const <Widget>[
        LanguageButton(),
        ThemeButton(),
      ],
      body: Center(
        child: SingleChildScrollView(
          padding: context.defaultPaddingHorizontal,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: BlocBuilder<ProfileTabBloc, ProfileTabState>(
                  condition: (prev, cur) => prev.avatar != cur.avatar,
                  builder: (context, state) => Avatar(
                    size: 150,
                    url: url,
                    imageData: state.avatar,
                    onTap: () {
                      showImageActions(
                        context,
                        profileTabBloc.imagePickerBloc,
                        url: url,
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Button(
                  title: S.of(context).logout,
                  onPress: () {
                    BlocProvider.of<SignOutBloc>(context).add(const SignOut());
                  },
                ),
              ),
              BlocBuilder<ProfileTabBloc, ProfileTabState>(
                builder: (context, state) => Button(
                  isLoading: state.loading ?? false,
                  title: S.of(context).submit,
                  onPress: () {
                    BlocProvider.of<ProfileTabBloc>(context)
                        .add(const Submit());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
