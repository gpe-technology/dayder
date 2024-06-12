import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/bloc/app_bloc.dart';
import 'package:dayder/app/router/router.dart';
import 'package:dayder/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remote_config_repository/remote_config_repository.dart';

class App extends StatelessWidget {
  const App({
    required AuthenticationRepository authenticationRepository,
    required RemoteConfigRepository remoteConfigRepository,
    super.key,
  })  : _authenticationRepository = authenticationRepository,
        _remoteConfigRepository = remoteConfigRepository;

  final AuthenticationRepository _authenticationRepository;
  final RemoteConfigRepository _remoteConfigRepository;

  @override
  Widget build(BuildContext context) {
    final appRouter =
        AppRouter(authenticationRepository: _authenticationRepository);
    return BlocProvider(
      create: (context) =>
          AppBloc(authenticationRepository: _authenticationRepository),
      child: MaterialApp.router(
        title: 'Dayder',
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: appRouter.config(
          reevaluateListenable:
              ReevaluateListenable.stream(_authenticationRepository.user),
        ),
      ),
    );
  }
}
