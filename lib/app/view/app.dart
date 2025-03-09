import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/login/login.dart';
import 'package:dayder/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monitoring_repository/monitoring_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = diContainer<AppRouter>();
    final monitoring = diContainer<Monitoring>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => diContainer<AppBloc>()),
        BlocProvider(create: (context) => diContainer<LoginCubit>()),
      ],
      child: MaterialApp.router(
        title: 'Dayder',
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        routerConfig: appRouter.config(
          reevaluateListenable: ReevaluateListenable.stream(
            diContainer<AppBloc>().stream,
          ),
          navigatorObservers: () => [monitoring.navObserver()],
        ),
      ),
    );
  }
}
