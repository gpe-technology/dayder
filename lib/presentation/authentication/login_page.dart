import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:dayder/presentation/widgets/input_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'Login')
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  context
                      .read<AuthenticationBloc>()
                      .add(AuthenticationPhoneVerification(_controller.text));
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
