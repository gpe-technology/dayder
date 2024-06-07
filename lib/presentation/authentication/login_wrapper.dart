import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:dayder/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  void initState() {
    //context.read<AuthenticationBloc>().add();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return AutoRouter.declarative(
          routes: (handler) => [
            const Login(),
            if (state.status == AppStatus.codeVerification) const Code(),
          ],
        );
      },
    );
  }
}
