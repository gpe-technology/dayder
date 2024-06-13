import 'package:authentication_repository/authentication_repository.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/di/di_initializer.dart';
import 'package:dayder/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:remote_config_repository/remote_config_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDI(diContainer);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  final remoteConfigRepository = RemoteConfigRepository();
  await remoteConfigRepository.setup();
  runApp(App(
    authenticationRepository: authenticationRepository,
    remoteConfigRepository: remoteConfigRepository,
  ));
}
