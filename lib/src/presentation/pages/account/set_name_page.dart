import 'package:auto_route/annotations.dart';
import 'package:dayder/src/presentation/logics/profile/selected_value_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../logics/profile/update_name/update_name.dart';
import '../../widgets/input_text_field.dart';

@RoutePage(name: 'SetName')
class SetNamePage extends HookConsumerWidget {
  const SetNamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(selectedValueProvider);
    TextEditingController controller = TextEditingController(text: name?.value);
    final pendingUpdate = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingUpdate.value);
    return Scaffold(
      appBar: AppBar(title: Text('Update ${name?.title}')),
      body: Column(
        children: [
          InputTextField(controller: controller),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  final future = ref.watch(
                      updateNameProvider(value: controller.text.trim()).future);
                  pendingUpdate.value = future;
                },
                child: snapshot.connectionState == ConnectionState.waiting
                    ? const CircularProgressIndicator()
                    : const Text('Update'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
