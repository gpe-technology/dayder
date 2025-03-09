import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
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
      page: Dashboard.page,
      children: [
        AutoRoute(
          initial: true,
          path: 'Announcement',
          page: Announcement.page,
          title: (_, __) => 'Announcement',
        ),
        AutoRoute(path: 'chat', page: Chat.page, title: (_, __) => 'Chat'),
        AutoRoute(
          path: 'my-account',
          page: Account.page,
          title: (_, __) => 'My account',
          children: [
            AutoRoute(path: '', page: AccountMenu.page),
            AutoRoute(path: 'profile', page: Profile.page),
          ],
        ),
        AutoRoute(path: 'splash', page: Splash.page),
        AutoRoute(path: 'publish', page: Publish.page),
        AutoRoute(path: 'set-name', page: SetName.page),
        AutoRoute(path: 'detail', page: Detail.page),
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
