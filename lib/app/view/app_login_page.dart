import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
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
      child: const AutoRouter(),
    );
  }
}
