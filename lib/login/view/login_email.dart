import 'package:alpha_ui/alpha_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/view/widgets/input_text_field.dart';
import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginEmailPage extends StatefulWidget {
  const LoginEmailPage({super.key});

  @override
  State<LoginEmailPage> createState() => _LoginEmailPageState();
}

class _LoginEmailPageState extends State<LoginEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login with email')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 16,
          children: [
            Input(hintText: 'Email', controller: _emailController),
            Input(
              hintText: 'Password',
              controller: _passwordController,
              type: Type.password,
            ),
            Button(
              onPressed:
                  () => context.read<LoginCubit>().signInWithEmailAndPassword(
                    email: 'alphaseul@yahoo.fr',
                    password: 'alphasow',
                  ),
              child: const Text('LOGIN'),
            ),
          ],
        ),
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
