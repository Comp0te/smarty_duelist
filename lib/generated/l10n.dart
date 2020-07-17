// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Loading error`
  String get errorLoading {
    return Intl.message(
      'Loading error',
      name: 'errorLoading',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get errorRequired {
    return Intl.message(
      'Required',
      name: 'errorRequired',
      desc: '',
      args: [],
    );
  }

  /// `Min {digit} characters`
  String errorMinLength(Object digit) {
    return Intl.message(
      'Min $digit characters',
      name: 'errorMinLength',
      desc: '',
      args: [digit],
    );
  }

  /// `Incorrect email address`
  String get errorEmailIncorrect {
    return Intl.message(
      'Incorrect email address',
      name: 'errorEmailIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Email address is malformed`
  String get errorEmailMalformed {
    return Intl.message(
      'Email address is malformed',
      name: 'errorEmailMalformed',
      desc: '',
      args: [],
    );
  }

  /// `Email or password is wrong`
  String get errorWrongEmailOrPassword {
    return Intl.message(
      'Email or password is wrong',
      name: 'errorWrongEmailOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `User disabled`
  String get errorUserDisabled {
    return Intl.message(
      'User disabled',
      name: 'errorUserDisabled',
      desc: '',
      args: [],
    );
  }

  /// `You made too many attempts to sign in`
  String get errorToManySignIn {
    return Intl.message(
      'You made too many attempts to sign in',
      name: 'errorToManySignIn',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong during authentication via Google`
  String get errorGoogleAuth {
    return Intl.message(
      'Something went wrong during authentication via Google',
      name: 'errorGoogleAuth',
      desc: '',
      args: [],
    );
  }

  /// `Credential data is malformed or has expired`
  String get errorCredentialMalformed {
    return Intl.message(
      'Credential data is malformed or has expired',
      name: 'errorCredentialMalformed',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong. We are sorry.`
  String get errorUnexpected {
    return Intl.message(
      'Something went wrong. We are sorry.',
      name: 'errorUnexpected',
      desc: '',
      args: [],
    );
  }

  /// `Sign in process was aborted`
  String get errorSignInCanceled {
    return Intl.message(
      'Sign in process was aborted',
      name: 'errorSignInCanceled',
      desc: '',
      args: [],
    );
  }

  /// `The password is not strong enough`
  String get errorWeakPassword {
    return Intl.message(
      'The password is not strong enough',
      name: 'errorWeakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The email is already in use by a different account.`
  String get errorEmailAlreadyInUse {
    return Intl.message(
      'The email is already in use by a different account.',
      name: 'errorEmailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `There is no user corresponding to the given email address.`
  String get errorUserNotFound {
    return Intl.message(
      'There is no user corresponding to the given email address.',
      name: 'errorUserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don't match`
  String get errorPasswordsDoNotMatch {
    return Intl.message(
      'Passwords don\'t match',
      name: 'errorPasswordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong with image editor. Try another image`
  String get errorImageEditor {
    return Intl.message(
      'Something went wrong with image editor. Try another image',
      name: 'errorImageEditor',
      desc: '',
      args: [],
    );
  }

  /// `Greetings!`
  String get signInTitle {
    return Intl.message(
      'Greetings!',
      name: 'signInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Email`
  String get singInEmail {
    return Intl.message(
      'Sign in with Email',
      name: 'singInEmail',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with {provider}`
  String signInProvider(Object provider) {
    return Intl.message(
      'Sign in with $provider',
      name: 'signInProvider',
      desc: '',
      args: [provider],
    );
  }

  /// `Create an account`
  String get signInCreateAccount {
    return Intl.message(
      'Create an account',
      name: 'signInCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Not registered yet?`
  String get signInNotRegisteredYet {
    return Intl.message(
      'Not registered yet?',
      name: 'signInNotRegisteredYet',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get signInForgotPassword {
    return Intl.message(
      'Forgot password?',
      name: 'signInForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `You have already created an account for this email. Try logging in with: {methods}`
  String signAccountExistsWithDifferentCredential(Object methods) {
    return Intl.message(
      'You have already created an account for this email. Try logging in with: $methods',
      name: 'signAccountExistsWithDifferentCredential',
      desc: '',
      args: [methods],
    );
  }

  /// `Registration`
  String get signUpTitle {
    return Intl.message(
      'Registration',
      name: 'signUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgotPasswordTitle {
    return Intl.message(
      'Forgot password',
      name: 'forgotPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `We sent the password reset instructions to your email. Change password and login`
  String get forgotPasswordSuccess {
    return Intl.message(
      'We sent the password reset instructions to your email. Change password and login',
      name: 'forgotPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Image editor`
  String get imageEditorTitle {
    return Intl.message(
      'Image editor',
      name: 'imageEditorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get bottomSheetSelectLanguage {
    return Intl.message(
      'Select Language',
      name: 'bottomSheetSelectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Select Theme`
  String get bottomSheetSelectTheme {
    return Intl.message(
      'Select Theme',
      name: 'bottomSheetSelectTheme',
      desc: '',
      args: [],
    );
  }

  /// `Avatar actions`
  String get bottomSheetAvatarTitle {
    return Intl.message(
      'Avatar actions',
      name: 'bottomSheetAvatarTitle',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get languageEnglish {
    return Intl.message(
      'English',
      name: 'languageEnglish',
      desc: '',
      args: [],
    );
  }

  /// `Русский`
  String get languageRussian {
    return Intl.message(
      'Русский',
      name: 'languageRussian',
      desc: '',
      args: [],
    );
  }

  /// `Українська`
  String get languageUkrainian {
    return Intl.message(
      'Українська',
      name: 'languageUkrainian',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get themeLight {
    return Intl.message(
      'Light',
      name: 'themeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get themeDark {
    return Intl.message(
      'Dark',
      name: 'themeDark',
      desc: '',
      args: [],
    );
  }

  /// `Inherit from system`
  String get themeSystem {
    return Intl.message(
      'Inherit from system',
      name: 'themeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get bottomTabHome {
    return Intl.message(
      'Home',
      name: 'bottomTabHome',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get bottomTabMessages {
    return Intl.message(
      'Messages',
      name: 'bottomTabMessages',
      desc: '',
      args: [],
    );
  }

  /// `Game`
  String get bottomTabGame {
    return Intl.message(
      'Game',
      name: 'bottomTabGame',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get bottomTabShop {
    return Intl.message(
      'Shop',
      name: 'bottomTabShop',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
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