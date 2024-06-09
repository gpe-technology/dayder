import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/login/code_verification_page.dart';
import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:dayder/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'Login')
class LoginPage extends StatelessWidget {
  const LoginPage(this._authenticationRepository, {super.key});

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(_authenticationRepository),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state is LoginCode) return const CodeVerificationPage();
          return const LoginForm();
        },
      ),
    );
  }
}
