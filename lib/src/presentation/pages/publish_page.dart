import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/data/models/announcement_model/announcement_model.dart';
import 'package:dayder/src/presentation/logics/announcement/announcement.dart';
import 'package:dayder/src/presentation/widgets/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

@RoutePage(name: 'Publish')
class PublishPage extends HookConsumerWidget {
  const PublishPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController descriptionController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    final pendingAdd = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingAdd.value);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add announcement'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // TODO add image
                  const AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Placeholder(
                      child: Center(child: Text('Image Slider')),
                    ),
                  ),
                  InputTextField(
                    controller: descriptionController,
                    hintText: 'Description',
                  ),
                  InputTextField(
                    controller: priceController,
                    hintText: 'Price',
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator()
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        const uuid = Uuid();
                        final future = ref.read(
                          postProvider(
                            AnnouncementModel(
                              id: uuid.v1(),
                              url: "",
                              description: descriptionController.text,
                              price: priceController.text,
                            ),
                          ).future,
                        );
                        pendingAdd.value = future;
                      },
                      child: const Text('Add'),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
