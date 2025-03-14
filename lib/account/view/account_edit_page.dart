import 'package:app_ui/app_ui.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountEditPage extends StatelessWidget {
  const AccountEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Update')),
      body: Input(controller: controller),
      persistentFooterButtons: [
        Button(onPressed: () {}, child: const Text('Logout')),
      ],
    );
  }
}
