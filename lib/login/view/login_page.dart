import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/login/login.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const GoogleSignInButton(),
            ElevatedButton(
              onPressed: () => context.router.push(const LoginEmailRoute()),
              child: const Text('Login with Email'),
            ),
            ElevatedButton(
              onPressed: () => context.router.push(const LoginPhoneRoute()),
              child: const Text('Login with Phone'),
            ),
          ],
        ),
      ),
    );
  }
}
