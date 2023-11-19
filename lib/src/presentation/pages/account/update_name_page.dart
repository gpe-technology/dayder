import 'package:auto_route/annotations.dart';
import 'package:dayder/src/presentation/logics/profile/value_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/update_name/update_name.dart';
import '../../logics/profile/update_navigation_notifier_provider.dart';

@RoutePage(name: 'UpdateName')
class UpdateNamePage extends ConsumerWidget {
  const UpdateNamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueProvider);
    final update = ref.watch(updateNameProvider(value: value));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(updateNavigationNotifierProvider.notifier).setName();
          },
          icon: Icon(Icons.adaptive.arrow_back_rounded),
        ),
        title: const Text('Updated Name'),
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
