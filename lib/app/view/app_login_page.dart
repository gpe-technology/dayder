import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AppLoginPage extends StatelessWidget {
  const AppLoginPage({
    required Function(bool success) onResult,
    super.key,
  }) : _onResult = onResult;

  final Function(bool success) _onResult;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.user.isNotEmpty) {
          _onResult(true);
        }
      },
      child: const LoginEmail(),
    );
  }
}
