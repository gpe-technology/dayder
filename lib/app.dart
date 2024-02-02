import 'package:dayder/navigation/router/app_router.dart';
import 'package:dayder/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  App({required this.title, super.key});

  final String title;

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
