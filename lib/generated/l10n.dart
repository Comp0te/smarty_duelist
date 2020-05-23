// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  String get errorLoading {
    return Intl.message(
      'Loading error',
      name: 'errorLoading',
      desc: '',
      args: [],
    );
  }

  String get errorRequired {
    return Intl.message(
      'Required',
      name: 'errorRequired',
      desc: '',
      args: [],
    );
  }

  String errorMinLength(Object digit) {
    return Intl.message(
      'Min $digit characters',
      name: 'errorMinLength',
      desc: '',
      args: [digit],
    );
  }

  String get errorEmailIncorrect {
    return Intl.message(
      'Incorrect email address',
      name: 'errorEmailIncorrect',
      desc: '',
      args: [],
    );
  }

  String get errorEmailMalformed {
    return Intl.message(
      'Email address is malformed',
      name: 'errorEmailMalformed',
      desc: '',
      args: [],
    );
  }

  String get errorWrongEmailOrPassword {
    return Intl.message(
      'Email or password is wrong',
      name: 'errorWrongEmailOrPassword',
      desc: '',
      args: [],
    );
  }

  String get errorUserDisabled {
    return Intl.message(
      'User disabled',
      name: 'errorUserDisabled',
      desc: '',
      args: [],
    );
  }

  String get errorToManySignIn {
    return Intl.message(
      'You made too many attempts to sign in',
      name: 'errorToManySignIn',
      desc: '',
      args: [],
    );
  }

  String get errorGoogleAuth {
    return Intl.message(
      'Something went wrong during authentication via Google',
      name: 'errorGoogleAuth',
      desc: '',
      args: [],
    );
  }

  String get errorCredentialMalformed {
    return Intl.message(
      'Credential data is malformed or has expired',
      name: 'errorCredentialMalformed',
      desc: '',
      args: [],
    );
  }

  String get errorUnexpected {
    return Intl.message(
      'Something went wrong. We are sorry.',
      name: 'errorUnexpected',
      desc: '',
      args: [],
    );
  }

  String get errorSignInCanceled {
    return Intl.message(
      'Sign in process was aborted',
      name: 'errorSignInCanceled',
      desc: '',
      args: [],
    );
  }

  String get errorWeakPassword {
    return Intl.message(
      'The password is not strong enough',
      name: 'errorWeakPassword',
      desc: '',
      args: [],
    );
  }

  String get errorEmailAlreadyInUse {
    return Intl.message(
      'The email is already in use by a different account.',
      name: 'errorEmailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  String get errorUserNotFound {
    return Intl.message(
      'There is no user corresponding to the given email address.',
      name: 'errorUserNotFound',
      desc: '',
      args: [],
    );
  }

  String get errorPasswordsDoNotMatch {
    return Intl.message(
      'Passwords don\'t match',
      name: 'errorPasswordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  String get errorImageEditor {
    return Intl.message(
      'Something went wrong with image editor. Try another image',
      name: 'errorImageEditor',
      desc: '',
      args: [],
    );
  }

  String get signInTitle {
    return Intl.message(
      'Greetings!',
      name: 'signInTitle',
      desc: '',
      args: [],
    );
  }

  String get singInEmail {
    return Intl.message(
      'Sign in with Email',
      name: 'singInEmail',
      desc: '',
      args: [],
    );
  }

  String signInProvider(Object provider) {
    return Intl.message(
      'Sign in with $provider',
      name: 'signInProvider',
      desc: '',
      args: [provider],
    );
  }

  String get signInCreateAccount {
    return Intl.message(
      'Create an account',
      name: 'signInCreateAccount',
      desc: '',
      args: [],
    );
  }

  String get signInNotRegisteredYet {
    return Intl.message(
      'Not registered yet?',
      name: 'signInNotRegisteredYet',
      desc: '',
      args: [],
    );
  }

  String get signInForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'signInForgotPassword',
      desc: '',
      args: [],
    );
  }

  String signAccountExistsWithDifferentCredential(Object methods) {
    return Intl.message(
      'You have already created an account for this email. Try logging in with: $methods',
      name: 'signAccountExistsWithDifferentCredential',
      desc: '',
      args: [methods],
    );
  }

  String get signUpTitle {
    return Intl.message(
      'Registration',
      name: 'signUpTitle',
      desc: '',
      args: [],
    );
  }

  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  String get forgotPasswordSuccess {
    return Intl.message(
      'We sent the password reset instructions to your email. Change password and login',
      name: 'forgotPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  String get imageEditorTitle {
    return Intl.message(
      'Image editor',
      name: 'imageEditorTitle',
      desc: '',
      args: [],
    );
  }

  String get bottomSheetSelectLanguage {
    return Intl.message(
      'Select Language',
      name: 'bottomSheetSelectLanguage',
      desc: '',
      args: [],
    );
  }

  String get bottomSheetSelectTheme {
    return Intl.message(
      'Select Theme',
      name: 'bottomSheetSelectTheme',
      desc: '',
      args: [],
    );
  }

  String get bottomSheetAvatarTitle {
    return Intl.message(
      'Avatar actions',
      name: 'bottomSheetAvatarTitle',
      desc: '',
      args: [],
    );
  }

  String get languageEnglish {
    return Intl.message(
      'English',
      name: 'languageEnglish',
      desc: '',
      args: [],
    );
  }

  String get languageRussian {
    return Intl.message(
      'Русский',
      name: 'languageRussian',
      desc: '',
      args: [],
    );
  }

  String get languageUkrainian {
    return Intl.message(
      'Українська',
      name: 'languageUkrainian',
      desc: '',
      args: [],
    );
  }

  String get themeLight {
    return Intl.message(
      'Light',
      name: 'themeLight',
      desc: '',
      args: [],
    );
  }

  String get themeDark {
    return Intl.message(
      'Dark',
      name: 'themeDark',
      desc: '',
      args: [],
    );
  }

  String get themeSystem {
    return Intl.message(
      'Inherit from system',
      name: 'themeSystem',
      desc: '',
      args: [],
    );
  }

  String get bottomTabHome {
    return Intl.message(
      'Home',
      name: 'bottomTabHome',
      desc: '',
      args: [],
    );
  }

  String get bottomTabMessages {
    return Intl.message(
      'Messages',
      name: 'bottomTabMessages',
      desc: '',
      args: [],
    );
  }

  String get bottomTabGame {
    return Intl.message(
      'Game',
      name: 'bottomTabGame',
      desc: '',
      args: [],
    );
  }

  String get bottomTabShop {
    return Intl.message(
      'Shop',
      name: 'bottomTabShop',
      desc: '',
      args: [],
    );
  }

  String get bottomTabProfile {
    return Intl.message(
      'Profile',
      name: 'bottomTabProfile',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}