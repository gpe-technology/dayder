// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:dayder/src/presentation/pages/auth_declarative.dart' as _i1;
import 'package:dayder/src/presentation/pages/chat_page.dart' as _i2;
import 'package:dayder/src/presentation/pages/code_verification_page.dart'
    as _i3;
import 'package:dayder/src/presentation/pages/dashboard_page.dart' as _i4;
import 'package:dayder/src/presentation/pages/login_page.dart' as _i5;
import 'package:dayder/src/presentation/pages/my_account_page.dart' as _i6;
import 'package:dayder/src/presentation/pages/publish_page.dart' as _i7;
import 'package:dayder/src/presentation/pages/search_page.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AppDeclarative.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppDeclarative(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    CodeVerificationRoute.name: (routeData) {
      return _i9.AutoRoutePage<String>(
        routeData: routeData,
        child: const _i3.CodeVerificationPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    MyAccountRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyAccountPage(),
      );
    },
    PublishRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PublishPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SearchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppDeclarative]
class AppDeclarative extends _i9.PageRouteInfo<void> {
  const AppDeclarative({List<_i9.PageRouteInfo>? children})
      : super(
          AppDeclarative.name,
          initialChildren: children,
        );

  static const String name = 'AppDeclarative';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i9.PageRouteInfo<void> {
  const ChatRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CodeVerificationPage]
class CodeVerificationRoute extends _i9.PageRouteInfo<void> {
  const CodeVerificationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CodeVerificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'CodeVerificationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MyAccountPage]
class MyAccountRoute extends _i9.PageRouteInfo<void> {
  const MyAccountRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MyAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyAccountRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PublishPage]
class PublishRoute extends _i9.PageRouteInfo<void> {
  const PublishRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PublishRoute.name,
          initialChildren: children,
        );

  static const String name = 'PublishRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
