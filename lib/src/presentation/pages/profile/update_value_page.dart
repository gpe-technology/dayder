import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/update_future_provider.dart';
import '../../logics/profile/update_navigation_notifier_provider.dart';

@RoutePage(name: 'UpdateValue')
class UpdateValuePage extends ConsumerWidget {
  const UpdateValuePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final updateName = ref.watch(updateNameFutureProvider(''));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(updateNavigationNotifierProvider.notifier).setValue();
          },
          icon: Icon(Icons.adaptive.arrow_back_rounded),
        ),
        title: const Text('Updated'),
      ),
      body: Center(
        child: updateName.when(
            data: (_) {
              return const Text('Success');
            },
            error: (e, _) => Text(e.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
