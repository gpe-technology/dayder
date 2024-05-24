import 'package:dayder/di/di_container.dart';
import 'package:dayder/di/di_initializer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'core/remote_config/fetch_config.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDI(diContainer);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await diContainer<FetchConfig>().baseConfig();
  runApp(const App(title: 'Dayder'));
}
