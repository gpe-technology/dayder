import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../app_router.gr.dart';
import '../logics/auth/auth_provider.dart';
import '../logics/auth/auth_state.dart';

@RoutePage()
class AuthWrapper extends ConsumerWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    return AutoRouter.declarative(
      routes: (_) => [
        switch (authState) {
          LoginState() => const Dashboard(),
          CodeVerificationState() => const Code(),
          LogoutState() => const Login(),
        }
      ],
    );
  }
}
