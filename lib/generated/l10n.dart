// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S(this.localeName);
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S(localeName);
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  final String localeName;

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

  String get error {
    return Intl.message(
      'Error',
      name: 'error',
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

  String errorMinLength(dynamic digit) {
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

  String get loginGreetings {
    return Intl.message(
      'Greetings!',
      name: 'loginGreetings',
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

  String signInProvider(dynamic provider) {
    return Intl.message(
      'Sign in with $provider',
      name: 'signInProvider',
      desc: '',
      args: [provider],
    );
  }

  String get createAccount {
    return Intl.message(
      'Create an account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  String get notRegisteredYet {
    return Intl.message(
      'Not registered yet?',
      name: 'notRegisteredYet',
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
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}