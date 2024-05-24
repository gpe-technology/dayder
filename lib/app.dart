import 'package:dayder/di/di_container.dart';
import 'package:dayder/navigation/router/router.dart';
import 'package:dayder/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: diContainer<DayderRouter>().config(),
    );
  }
}
