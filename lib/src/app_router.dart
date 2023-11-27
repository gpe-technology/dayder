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
                  title: (_, routeData) => 'Search',
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
