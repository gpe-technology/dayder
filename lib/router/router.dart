import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@LazySingleton()
@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  AppRouter(GlobalKey<NavigatorState> navigatorKey,
      AuthenticationBloc authenticationBloc)
      : _auth = authenticationBloc,
        super(navigatorKey: navigatorKey);

  final AuthenticationBloc _auth;

  final _allowedRoute = [Login.name, Code.name];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_auth.user != null || _allowedRoute.contains(resolver.route.name)) {
      resolver.next();
    } else {
      resolver.redirect(const Login());
    }
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/dashboard',
          initial: true,
          page: Dashboard.page,
          children: [
            AutoRoute(
              path: 'Announcement',
              page: Announcement.page,
              title: (_, routeData) => 'Announcement',
            ),
            AutoRoute(
              path: 'chat',
              page: Chat.page,
              title: (_, routeData) => 'Chat',
            ),
            AutoRoute(
              path: 'my-account',
              page: Account.page,
              title: (_, routeData) => 'My account',
            ),
          ],
        ),
        AutoRoute(
          path: '/login',
          page: Login.page,
        ),
        AutoRoute(
          path: '/code-verification',
          page: Code.page,
        ),
        AutoRoute(
          path: '/splash',
          page: Splash.page,
        ),
        AutoRoute(
          path: '/publish',
          page: Publish.page,
        ),
        AutoRoute(
          path: '/profile',
          page: Profile.page,
        ),
        AutoRoute(
          path: '/set-name',
          page: SetName.page,
        ),
        AutoRoute(
          path: '/detail',
          page: Detail.page,
        ),
        RedirectRoute(path: '/', redirectTo: '/dashboard')
      ];
}
