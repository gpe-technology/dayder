import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dayder/features/file_storage/file_storage.dart';
import 'package:dayder/src/data/models/announcement_model/announcement_model.dart';
import 'package:dayder/src/presentation/widgets/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../logics/announcement/announcement.dart';
import '../logics/image_picker_provider/image_picker_provider.dart';

@RoutePage(name: 'Publish')
class PublishPage extends HookConsumerWidget {
  const PublishPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    final pendingAdd = useState<Future<void>?>(null);
    final addSnapshot = useFuture(pendingAdd.value);
    final pendingPicker = useState<Future<XFile?>?>(null);
    final pickerSnapshot = useFuture(pendingPicker.value);
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
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: pickerSnapshot.hasData
                        ? Image.file(File(pickerSnapshot.data!.path))
                        : Center(
                            child: TextButton(
                              onPressed: () async {
                                pendingPicker.value =
                                    ref.read(imagePickerProvider.future);
                              },
                              child: const Text('Add image'),
                            ),
                          ),
                  ),
                  InputTextField(
                    controller: titleController,
                    hintText: 'Title',
                  ),
                  InputTextField(
                    controller: descriptionController,
                    hintText: 'Description',
                    maxLines: 10,
                  ),
                  InputTextField(
                    controller: priceController,
                    hintText: 'Price',
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            addSnapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator()
                : SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: pickerSnapshot.hasData
                          ? () async {
                              final fileStorage = FileStorage();
                              final file = pickerSnapshot.data!;
                              final url = await fileStorage.save(
                                name: file.name,
                                path: file.path,
                              );
                              final announcement = AnnouncementModel(
                                id: const Uuid().v1(),
                                title: titleController.text,
                                url: url,
                                description: descriptionController.text,
                                price: priceController.text,
                              );
                              pendingAdd.value = ref.read(
                                postProvider(announcement).future,
                              );
                            }
                          : null,
                      child: const Text('Add'),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
