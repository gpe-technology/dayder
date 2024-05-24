import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/widgets/input_text_field.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Login')
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Builder(builder: (context) {
          TextEditingController controller = TextEditingController();
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InputTextField(
                hintText: '+33 7 00 00 00 00 ',
                controller: controller,
              ),
              ElevatedButton(
                onPressed: () async {},
                child: const Text('SingIn'),
              )
            ],
          );
        }),
      ),
    );
  }
}
