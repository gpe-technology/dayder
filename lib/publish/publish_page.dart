import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/view/widgets/input_text_field.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Publish')
class PublishPage extends StatelessWidget {
  const PublishPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController priceController = TextEditingController();
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
                    child: Center(
                      child: TextButton(
                        onPressed: () async {},
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {},
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
