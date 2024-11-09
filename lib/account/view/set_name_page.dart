import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../app/view/widgets/input_text_field.dart';

@RoutePage(name: 'SetName')
class SetNamePage extends StatelessWidget {
  const SetNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Update')),
      body: Column(
        children: [
          InputTextField(controller: controller),
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
