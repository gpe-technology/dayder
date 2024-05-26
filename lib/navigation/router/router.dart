import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@lazySingleton
@AutoRouterConfig()
class DayderRouter extends $DayderRouter {
  DayderRouter(GlobalKey<NavigatorState> navigatorKey)
      : super(navigatorKey: navigatorKey);

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AuthWrapper.page,
          children: [
            AutoRoute(
              path: 'dashboard',
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
              path: 'login',
              page: Login.page,
            ),
            AutoRoute(
              path: 'code-verification',
              page: Code.page,
            ),
            AutoRoute(
              path: 'splash',
              page: Splash.page,
            ),
          ],
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
          title: (_, routeData) => 'Detail',
        )
      ];
}
