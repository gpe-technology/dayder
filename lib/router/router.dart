import 'package:auto_route/auto_route.dart';
import 'package:dayder/router/auth_guard.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@LazySingleton()
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter(GlobalKey<NavigatorState> navigatorKey, AuthGuard authGuard)
      : _authGuard = authGuard,
        super(navigatorKey: navigatorKey);

  final AuthGuard _authGuard;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

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
          guards: [_authGuard],
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
