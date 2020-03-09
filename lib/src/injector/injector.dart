import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'injector.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjector() => $initGetIt(getIt);

@registerModule
abstract class RegisterModule {
  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;
  @injectable
  GoogleSignIn get googleSignIn => GoogleSignIn(
        scopes: [
          'email',
          'https://www.googleapis.com/auth/contacts.readonly',
        ],
      );
}
