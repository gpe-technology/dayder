import 'package:auto_route/auto_route.dart';
import 'package:dayder/core/authentication/domain/authentication_status.dart';
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:dayder/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginWrapper extends StatelessWidget {
  const LoginWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return AutoRouter.declarative(
          routes: (handler) => [
            const Login(),
            if (state.status == AuthenticationStatus.codeVerification)
              const Code(),
          ],
        );
      },
    );
  }
}
