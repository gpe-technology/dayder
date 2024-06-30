import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(const LoginEmail());
                },
                child: const Text('Email'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.router.push(const LoginPhone());
                },
                child: const Text('Phone'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
