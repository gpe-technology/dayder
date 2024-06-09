import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:dayder/presentation/widgets/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
        child: Builder(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InputTextField(
                hintText: '+33 7 00 00 00 00 ',
                controller: _controller,
              ),
              ElevatedButton(
                onPressed: () async {
                  await context.read<LoginCubit>().signInWithEmailAndPassword();
                },
                child: const Text('SingIn'),
              )
            ],
          );
        }),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
