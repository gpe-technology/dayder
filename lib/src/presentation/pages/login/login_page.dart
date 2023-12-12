import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/auth/auth_provider.dart';
import '../../logics/auth/phone_number_provider.dart';
import '../../widgets/input_text_field.dart';

@RoutePage(name: 'Login')
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Consumer(builder: (context, WidgetRef ref, _) {
          final phoneNumber = ref.watch(phoneNumberProvider);
          TextEditingController controller =
              TextEditingController(text: phoneNumber);
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InputTextField(
                hintText: '+33 7 00 00 00 00 ',
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
          );
        }),
      ),
    );
  }
}
