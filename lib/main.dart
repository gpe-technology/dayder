import 'package:dayder/src/presentation/logics/auth/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'features/authentication/src/domain/authentication.dart';
import 'firebase_options.dart';
import 'injectable/injectable.dart';
import 'src/app.dart';
import 'src/presentation/logics/auth/auth_provider.dart';

late final FirebaseAuth auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);
  configureDependencies();
  runApp(
    ProviderScope(
      overrides: [
        authProvider.overrideWithValue(
            GetIt.instance<Authentication>().currentUser() != null
                ? const AuthState.login()
                : const AuthState.logout()),
      ],
      child: App(title: 'Dayder'),
    ),
  );
}
