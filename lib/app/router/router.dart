import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@AutoRouterConfig()
class AppRouter extends RootStackRouter implements AutoRouteGuard {
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
      initial: true,
      page: Dashboard.page,
      children: [
        AutoRoute(
          initial: true,
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
          children: [
            AutoRoute(path: '', page: AccountMenu.page),
            AutoRoute(path: 'profile', page: Profile.page),
          ],
        ),
      ],
    ),
    AutoRoute(path: '/login-email', page: LoginEmail.page),
    AutoRoute(path: '/login-phone', page: LoginPhone.page),
    AutoRoute(
      path: '/login-phone-verification',
      page: LoginPhoneVerification.page,
    ),
    AutoRoute(path: '/login', page: AppLoginRoute.page),
    AutoRoute(path: '/splash', page: Splash.page),
    AutoRoute(path: '/publish', page: Publish.page),
    AutoRoute(path: '/set-name', page: SetName.page),
    AutoRoute(path: '/detail', page: Detail.page),
    RedirectRoute(path: '/', redirectTo: '/dashboard'),
  ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final routeAuthorized = [
      AppLoginRoute.name,
      LoginEmail.name,
      LoginPhone.name,
      LoginPhoneVerification.name,
    ];
    if (_authenticationRepository.currentUser.isNotEmpty ||
        routeAuthorized.contains(resolver.route.name)) {
      resolver.next();
    } else {
      resolver.redirect(
        AppLoginRoute(
          onResult: (success) {
            resolver.resolveNext(success, reevaluateNext: false);
          },
        ),
      );
    }
  }
}
