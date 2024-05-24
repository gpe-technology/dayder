import 'package:auto_route/auto_route.dart';
import 'package:dayder/navigation/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      routes: (_) => [const Dashboard()],
    );
  }
}
