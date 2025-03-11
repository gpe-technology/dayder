import 'package:auto_route/auto_route.dart';
import 'package:dayder/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPhoneVerificationPage extends StatefulWidget {
  const LoginPhoneVerificationPage({super.key});

  @override
  State<LoginPhoneVerificationPage> createState() =>
      _LoginPhoneVerificationPageState();
}

class _LoginPhoneVerificationPageState
    extends State<LoginPhoneVerificationPage> {
  final TextEditingController _codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Code verification')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Code'),
                controller: _codeController,
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => context
                      .read<LoginCubit>()
                      .signInWithPhone(smsCode: _codeController.text)
                      .then((_) {
                        if (context.mounted) {
                          context.router.popUntilRoot();
                        }
                      }),
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
