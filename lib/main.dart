import 'package:dayder/core/setup.dart';
import 'package:dayder/features/authentication/authentication.dart';
import 'package:dayder/src/presentation/logics/auth/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';
import 'src/app.dart';
import 'src/presentation/logics/auth/auth_provider.dart';

late final FirebaseAuth auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = Setup.init();
  final app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);
  runApp(
    ProviderScope(
      overrides: [
        authProvider.overrideWithValue(
            getIt<FirebaseAuthentication>().currentUser() != null
                ? const AuthState.login()
                : const AuthState.logout()),
      ],
      child: App(),
    ),
  );
}
