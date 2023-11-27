import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/presentation/logics/auth_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/input_text_field.dart';

@RoutePage<String>(name: 'Code')
class CodeVerificationPage extends ConsumerWidget {
  const CodeVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(authStateNotifierProvider.notifier).backToLogin();
          },
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: const Text('Code vérification'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            InputTextField(
              hintText: '123456',
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () async {
                await ref
                    .read(authStateNotifierProvider.notifier)
                    .login(controller.text);
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
