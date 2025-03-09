import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPhonePage extends StatefulWidget {
  const LoginPhonePage({super.key});

  @override
  State<LoginPhonePage> createState() => _LoginPhonePageState();
}

class _LoginPhonePageState extends State<LoginPhonePage> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login with phone')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(hintText: 'Phone'),
                controller: _phoneController,
              ),
            ),
            ElevatedButton(
              onPressed:
                  () => context
                      .read<LoginCubit>()
                      .verifyPhoneNumber(number: _phoneController.text)
                      .then((_) {
                        if (context.mounted) {
                          context.router.navigate(
                            const LoginPhoneVerificationRoute(),
                          );
                        }
                      }),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
