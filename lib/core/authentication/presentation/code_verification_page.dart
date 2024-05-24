import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/widgets/input_text_field.dart';
import 'package:flutter/material.dart';

@RoutePage<String>(name: 'Code')
class CodeVerificationPage extends StatelessWidget {
  const CodeVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: const Text('Code vérification'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            InputTextField(
              hintText: '123456',
              controller: controller,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}
