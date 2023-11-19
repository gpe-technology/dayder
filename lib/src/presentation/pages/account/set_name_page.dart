import 'package:auto_route/annotations.dart';
import 'package:dayder/src/presentation/logics/profile/selected_value_provider.dart';
import 'package:dayder/src/presentation/logics/profile/value_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/update_navigation_notifier_provider.dart';
import '../../widgets/input_text_field.dart';

@RoutePage(name: 'SetName')
class SetNamePage extends ConsumerWidget {
  const SetNamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedValueProvider);
    TextEditingController controller =
        TextEditingController(text: selected?.value);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(updateNavigationNotifierProvider.notifier).pop();
          },
          icon: const Icon(Icons.close_rounded),
        ),
        title: Text('Update ${selected?.title}'),
      ),
      body: Column(
        children: [
          InputTextField(controller: controller),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(valueProvider.notifier)
                      .update((state) => controller.text.trim());
                  ref
                      .watch(updateNavigationNotifierProvider.notifier)
                      .updateName();
                },
                child: const Text('Update'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
