// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
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
import 'package:dayder/src/presentation/pages/profile/set_email_page.dart'
    as _i12;
import 'package:dayder/src/presentation/pages/profile/set_name_page.dart'
    as _i11;
import 'package:dayder/src/presentation/pages/profile/update_email_page.dart'
    as _i13;
import 'package:dayder/src/presentation/pages/profile/update_name_page.dart'
    as _i14;
import 'package:dayder/src/presentation/pages/publish_page.dart' as _i9;
import 'package:dayder/src/presentation/pages/search_page.dart' as _i10;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    AuthWrapper.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthWrapper(),
      );
    },
    Chat.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    Code.name: (routeData) {
      return _i15.AutoRoutePage<String>(
        routeData: routeData,
        child: const _i3.CodeVerificationPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    Login.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    Account.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyAccountPage(),
      );
    },
    Profile.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    ProfileWrapper.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileWrapper(),
      );
    },
    Publish.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PublishPage(),
      );
    },
    Search.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SearchPage(),
      );
    },
    SetName.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SetNamePage(),
      );
    },
    SetEmail.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SetNamePage(),
      );
    },
    UpdateEmail.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.UpdateEmailPage(),
      );
    },
    UpdateName.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.UpdateNamePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthWrapper]
class AuthWrapper extends _i15.PageRouteInfo<void> {
  const AuthWrapper({List<_i15.PageRouteInfo>? children})
      : super(
          AuthWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapper';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class Chat extends _i15.PageRouteInfo<void> {
  const Chat({List<_i15.PageRouteInfo>? children})
      : super(
          Chat.name,
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CodeVerificationPage]
class Code extends _i15.PageRouteInfo<void> {
  const Code({List<_i15.PageRouteInfo>? children})
      : super(
          Code.name,
          initialChildren: children,
        );

  static const String name = 'Code';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class Dashboard extends _i15.PageRouteInfo<void> {
  const Dashboard({List<_i15.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class Login extends _i15.PageRouteInfo<void> {
  const Login({List<_i15.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MyAccountPage]
class Account extends _i15.PageRouteInfo<void> {
  const Account({List<_i15.PageRouteInfo>? children})
      : super(
          Account.name,
          initialChildren: children,
        );

  static const String name = 'Account';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class Profile extends _i15.PageRouteInfo<void> {
  const Profile({List<_i15.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ProfileWrapper]
class ProfileWrapper extends _i15.PageRouteInfo<void> {
  const ProfileWrapper({List<_i15.PageRouteInfo>? children})
      : super(
          ProfileWrapper.name,
          initialChildren: children,
        );

  static const String name = 'ProfileWrapper';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PublishPage]
class Publish extends _i15.PageRouteInfo<void> {
  const Publish({List<_i15.PageRouteInfo>? children})
      : super(
          Publish.name,
          initialChildren: children,
        );

  static const String name = 'Publish';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SearchPage]
class Search extends _i15.PageRouteInfo<void> {
  const Search({List<_i15.PageRouteInfo>? children})
      : super(
          Search.name,
          initialChildren: children,
        );

  static const String name = 'Search';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SetNamePage]
class SetName extends _i15.PageRouteInfo<void> {
  const SetName({List<_i15.PageRouteInfo>? children})
      : super(
          SetName.name,
          initialChildren: children,
        );

  static const String name = 'SetName';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SetNamePage]
class SetEmail extends _i15.PageRouteInfo<void> {
  const SetEmail({List<_i15.PageRouteInfo>? children})
      : super(
          SetEmail.name,
          initialChildren: children,
        );

  static const String name = 'SetEmail';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i13.UpdateEmailPage]
class UpdateEmail extends _i15.PageRouteInfo<void> {
  const UpdateEmail({List<_i15.PageRouteInfo>? children})
      : super(
          UpdateEmail.name,
          initialChildren: children,
        );

  static const String name = 'UpdateEmail';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.UpdateNamePage]
class UpdateName extends _i15.PageRouteInfo<void> {
  const UpdateName({List<_i15.PageRouteInfo>? children})
      : super(
          UpdateName.name,
          initialChildren: children,
        );

  static const String name = 'UpdateName';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
