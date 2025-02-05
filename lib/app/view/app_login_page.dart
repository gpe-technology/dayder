import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/login/login.dart' as login;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AppLoginPage extends StatelessWidget {
  const AppLoginPage({
    required void Function(bool success) onResult,
    super.key,
  }) : _onResult = onResult;

  final void Function(bool success) _onResult;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.user.isNotEmpty) {
          _onResult(true);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const login.GoogleSignInButton(),
                  ElevatedButton(
                    onPressed: () async {
                      await context.router.navigate(const LoginEmail());
                    },
                    child: const Text('Email'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await context.router.navigate(const LoginPhone());
                    },
                    child: const Text('Phone'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
