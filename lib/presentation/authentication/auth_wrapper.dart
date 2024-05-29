import 'package:auto_route/auto_route.dart';
import 'package:dayder/core/authentication/domain/authentication_status.dart';
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:dayder/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  void initState() {
    context.read<AuthenticationBloc>().add(AppStated());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return AutoRouter.declarative(
          routes: (handle) => [
            const Login(),
            if (state.status == AuthenticationStatus.codeVerification)
              const Code(),
          ],
        );
      },
    );
  }
}
