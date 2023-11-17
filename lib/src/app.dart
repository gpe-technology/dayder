import 'package:dayder/src/app_router.dart';
import 'package:dayder/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dayder',
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
