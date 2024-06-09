import 'package:authentication_repository/authentication_repository.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/di/di_initializer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/remote_config/fetch_config.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDI(diContainer);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  await diContainer<FetchConfig>().baseConfig();
  runApp(App(authenticationRepository: authenticationRepository));
}
