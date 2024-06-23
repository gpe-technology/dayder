// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:dayder/account/view/my_account_page.dart' as _i9;
import 'package:dayder/account/view/profile_page.dart' as _i10;
import 'package:dayder/account/view/set_name_page.dart' as _i12;
import 'package:dayder/announcement/models/announcement_model.dart' as _i16;
import 'package:dayder/announcement/view/announcement_detail.dart' as _i1;
import 'package:dayder/announcement/view/announcement_page.dart' as _i2;
import 'package:dayder/app/view/dashboard_page.dart' as _i4;
import 'package:dayder/app/view/login_page.dart' as _i6;
import 'package:dayder/app/view/splash_page.dart' as _i13;
import 'package:dayder/chat/chat_page.dart' as _i3;
import 'package:dayder/login/view/login_email.dart' as _i5;
import 'package:dayder/login/view/login_phone.dart' as _i7;
import 'package:dayder/login/view/login_phone_verification.dart' as _i8;
import 'package:dayder/publish/publish_page.dart' as _i11;
import 'package:flutter/material.dart' as _i15;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AnnouncementDetail(
          key: args.key,
          announcement: args.announcement,
        ),
      );
    },
    Announcement.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AnnouncementPage(),
      );
    },
    Chat.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ChatPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashboardPage(),
      );
    },
    LoginEmail.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginEmail(),
      );
    },
    Login.name: (routeData) {
      final args = routeData.argsAs<LoginArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LoginPage(
          onResult: args.onResult,
          key: args.key,
        ),
      );
    },
    LoginPhone.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPhone(),
      );
    },
    LoginPhoneVerification.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPhoneVerification(),
      );
    },
    Account.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyAccountPage(),
      );
    },
    Profile.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
    Publish.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.PublishPage(),
      );
    },
    SetName.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SetNamePage(),
      );
    },
    Splash.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnnouncementDetail]
class Detail extends _i14.PageRouteInfo<DetailArgs> {
  Detail({
    _i15.Key? key,
    required _i16.AnnouncementModel announcement,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          Detail.name,
          args: DetailArgs(
            key: key,
            announcement: announcement,
          ),
          initialChildren: children,
        );

  static const String name = 'Detail';

  static const _i14.PageInfo<DetailArgs> page = _i14.PageInfo<DetailArgs>(name);
}

class DetailArgs {
  const DetailArgs({
    this.key,
    required this.announcement,
  });

  final _i15.Key? key;

  final _i16.AnnouncementModel announcement;

  @override
  String toString() {
    return 'DetailArgs{key: $key, announcement: $announcement}';
  }
}

/// generated route for
/// [_i2.AnnouncementPage]
class Announcement extends _i14.PageRouteInfo<void> {
  const Announcement({List<_i14.PageRouteInfo>? children})
      : super(
          Announcement.name,
          initialChildren: children,
        );

  static const String name = 'Announcement';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ChatPage]
class Chat extends _i14.PageRouteInfo<void> {
  const Chat({List<_i14.PageRouteInfo>? children})
      : super(
          Chat.name,
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DashboardPage]
class Dashboard extends _i14.PageRouteInfo<void> {
  const Dashboard({List<_i14.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginEmail]
class LoginEmail extends _i14.PageRouteInfo<void> {
  const LoginEmail({List<_i14.PageRouteInfo>? children})
      : super(
          LoginEmail.name,
          initialChildren: children,
        );

  static const String name = 'LoginEmail';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class Login extends _i14.PageRouteInfo<LoginArgs> {
  Login({
    required dynamic Function(bool) onResult,
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          Login.name,
          args: LoginArgs(
            onResult: onResult,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i14.PageInfo<LoginArgs> page = _i14.PageInfo<LoginArgs>(name);
}

class LoginArgs {
  const LoginArgs({
    required this.onResult,
    this.key,
  });

  final dynamic Function(bool) onResult;

  final _i15.Key? key;

  @override
  String toString() {
    return 'LoginArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i7.LoginPhone]
class LoginPhone extends _i14.PageRouteInfo<void> {
  const LoginPhone({List<_i14.PageRouteInfo>? children})
      : super(
          LoginPhone.name,
          initialChildren: children,
        );

  static const String name = 'LoginPhone';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPhoneVerification]
class LoginPhoneVerification extends _i14.PageRouteInfo<void> {
  const LoginPhoneVerification({List<_i14.PageRouteInfo>? children})
      : super(
          LoginPhoneVerification.name,
          initialChildren: children,
        );

  static const String name = 'LoginPhoneVerification';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MyAccountPage]
class Account extends _i14.PageRouteInfo<void> {
  const Account({List<_i14.PageRouteInfo>? children})
      : super(
          Account.name,
          initialChildren: children,
        );

  static const String name = 'Account';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ProfilePage]
class Profile extends _i14.PageRouteInfo<void> {
  const Profile({List<_i14.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.PublishPage]
class Publish extends _i14.PageRouteInfo<void> {
  const Publish({List<_i14.PageRouteInfo>? children})
      : super(
          Publish.name,
          initialChildren: children,
        );

  static const String name = 'Publish';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SetNamePage]
class SetName extends _i14.PageRouteInfo<void> {
  const SetName({List<_i14.PageRouteInfo>? children})
      : super(
          SetName.name,
          initialChildren: children,
        );

  static const String name = 'SetName';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SplashPage]
class Splash extends _i14.PageRouteInfo<void> {
  const Splash({List<_i14.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
