import 'package:auto_route/annotations.dart';
import 'package:dayder/src/presentation/logics/update_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/input_text_field.dart';

@RoutePage(name: 'UpdateProfile')
class UpdateProfile extends ConsumerWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ref.watch(updateNotifierProvider.notifier).profile();
          },
          icon: const Icon(Icons.close_rounded),
        ),
        title: const Text('Update'),
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
