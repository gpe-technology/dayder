import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/presentation/logics/auth/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/input_text_field.dart';

@RoutePage<String>(name: 'Code')
class CodeVerificationPage extends HookConsumerWidget {
  const CodeVerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    final pendingVerification = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingVerification.value);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(authStateProvider.notifier).backToLogin();
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
              errorText: snapshot.hasError ? '${snapshot.error}' : null,
            ),
            ElevatedButton(
              onPressed: () {
                final future =
                    ref.read(authStateProvider.notifier).login(controller.text);
                pendingVerification.value = future;
              },
              child: snapshot.connectionState != ConnectionState.waiting
                  ? const Text('Send')
                  : const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
