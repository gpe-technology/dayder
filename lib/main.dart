import 'package:authentication_repository/authentication_repository.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/di/di_initializer.dart';
import 'package:dayder/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:monitoring_repository/monitoring_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initDI(diContainer);
  await diContainer<AuthenticationRepository>().user.first;
  final monitoring = diContainer<Monitoring>();
  await monitoring.runApp(() async => runApp(const App()));
}
