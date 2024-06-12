import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:dayder/app/view/widgets/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                hintText: 'Email',
                controller: _emailController,
              ),
              InputTextField(
                hintText: 'Password',
                controller: _passwordController,
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () async {
                  await context.read<LoginCubit>().signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
