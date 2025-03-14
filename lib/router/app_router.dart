import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/router/router.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({
    required AuthenticationRepository authenticationRepository,
    required GlobalKey<NavigatorState> key,
  }) : _authenticationRepository = authenticationRepository,
       super(navigatorKey: key);

  final AuthenticationRepository _authenticationRepository;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/dashboard',
      page: AppDashboardRoute.page,
      children: [
        AutoRoute(
          initial: true,
          path: 'marketplace',
          page: AppMarketplaceRoute.page,
          children: [
            AutoRoute(
              path: '',
              page: MarketplaceRoute.page,
              children: [
                AutoRoute(path: '', page: AnnouncementsRoute.page),
                AutoRoute(path: 'detail', page: AnnouncementDetailRoute.page),
                AutoRoute(path: 'add', page: AnnouncementAddRoute.page),
              ],
            ),
          ],
        ),
        AutoRoute(
          path: 'discussions',
          page: AppDiscussionsRoute.page,
          title: (_, __) => 'Chat',
          children: [AutoRoute(path: '', page: DiscussionsRoute.page)],
        ),
        AutoRoute(
          path: 'menu',
          page: AppMenuRoute.page,
          children: [
            AutoRoute(path: '', page: MenuRoute.page),
            AutoRoute(path: 'profile', page: MenuProfileRoute.page),
            AutoRoute(path: 'setting', page: MenuSettingRoute.page),
            AutoRoute(path: 'edit', page: AccountEditRoute.page),
          ],
        ),
      ],
    ),

    AutoRoute(
      path: '/login',
      page: AppLoginRoute.page,
      children: [
        AutoRoute(path: '', page: LoginRoute.page),
        AutoRoute(path: 'email', page: LoginEmailRoute.page),
        AutoRoute(path: 'login-phone', page: LoginPhoneRoute.page),
        AutoRoute(
          path: 'login-phone-verification',
          page: LoginPhoneVerificationRoute.page,
        ),
      ],
    ),
    RedirectRoute(path: '/', redirectTo: '/dashboard'),
  ];

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple((resolver, router) {
      final routeAuthorized = [
        AppLoginRoute.name,
        LoginRoute.name,
        LoginEmailRoute.name,
        LoginPhoneRoute.name,
        LoginPhoneVerificationRoute.name,
      ];
      if (_authenticationRepository.currentUser.isNotEmpty ||
          routeAuthorized.contains(resolver.routeName)) {
        resolver.next();
      } else {
        resolver.redirectUntil(
          AppLoginRoute(
            onResult: (didLogin) {
              if (resolver.isResolved) return;
              resolver.next(didLogin);
            },
          ),
          replace: true,
        );
      }
    }),
  ];
}
