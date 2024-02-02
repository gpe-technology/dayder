import 'package:auto_route/auto_route.dart';
import 'package:dayder/navigation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/auth_state.dart';
import '../features/authentication/presentation/logic/auth_provider.dart';

@RoutePage()
class AuthWrapper extends ConsumerWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
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
