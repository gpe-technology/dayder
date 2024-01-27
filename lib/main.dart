import 'package:dayder/src/presentation/logics/auth/auth_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'features/authentication/src/domain/authentication.dart';
import 'features/remote_config/fetch_config.dart';
import 'firebase_options.dart';
import 'injectable/injectable.dart';
import 'src/app.dart';
import 'src/presentation/logics/auth/auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await getIt<FetchConfig>().baseConfig();
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
