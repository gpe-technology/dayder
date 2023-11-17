import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
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
                  path: 'search',
                  page: Search.page,
                ),
                AutoRoute(
                  path: 'chat',
                  page: Chat.page,
                ),
                AutoRoute(
                  path: 'my-account',
                  page: Account.page,
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
          ],
        ),
        AutoRoute(
          path: '/publish',
          page: Publish.page,
          fullscreenDialog: true,
        ),
        AutoRoute(
          path: '/profile',
          page: Profile.page,
        ),
      ];
}
