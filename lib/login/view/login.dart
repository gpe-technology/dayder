import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return AutoRouter.declarative(
          routes: (handler) => [
            const LoginPhone(),
            if (state is CodeVerification) const LoginPhoneVerification(),
          ],
        );
      },
    );
  }
}
