// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:smarty_duelist/src/injector/injector.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:smarty_duelist/src/data/data_providers/file_storage.dart';
import 'package:smarty_duelist/src/domain/api/file_storage/data_providers.dart';
import 'package:smarty_duelist/src/data/data_providers/image/image_editor.dart';
import 'package:smarty_duelist/src/domain/api/image/data_providers.dart';
import 'package:smarty_duelist/src/data/data_providers/image/image_picker.dart';
import 'package:smarty_duelist/src/data/repositories/image.dart';
import 'package:smarty_duelist/src/domain/api/image/repositories.dart';
import 'package:smarty_duelist/src/data/data_providers/user.dart';
import 'package:smarty_duelist/src/domain/user/data_providers.dart';
import 'package:smarty_duelist/src/data/repositories/user.dart';
import 'package:smarty_duelist/src/domain/user/repositories.dart';
import 'package:smarty_duelist/src/presentation/pages/image_editor_modal/blocs/image_editor/image_editor_bloc.dart';
import 'package:smarty_duelist/src/presentation/core_blocs/image_picker/image_picker_bloc.dart';
import 'package:smarty_duelist/src/presentation/pages/main_bottom_tabs_page/blocs/main_bottom_tabs/main_bottom_tabs_bloc.dart';
import 'package:smarty_duelist/src/presentation/core_blocs/preferences/preferences_bloc.dart';
import 'package:smarty_duelist/src/data/data_providers/auth/google_auth.dart';
import 'package:smarty_duelist/src/data/data_providers/auth/firabase_auth.dart';
import 'package:smarty_duelist/src/domain/auth/data_providers.dart';
import 'package:smarty_duelist/src/data/repositories/auth.dart';
import 'package:smarty_duelist/src/domain/auth/repositories.dart';
import 'package:smarty_duelist/src/data/repositories/file_storage.dart';
import 'package:smarty_duelist/src/domain/api/file_storage/repositories.dart';
import 'package:smarty_duelist/src/presentation/pages/profile_tab/blocs/profile_tab/profile_tab_bloc.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_in_page/blocs/sign_in/sign_in_bloc.dart';
import 'package:smarty_duelist/src/presentation/pages/profile_tab/blocs/sign_out/sign_out_bloc.dart';
import 'package:smarty_duelist/src/presentation/pages/sign_up_page/blocs/sign_up/sign_up_bloc.dart';
import 'package:smarty_duelist/src/presentation/core_blocs/auth/auth_bloc.dart';
import 'package:smarty_duelist/src/presentation/pages/forgot_password_page/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final registerModule = _$RegisterModule();
  g.registerLazySingleton<FirebaseStorage>(() => registerModule.storage);
  g.registerLazySingleton<GoogleSignIn>(() => registerModule.googleSignIn);
  g.registerLazySingleton<IImageEditorDataProvider>(
      () => ImageEditorDataProvider());
  g.registerLazySingleton<IImagePickerDataProvider>(
      () => ImagePickerDataProvider());
  g.registerFactory<ImageEditorBloc>(
      () => ImageEditorBloc(imageRepository: g<IImageRepository>()));
  g.registerFactory<ImagePickerBloc>(
      () => ImagePickerBloc(imageRepository: g<IImageRepository>()));
  g.registerFactory<MainBottomTabsBloc>(() => MainBottomTabsBloc());
  g.registerFactory<PreferencesBloc>(() => PreferencesBloc());
  g.registerLazySingleton<GoogleAuth>(
      () => GoogleAuth(googleSignIn: g<GoogleSignIn>()));
  g.registerFactory<ProfileTabBloc>(() => ProfileTabBloc(
        userRepository: g<IUserRepository>(),
        fileStorageRepository: g<IFileStorageRepository>(),
        imagePickerBloc: g<ImagePickerBloc>(),
      ));
  g.registerFactory<SignInBloc>(
      () => SignInBloc(authRepository: g<IAuthRepository>()));
  g.registerFactory<SignOutBloc>(
      () => SignOutBloc(authRepository: g<IAuthRepository>()));
  g.registerFactory<SignUpBloc>(
      () => SignUpBloc(authRepository: g<IAuthRepository>()));
  g.registerFactory<AuthBloc>(
      () => AuthBloc(authRepository: g<IAuthRepository>()));
  g.registerFactory<ForgotPasswordBloc>(
      () => ForgotPasswordBloc(authRepository: g<IAuthRepository>()));

  //Eager singletons must be registered in the right order
  g.registerSingleton<FirebaseAuth>(registerModule.auth);
  g.registerSingleton<IFileStorageDataProvider>(
      FirebaseStorageDataProvider(storage: g<FirebaseStorage>()));
  g.registerSingleton<IImageRepository>(ImageRepository(
      imagePickerDataProvider: g<IImagePickerDataProvider>(),
      imageEditorDataProvider: g<IImageEditorDataProvider>()));
  g.registerSingleton<IUserDataProvider>(
      UserDataProvider(auth: g<FirebaseAuth>()));
  g.registerSingleton<IUserRepository>(
      UserRepository(userDataProvider: g<IUserDataProvider>()));
  g.registerSingleton<IAuthDataProvider>(FirebaseAuthProvider(
      googleAuth: g<GoogleAuth>(), auth: g<FirebaseAuth>()));
  g.registerSingleton<IAuthRepository>(
      AuthRepository(authDataProvider: g<IAuthDataProvider>()));
  g.registerSingleton<IFileStorageRepository>(FileStorageRepository(
      fileStorageDataProvider: g<IFileStorageDataProvider>(),
      userDataProvider: g<IUserDataProvider>()));
}

class _$RegisterModule extends RegisterModule {}
