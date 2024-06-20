import 'package:auto_route/auto_route.dart';
import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:dayder/login/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'Login')
class LoginPage extends StatelessWidget {
  const LoginPage({required Function(bool success) onResult, super.key})
      : _onResult = onResult;

  final Function(bool success) _onResult;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (BuildContext context, LoginState state) {
        if (state.status == LoginStatus.authenticated) {
          _onResult(true);
        }
      },
      builder: (context, state) {
        return const LoginForm();
      },
    );
  }
}
