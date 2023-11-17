import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logics/auth_notifier_provider.dart';
import '../logics/auth_provider.dart';

@RoutePage()
class AuthWrapper extends ConsumerWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthState authState = ref.watch(authNotifierProvider);
    return AutoRouter.declarative(
      routes: (_) => [
        if (authState == AuthState.isLogin) const Dashboard(),
        if (authState == AuthState.isLogout) const Login(),
        if (authState == AuthState.isCodeVerification) const Code(),
      ],
    );
  }
}
