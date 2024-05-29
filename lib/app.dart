import 'package:auto_route/auto_route.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:dayder/router/router.dart';
import 'package:dayder/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    final authBloc = diContainer<AuthenticationBloc>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(create: (context) => authBloc),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: diContainer<AppRouter>().config(
          reevaluateListenable: ReevaluateListenable.stream(authBloc.stream),
        ),
      ),
    );
  }
}
