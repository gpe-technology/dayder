import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logics/auth_notifier_provider.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextField(
                controller: controller,
              ),
              ElevatedButton(
                onPressed: () async {
                  await ref
                      .read(authNotifierProvider.notifier)
                      .verifyPhone(controller.text);
                },
                child: const Text('SingIn'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
