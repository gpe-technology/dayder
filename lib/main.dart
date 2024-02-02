import 'package:dayder/data/auth_state.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/di/di_initializer.dart';
import 'package:dayder/features/authentication/domain/authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'features/authentication/presentation/logic/auth_provider.dart';
import 'features/remote_config/fetch_config.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDI(diContainer);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await diContainer<FetchConfig>().baseConfig();
  runApp(
    ProviderScope(
      overrides: [
        authProvider.overrideWithValue(
          diContainer<Authentication>().currentUser() != null
              ? const AuthState.login()
              : const AuthState.logout(),
        ),
      ],
      child: App(title: 'Dayder'),
    ),
  );
}
