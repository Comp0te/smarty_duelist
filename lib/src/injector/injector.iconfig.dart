// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:smarty_duelist/src/injector/injector.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smarty_duelist/src/data/data_providers/auth.dart';
import 'package:smarty_duelist/src/domain/auth/data_providers.dart';
import 'package:smarty_duelist/src/data/repositories/auth.dart';
import 'package:smarty_duelist/src/domain/auth/repositories.dart';
import 'package:smarty_duelist/src/presentation/core_blocs/auth/auth_bloc.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_in_page/blocs/sign_in/sign_in_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerFactory<FirebaseAuth>(() => registerModule.auth);
  g.registerFactory<GoogleSignIn>(() => registerModule.googleSignIn);
  g.registerFactory<AuthBloc>(
      () => AuthBloc(authRepository: g<IAuthRepository>()));
  g.registerFactory<SignInBloc>(
      () => SignInBloc(authRepository: g<IAuthRepository>()));

  //Eager singletons must be registered in the right order
  g.registerSingleton<IAuthDataProvider>(AuthDataProvider(
      googleSignIn: g<GoogleSignIn>(), auth: g<FirebaseAuth>()));
  g.registerSingleton<IAuthRepository>(
      AuthRepository(authDataProvider: g<IAuthDataProvider>()));
}

class _$RegisterModule extends RegisterModule {}
