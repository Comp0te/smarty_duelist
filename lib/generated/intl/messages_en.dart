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

  static m1(provider) => "Sign in with ${provider}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "confirmPassword" : MessageLookupByLibrary.simpleMessage("Confirm password"),
    "createAccount" : MessageLookupByLibrary.simpleMessage("Create an account"),
    "email" : MessageLookupByLibrary.simpleMessage("Email"),
    "error" : MessageLookupByLibrary.simpleMessage("Error"),
    "errorCredentialMalformed" : MessageLookupByLibrary.simpleMessage("Credential data is malformed or has expired"),
    "errorEmailAlreadyInUse" : MessageLookupByLibrary.simpleMessage("The email is already in use by a different account."),
    "errorEmailIncorrect" : MessageLookupByLibrary.simpleMessage("Incorrect email address"),
    "errorEmailMalformed" : MessageLookupByLibrary.simpleMessage("Email address is malformed"),
    "errorGoogleAuth" : MessageLookupByLibrary.simpleMessage("Something went wrong during authentication via Google"),
    "errorMinLength" : m0,
    "errorRequired" : MessageLookupByLibrary.simpleMessage("Required"),
    "errorSignInCanceled" : MessageLookupByLibrary.simpleMessage("Sign in process was aborted"),
    "errorToManySignIn" : MessageLookupByLibrary.simpleMessage("You made too many attempts to sign in"),
    "errorUnexpected" : MessageLookupByLibrary.simpleMessage("Something went wrong. We are sorry."),
    "errorUserDisabled" : MessageLookupByLibrary.simpleMessage("User disabled"),
    "errorWeakPassword" : MessageLookupByLibrary.simpleMessage("The password is not strong enough"),
    "errorWrongEmailOrPassword" : MessageLookupByLibrary.simpleMessage("Email or password is wrong"),
    "notRegisteredYet" : MessageLookupByLibrary.simpleMessage("Not registered yet?"),
    "password" : MessageLookupByLibrary.simpleMessage("Password"),
    "signInProvider" : m1,
    "signInTitle" : MessageLookupByLibrary.simpleMessage("Greetings!"),
    "signUpTitle" : MessageLookupByLibrary.simpleMessage("Registration"),
    "singInEmail" : MessageLookupByLibrary.simpleMessage("Sign in with Email"),
    "submit" : MessageLookupByLibrary.simpleMessage("Submit")
  };
}
