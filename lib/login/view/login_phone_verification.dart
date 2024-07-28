import 'package:auto_route/auto_route.dart';
import 'package:dayder/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPhoneVerification extends StatefulWidget {
  const LoginPhoneVerification({super.key});

  @override
  State<LoginPhoneVerification> createState() => _LoginPhoneVerificationState();
}

class _LoginPhoneVerificationState extends State<LoginPhoneVerification> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code vérification'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: 'Code',
                ),
                controller: _codeController,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await context
                    .read<LoginCubit>()
                    .signInWithPhone(smsCode: _codeController.text)
                    .then((_) {
                  context.router.popUntilRoot();
                });
              },
              child: const Text('Send'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }
}
