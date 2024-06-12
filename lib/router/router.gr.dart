// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i14;
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:dayder/account/my_account_page.dart' as _i6;
import 'package:dayder/account/profile_page.dart' as _i7;
import 'package:dayder/account/set_name_page.dart' as _i9;
import 'package:dayder/announcement/view/announcement_detail.dart' as _i1;
import 'package:dayder/announcement/view/announcement_page.dart' as _i2;
import 'package:dayder/app/view/dashboard_page.dart' as _i4;
import 'package:dayder/app/view/splash_page.dart' as _i10;
import 'package:dayder/chat/chat_page.dart' as _i3;
import 'package:dayder/data/models/announcement_model.dart' as _i13;
import 'package:dayder/login/login_page.dart' as _i5;
import 'package:dayder/publish/publish_page.dart' as _i8;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AnnouncementDetail(
          key: args.key,
          announcement: args.announcement,
        ),
      );
    },
    Announcement.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AnnouncementPage(),
      );
    },
    Chat.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChatPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    Login.name: (routeData) {
      final args = routeData.argsAs<LoginArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LoginPage(
          authenticationRepository: args.authenticationRepository,
          onResult: args.onResult,
          key: args.key,
        ),
      );
    },
    Account.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MyAccountPage(),
      );
    },
    Profile.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfilePage(),
      );
    },
    Publish.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.PublishPage(),
      );
    },
    SetName.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SetNamePage(),
      );
    },
    Splash.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnnouncementDetail]
class Detail extends _i11.PageRouteInfo<DetailArgs> {
  Detail({
    _i12.Key? key,
    required _i13.AnnouncementModel announcement,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          Detail.name,
          args: DetailArgs(
            key: key,
            announcement: announcement,
          ),
          initialChildren: children,
        );

  static const String name = 'Detail';

  static const _i11.PageInfo<DetailArgs> page = _i11.PageInfo<DetailArgs>(name);
}

class DetailArgs {
  const DetailArgs({
    this.key,
    required this.announcement,
  });

  final _i12.Key? key;

  final _i13.AnnouncementModel announcement;

  @override
  String toString() {
    return 'DetailArgs{key: $key, announcement: $announcement}';
  }
}

/// generated route for
/// [_i2.AnnouncementPage]
class Announcement extends _i11.PageRouteInfo<void> {
  const Announcement({List<_i11.PageRouteInfo>? children})
      : super(
          Announcement.name,
          initialChildren: children,
        );

  static const String name = 'Announcement';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChatPage]
class Chat extends _i11.PageRouteInfo<void> {
  const Chat({List<_i11.PageRouteInfo>? children})
      : super(
          Chat.name,
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class Dashboard extends _i11.PageRouteInfo<void> {
  const Dashboard({List<_i11.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class Login extends _i11.PageRouteInfo<LoginArgs> {
  Login({
    required _i14.AuthenticationRepository authenticationRepository,
    required dynamic Function(bool) onResult,
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          Login.name,
          args: LoginArgs(
            authenticationRepository: authenticationRepository,
            onResult: onResult,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i11.PageInfo<LoginArgs> page = _i11.PageInfo<LoginArgs>(name);
}

class LoginArgs {
  const LoginArgs({
    required this.authenticationRepository,
    required this.onResult,
    this.key,
  });

  final _i14.AuthenticationRepository authenticationRepository;

  final dynamic Function(bool) onResult;

  final _i12.Key? key;

  @override
  String toString() {
    return 'LoginArgs{authenticationRepository: $authenticationRepository, onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i6.MyAccountPage]
class Account extends _i11.PageRouteInfo<void> {
  const Account({List<_i11.PageRouteInfo>? children})
      : super(
          Account.name,
          initialChildren: children,
        );

  static const String name = 'Account';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ProfilePage]
class Profile extends _i11.PageRouteInfo<void> {
  const Profile({List<_i11.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PublishPage]
class Publish extends _i11.PageRouteInfo<void> {
  const Publish({List<_i11.PageRouteInfo>? children})
      : super(
          Publish.name,
          initialChildren: children,
        );

  static const String name = 'Publish';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SetNamePage]
class SetName extends _i11.PageRouteInfo<void> {
  const SetName({List<_i11.PageRouteInfo>? children})
      : super(
          SetName.name,
          initialChildren: children,
        );

  static const String name = 'SetName';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashPage]
class Splash extends _i11.PageRouteInfo<void> {
  const Splash({List<_i11.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
