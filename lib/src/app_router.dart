import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AppDeclarative.page,
          children: [
            AutoRoute(
              path: 'dashboard',
              page: DashboardRoute.page,
              children: [
                AutoRoute(
                  path: 'search',
                  page: SearchRoute.page,
                ),
                AutoRoute(
                  path: 'chat',
                  page: ChatRoute.page,
                ),
                AutoRoute(
                  path: 'my-account',
                  page: MyAccountRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'login',
              page: LoginRoute.page,
            ),
            AutoRoute(
              path: 'code-verification',
              page: CodeVerificationRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: '/publish',
          page: PublishRoute.page,
          fullscreenDialog: true,
        ),
      ];
}
