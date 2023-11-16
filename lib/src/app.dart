import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:dayder/src/presentation/logics/auth_notifier_provider.dart';
import 'package:dayder/src/presentation/logics/auth_provider.dart';
import 'package:dayder/src/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthState authState = ref.watch(authNotifierProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dayder',
      theme: theme,
      darkTheme: darkTheme,
      routerDelegate: AutoRouterDelegate.declarative(
        _appRouter,
        routes: (_) => [
          if (authState == AuthState.isLogin) const DashboardRoute(),
          if (authState == AuthState.isLogout) const LoginRoute(),
          if (authState == AuthState.isCodeVerification)
            const CodeVerificationRoute(),
        ],
      ),
      routeInformationParser:
          _appRouter.defaultRouteParser(includePrefixMatches: true),
    );
  }
}
