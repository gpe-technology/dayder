import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/update_navigation_notifier_provider.dart';
import '../../widgets/input_text_field.dart';

@RoutePage(name: 'SetValue')
class SetValuePage extends ConsumerWidget {
  const SetValuePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.read(updateNavigationNotifierProvider.notifier).pop();
          },
          icon: const Icon(Icons.close_rounded),
        ),
        title: const Text('Set'),
      ),
      body: Column(
        children: [
          InputTextField(
            controller: controller,
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Update'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
