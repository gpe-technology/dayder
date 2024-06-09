import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends $AppRouter implements AutoRouteGuard {
  AppRouter(GlobalKey<NavigatorState> navigatorKey,
      {@factoryParam
      required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(navigatorKey: navigatorKey);

  final AuthenticationRepository _authenticationRepository;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
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
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_authenticationRepository.currentUser.isNotEmpty ||
        resolver.route.name == Login.name) {
      resolver.next();
    } else {
      resolver.redirect(
        Login(
          authenticationRepository: _authenticationRepository,
          onResult: (success) {
            resolver.resolveNext(success, reevaluateNext: false);
          },
        ),
      );
    }
  }
}
