import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/presentation/logics/phone_number_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/auth_notifier_provider.dart';
import '../../widgets/input_text_field.dart';

@RoutePage(name: 'Login')
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumber = ref.watch(phoneNumberProvider);
    TextEditingController controller = TextEditingController(text: phoneNumber);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InputTextField(
              hintText: '+33 7 00 00 00 00 ',
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () async {
                ref
                    .read(phoneNumberProvider.notifier)
                    .update((state) => controller.text);
                await ref
                    .read(authNotifierProvider.notifier)
                    .verifyPhone(controller.text);
              },
              child: const Text('SingIn'),
            )
          ],
        ),
      ),
    );
  }
}
