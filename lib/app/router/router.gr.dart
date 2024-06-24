// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:dayder/account/view/my_account_page.dart' as _i10;
import 'package:dayder/account/view/profile_page.dart' as _i11;
import 'package:dayder/account/view/set_name_page.dart' as _i13;
import 'package:dayder/announcement/models/announcement_model.dart' as _i17;
import 'package:dayder/announcement/view/announcement_detail.dart' as _i1;
import 'package:dayder/announcement/view/announcement_page.dart' as _i2;
import 'package:dayder/app/view/app_login_page.dart' as _i3;
import 'package:dayder/app/view/dashboard_page.dart' as _i5;
import 'package:dayder/app/view/splash_page.dart' as _i14;
import 'package:dayder/chat/chat_page.dart' as _i4;
import 'package:dayder/login/view/login_email.dart' as _i6;
import 'package:dayder/login/view/login_phone.dart' as _i7;
import 'package:dayder/login/view/login_phone_verification.dart' as _i8;
import 'package:dayder/login/view/login_root.dart' as _i9;
import 'package:dayder/publish/publish_page.dart' as _i12;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AnnouncementDetail(
          key: args.key,
          announcement: args.announcement,
        ),
      );
    },
    Announcement.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AnnouncementPage(),
      );
    },
    AppLoginRoute.name: (routeData) {
      final args = routeData.argsAs<AppLoginRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.AppLoginPage(
          onResult: args.onResult,
          key: args.key,
        ),
      );
    },
    Chat.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashboardPage(),
      );
    },
    LoginEmail.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginEmail(),
      );
    },
    LoginPhone.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPhone(),
      );
    },
    LoginPhoneVerification.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPhoneVerification(),
      );
    },
    LoginRoot.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginRoot(),
      );
    },
    Account.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.MyAccountPage(),
      );
    },
    Profile.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
      );
    },
    Publish.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PublishPage(),
      );
    },
    SetName.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SetNamePage(),
      );
    },
    Splash.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnnouncementDetail]
class Detail extends _i15.PageRouteInfo<DetailArgs> {
  Detail({
    _i16.Key? key,
    required _i17.AnnouncementModel announcement,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          Detail.name,
          args: DetailArgs(
            key: key,
            announcement: announcement,
          ),
          initialChildren: children,
        );

  static const String name = 'Detail';

  static const _i15.PageInfo<DetailArgs> page = _i15.PageInfo<DetailArgs>(name);
}

class DetailArgs {
  const DetailArgs({
    this.key,
    required this.announcement,
  });

  final _i16.Key? key;

  final _i17.AnnouncementModel announcement;

  @override
  String toString() {
    return 'DetailArgs{key: $key, announcement: $announcement}';
  }
}

/// generated route for
/// [_i2.AnnouncementPage]
class Announcement extends _i15.PageRouteInfo<void> {
  const Announcement({List<_i15.PageRouteInfo>? children})
      : super(
          Announcement.name,
          initialChildren: children,
        );

  static const String name = 'Announcement';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AppLoginPage]
class AppLoginRoute extends _i15.PageRouteInfo<AppLoginRouteArgs> {
  AppLoginRoute({
    required dynamic Function(bool) onResult,
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          AppLoginRoute.name,
          args: AppLoginRouteArgs(
            onResult: onResult,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'AppLoginRoute';

  static const _i15.PageInfo<AppLoginRouteArgs> page =
      _i15.PageInfo<AppLoginRouteArgs>(name);
}

class AppLoginRouteArgs {
  const AppLoginRouteArgs({
    required this.onResult,
    this.key,
  });

  final dynamic Function(bool) onResult;

  final _i16.Key? key;

  @override
  String toString() {
    return 'AppLoginRouteArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i4.ChatPage]
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
/// [_i5.DashboardPage]
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
/// [_i6.LoginEmail]
class LoginEmail extends _i15.PageRouteInfo<void> {
  const LoginEmail({List<_i15.PageRouteInfo>? children})
      : super(
          LoginEmail.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmail';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPhone]
class LoginPhone extends _i15.PageRouteInfo<void> {
  const LoginPhone({List<_i15.PageRouteInfo>? children})
      : super(
          LoginPhone.name,
          initialChildren: children,
        );

  static const String name = 'LoginPhone';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPhoneVerification]
class LoginPhoneVerification extends _i15.PageRouteInfo<void> {
  const LoginPhoneVerification({List<_i15.PageRouteInfo>? children})
      : super(
          LoginPhoneVerification.name,
          initialChildren: children,
        );

  static const String name = 'LoginPhoneVerification';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginRoot]
class LoginRoot extends _i15.PageRouteInfo<void> {
  const LoginRoot({List<_i15.PageRouteInfo>? children})
      : super(
          LoginRoot.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoot';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.MyAccountPage]
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
/// [_i11.ProfilePage]
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
/// [_i12.PublishPage]
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
/// [_i13.SetNamePage]
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
/// [_i14.SplashPage]
class Splash extends _i15.PageRouteInfo<void> {
  const Splash({List<_i15.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}
