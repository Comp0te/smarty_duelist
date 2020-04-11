// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(digit) => "Min ${digit} characters";

  static m1(methods) => "You have already created an account for this email. Try logging in with: ${methods}";

  static m2(provider) => "Sign in with ${provider}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "bottomSheetSelectLanguage" : MessageLookupByLibrary.simpleMessage("Select Language"),
    "bottomSheetSelectTheme" : MessageLookupByLibrary.simpleMessage("Select Theme"),
    "bottomTabGame" : MessageLookupByLibrary.simpleMessage("Game"),
    "bottomTabHome" : MessageLookupByLibrary.simpleMessage("Home"),
    "bottomTabMessages" : MessageLookupByLibrary.simpleMessage("Messages"),
    "bottomTabProfile" : MessageLookupByLibrary.simpleMessage("Profile"),
    "bottomTabShop" : MessageLookupByLibrary.simpleMessage("Shop"),
    "cancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "confirm" : MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirmPassword" : MessageLookupByLibrary.simpleMessage("Confirm password"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "error" : MessageLookupByLibrary.simpleMessage("Error"),
    "errorCredentialMalformed" : MessageLookupByLibrary.simpleMessage("Credential data is malformed or has expired"),
    "errorEmailAlreadyInUse" : MessageLookupByLibrary.simpleMessage("The email is already in use by a different account."),
    "errorEmailIncorrect" : MessageLookupByLibrary.simpleMessage("Incorrect email address"),
    "errorEmailMalformed" : MessageLookupByLibrary.simpleMessage("Email address is malformed"),
    "errorGoogleAuth" : MessageLookupByLibrary.simpleMessage("Something went wrong during authentication via Google"),
    "errorLoading" : MessageLookupByLibrary.simpleMessage("Loading error"),
    "errorMinLength" : m0,
    "errorPasswordsDoNotMatch" : MessageLookupByLibrary.simpleMessage("Passwords don\'t match"),
    "errorRequired" : MessageLookupByLibrary.simpleMessage("Required"),
    "errorSignInCanceled" : MessageLookupByLibrary.simpleMessage("Sign in process was aborted"),
    "errorToManySignIn" : MessageLookupByLibrary.simpleMessage("You made too many attempts to sign in"),
    "errorUnexpected" : MessageLookupByLibrary.simpleMessage("Something went wrong. We are sorry."),
    "errorUserDisabled" : MessageLookupByLibrary.simpleMessage("User disabled"),
    "errorUserNotFound" : MessageLookupByLibrary.simpleMessage("There is no user corresponding to the given email address."),
    "errorWeakPassword" : MessageLookupByLibrary.simpleMessage("The password is not strong enough"),
    "errorWrongEmailOrPassword" : MessageLookupByLibrary.simpleMessage("Email or password is wrong"),
    "forgotPasswordSuccess" : MessageLookupByLibrary.simpleMessage("We sent the password reset instructions to your email. Change password and login"),
    "forgotPasswordTitle" : MessageLookupByLibrary.simpleMessage("Forgot password"),
    "imageEditorTitle" : MessageLookupByLibrary.simpleMessage("Image editor"),
    "languageEnglish" : MessageLookupByLibrary.simpleMessage("English"),
    "languageRussian" : MessageLookupByLibrary.simpleMessage("Русский"),
    "languageUkrainian" : MessageLookupByLibrary.simpleMessage("Українська"),
    "logout" : MessageLookupByLibrary.simpleMessage("Logout"),
    "ok" : MessageLookupByLibrary.simpleMessage("Ok"),
    "password" : MessageLookupByLibrary.simpleMessage("Password"),
    "signAccountExistsWithDifferentCredential" : m1,
    "signInCreateAccount" : MessageLookupByLibrary.simpleMessage("Create an account"),
    "signInForgotPassword" : MessageLookupByLibrary.simpleMessage("Forgot password?"),
    "signInNotRegisteredYet" : MessageLookupByLibrary.simpleMessage("Not registered yet?"),
    "signInProvider" : m2,
    "signInTitle" : MessageLookupByLibrary.simpleMessage("Greetings!"),
    "signUpTitle" : MessageLookupByLibrary.simpleMessage("Registration"),
    "singInEmail" : MessageLookupByLibrary.simpleMessage("Sign in with Email"),
    "submit" : MessageLookupByLibrary.simpleMessage("Submit"),
    "success" : MessageLookupByLibrary.simpleMessage("Success"),
    "themeDark" : MessageLookupByLibrary.simpleMessage("Dark"),
    "themeLight" : MessageLookupByLibrary.simpleMessage("Light"),
    "themeSystem" : MessageLookupByLibrary.simpleMessage("Inherit from system")
  };
}
