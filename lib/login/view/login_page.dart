import 'package:alpha_ui/alpha_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/login/login.dart';
import 'package:dayder/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const GoogleSignInButton(),
              Button(
                onPressed: () => context.router.push(const LoginEmailRoute()),
                child: const Text('Login with Email'),
              ),
              Button(
                onPressed: () => context.router.push(const LoginPhoneRoute()),
                child: const Text('Login with Phone'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
