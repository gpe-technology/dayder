// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:dayder/src/presentation/pages/auth_wrapper.dart' as _i1;
import 'package:dayder/src/presentation/pages/chat_page.dart' as _i2;
import 'package:dayder/src/presentation/pages/code_verification_page.dart'
    as _i3;
import 'package:dayder/src/presentation/pages/dashboard_page.dart' as _i4;
import 'package:dayder/src/presentation/pages/login_page.dart' as _i5;
import 'package:dayder/src/presentation/pages/my_account_page.dart' as _i6;
import 'package:dayder/src/presentation/pages/profile/profile_page.dart' as _i7;
import 'package:dayder/src/presentation/pages/profile/profile_wrapper.dart'
    as _i8;
import 'package:dayder/src/presentation/pages/profile/set_value_page.dart'
    as _i11;
import 'package:dayder/src/presentation/pages/profile/update_value_page.dart'
    as _i12;
import 'package:dayder/src/presentation/pages/publish_page.dart' as _i9;
import 'package:dayder/src/presentation/pages/search_page.dart' as _i10;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AuthWrapper.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthWrapper(),
      );
    },
    Chat.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    Code.name: (routeData) {
      return _i13.AutoRoutePage<String>(
        routeData: routeData,
        child: const _i3.CodeVerificationPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    Login.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    Account.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyAccountPage(),
      );
    },
    Profile.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    ProfileWrapper.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileWrapper(),
      );
    },
    Publish.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PublishPage(),
      );
    },
    Search.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SearchPage(),
      );
    },
    SetValue.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SetValuePage(),
      );
    },
    UpdateValue.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.UpdateValuePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapper extends _i13.PageRouteInfo<void> {
  const AuthWrapper({List<_i13.PageRouteInfo>? children})
      : super(
          AuthWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapper';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class Chat extends _i13.PageRouteInfo<void> {
  const Chat({List<_i13.PageRouteInfo>? children})
      : super(
          Chat.name,
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CodeVerificationPage]
class Code extends _i13.PageRouteInfo<void> {
  const Code({List<_i13.PageRouteInfo>? children})
      : super(
          Code.name,
          initialChildren: children,
        );

  static const String name = 'Code';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class Dashboard extends _i13.PageRouteInfo<void> {
  const Dashboard({List<_i13.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class Login extends _i13.PageRouteInfo<void> {
  const Login({List<_i13.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MyAccountPage]
class Account extends _i13.PageRouteInfo<void> {
  const Account({List<_i13.PageRouteInfo>? children})
      : super(
          Account.name,
          initialChildren: children,
        );

  static const String name = 'Account';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class Profile extends _i13.PageRouteInfo<void> {
  const Profile({List<_i13.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileWrapper]
class ProfileWrapper extends _i13.PageRouteInfo<void> {
  const ProfileWrapper({List<_i13.PageRouteInfo>? children})
      : super(
          ProfileWrapper.name,
          initialChildren: children,
        );

  static const String name = 'ProfileWrapper';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PublishPage]
class Publish extends _i13.PageRouteInfo<void> {
  const Publish({List<_i13.PageRouteInfo>? children})
      : super(
          Publish.name,
          initialChildren: children,
        );

  static const String name = 'Publish';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SearchPage]
class Search extends _i13.PageRouteInfo<void> {
  const Search({List<_i13.PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SetValuePage]
class SetValue extends _i13.PageRouteInfo<void> {
  const SetValue({List<_i13.PageRouteInfo>? children})
      : super(
          SetValue.name,
          initialChildren: children,
        );

  static const String name = 'SetValue';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.UpdateValuePage]
class UpdateValue extends _i13.PageRouteInfo<void> {
  const UpdateValue({List<_i13.PageRouteInfo>? children})
      : super(
          UpdateValue.name,
          initialChildren: children,
        );

  static const String name = 'UpdateValue';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
