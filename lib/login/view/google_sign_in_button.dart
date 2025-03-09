import 'package:alpha_ui/alpha_ui.dart';
import 'package:dayder/login/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonIcon(
      onPressed: () async {
        await context.read<LoginCubit>().signInWithGoogle();
      },
      text: 'Sign in with google',
      icon: Icons.golf_course,
    );
  }
}
