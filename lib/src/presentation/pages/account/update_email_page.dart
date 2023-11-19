import 'package:auto_route/annotations.dart';
import 'package:dayder/src/presentation/logics/profile/value_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/update_email/update_email.dart';
import '../../logics/profile/update_navigation_notifier_provider.dart';

@RoutePage(name: 'UpdateEmail')
class UpdateEmailPage extends ConsumerWidget {
  const UpdateEmailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueProvider);
    final update = ref.watch(updateEmailProvider(value: value));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(updateNavigationNotifierProvider.notifier).setName();
          },
          icon: Icon(Icons.adaptive.arrow_back_rounded),
        ),
        title: const Text('Updated Email'),
      ),
      body: Center(
        child: update.when(
            data: (_) {
              return const Text('Success');
            },
            error: (e, _) => Text(e.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
