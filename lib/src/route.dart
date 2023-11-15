import 'package:auto_route/auto_route.dart';

import 'presentation/pages/publish_page.dart';
import 'presentation/pages/dashboard_page.dart';
import 'presentation/pages/chat_page.dart';
import 'presentation/pages/my_account_page.dart';
import 'presentation/pages/search_page.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/dashboard',
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
          path: '/publish',
          page: PublishRoute.page,
        ),
      ];
}
