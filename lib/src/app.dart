import 'package:dayder/src/route.dart';
import 'package:dayder/src/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dayder',
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
