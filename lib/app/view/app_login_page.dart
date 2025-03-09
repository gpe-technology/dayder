import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AppLoginPage extends StatelessWidget {
  const AppLoginPage({required ValueChanged<bool> onResult, super.key})
    : _onResult = onResult;

  final ValueChanged<bool> _onResult;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.user.isNotEmpty) {
          _onResult(true);
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed:
                        () => context
                            .read<LoginCubit>()
                            .signInWithEmailAndPassword(
                              email: 'alphaseul@yahoo.fr',
                              password: 'alphasow',
                            ),
                    child: const Text('Email'),
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
