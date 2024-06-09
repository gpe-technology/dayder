import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/bloc/app_bloc.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/router/router.dart';
import 'package:dayder/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    required AuthenticationRepository authenticationRepository,
    super.key,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AppBloc(authenticationRepository: _authenticationRepository),
      child: AppView(authenticationRepository: _authenticationRepository),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView(
      {required AuthenticationRepository authenticationRepository, super.key})
      : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    final appRouter = diContainer<AppRouter>(param1: _authenticationRepository);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      routerConfig: appRouter.config(
        reevaluateListenable:
            ReevaluateListenable.stream(_authenticationRepository.user),
      ),
    );
  }
}
