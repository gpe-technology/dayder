import 'package:auto_route/auto_route.dart';
import 'package:dayder/navigation/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/authentication/data/firebase_authentication.dart';
import 'login/bloc/authentication_bloc.dart';

@RoutePage()
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthenticationBloc(
              authenticationRepository: FirebaseAuthentication(),
            ),
        child: const AuthRouting());
  }
}

class AuthRouting extends StatefulWidget {
  const AuthRouting({super.key});

  @override
  State<AuthRouting> createState() => _AuthRoutingState();
}

class _AuthRoutingState extends State<AuthRouting> {
  @override
  void initState() {
    context.read<AuthenticationBloc>().add(AppStated());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (BuildContext context, AuthenticationState state) {
        return AutoRouter.declarative(
          routes: (_) => [
            switch (state) {
              Authenticated() => const Dashboard(),
              CodeVerification() => const Code(),
              Unknown() => const Login(),
              UnAuthenticated() => const Login(),
            }
          ],
        );
      },
    );
  }
}
