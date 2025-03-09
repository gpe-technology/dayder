// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:dayder/account/view/account_menu_view.dart' as _i1;
import 'package:dayder/account/view/my_account_page.dart' as _i11;
import 'package:dayder/account/view/profile_page.dart' as _i12;
import 'package:dayder/account/view/set_name_page.dart' as _i14;
import 'package:dayder/announcement/announcement.dart' as _i17;
import 'package:dayder/announcement/view/announcement_detail.dart' as _i2;
import 'package:dayder/announcement/view/announcement_page.dart' as _i3;
import 'package:dayder/app/view/app_login_page.dart' as _i4;
import 'package:dayder/app/view/dashboard_page.dart' as _i6;
import 'package:dayder/app/view/splash_page.dart' as _i15;
import 'package:dayder/chat/chat_page.dart' as _i5;
import 'package:dayder/login/view/login_email.dart' as _i7;
import 'package:dayder/login/view/login_page.dart' as _i8;
import 'package:dayder/login/view/login_phone.dart' as _i9;
import 'package:dayder/login/view/login_phone_verification.dart' as _i10;
import 'package:dayder/publish/publish_page.dart' as _i13;
import 'package:flutter/material.dart' as _i18;

/// generated route for
/// [_i1.AccountMenuView]
class AccountMenu extends _i16.PageRouteInfo<void> {
  const AccountMenu({List<_i16.PageRouteInfo>? children})
    : super(AccountMenu.name, initialChildren: children);

  static const String name = 'AccountMenu';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountMenuView();
    },
  );
}

/// generated route for
/// [_i2.AnnouncementDetail]
class Detail extends _i16.PageRouteInfo<DetailArgs> {
  Detail({
    required _i17.AnnouncementModel announcement,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         Detail.name,
         args: DetailArgs(announcement: announcement, key: key),
         initialChildren: children,
       );

  static const String name = 'Detail';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailArgs>();
      return _i2.AnnouncementDetail(
        announcement: args.announcement,
        key: args.key,
      );
    },
  );
}

class DetailArgs {
  const DetailArgs({required this.announcement, this.key});

  final _i17.AnnouncementModel announcement;

  final _i18.Key? key;

  @override
  String toString() {
    return 'DetailArgs{announcement: $announcement, key: $key}';
  }
}

/// generated route for
/// [_i3.AnnouncementPage]
class Announcement extends _i16.PageRouteInfo<void> {
  const Announcement({List<_i16.PageRouteInfo>? children})
    : super(Announcement.name, initialChildren: children);

  static const String name = 'Announcement';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i3.AnnouncementPage();
    },
  );
}

/// generated route for
/// [_i4.AppLoginPage]
class AppLoginRoute extends _i16.PageRouteInfo<AppLoginRouteArgs> {
  AppLoginRoute({
    required _i18.ValueChanged<bool> onResult,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
         AppLoginRoute.name,
         args: AppLoginRouteArgs(onResult: onResult, key: key),
         initialChildren: children,
       );

  static const String name = 'AppLoginRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppLoginRouteArgs>();
      return _i4.AppLoginPage(onResult: args.onResult, key: args.key);
    },
  );
}

class AppLoginRouteArgs {
  const AppLoginRouteArgs({required this.onResult, this.key});

  final _i18.ValueChanged<bool> onResult;

  final _i18.Key? key;

  @override
  String toString() {
    return 'AppLoginRouteArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i5.ChatPage]
class Chat extends _i16.PageRouteInfo<void> {
  const Chat({List<_i16.PageRouteInfo>? children})
    : super(Chat.name, initialChildren: children);

  static const String name = 'Chat';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i5.ChatPage();
    },
  );
}

/// generated route for
/// [_i6.DashboardPage]
class Dashboard extends _i16.PageRouteInfo<void> {
  const Dashboard({List<_i16.PageRouteInfo>? children})
    : super(Dashboard.name, initialChildren: children);

  static const String name = 'Dashboard';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i6.DashboardPage();
    },
  );
}

/// generated route for
/// [_i7.LoginEmailPage]
class LoginEmailRoute extends _i16.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i16.PageRouteInfo>? children})
    : super(LoginEmailRoute.name, initialChildren: children);

  static const String name = 'LoginEmailRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginEmailPage();
    },
  );
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute({List<_i16.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoginPage();
    },
  );
}

/// generated route for
/// [_i9.LoginPhonePage]
class LoginPhoneRoute extends _i16.PageRouteInfo<void> {
  const LoginPhoneRoute({List<_i16.PageRouteInfo>? children})
    : super(LoginPhoneRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i9.LoginPhonePage();
    },
  );
}

/// generated route for
/// [_i10.LoginPhoneVerificationPage]
class LoginPhoneVerificationRoute extends _i16.PageRouteInfo<void> {
  const LoginPhoneVerificationRoute({List<_i16.PageRouteInfo>? children})
    : super(LoginPhoneVerificationRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneVerificationRoute';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i10.LoginPhoneVerificationPage();
    },
  );
}

/// generated route for
/// [_i11.MyAccountPage]
class Account extends _i16.PageRouteInfo<void> {
  const Account({List<_i16.PageRouteInfo>? children})
    : super(Account.name, initialChildren: children);

  static const String name = 'Account';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i11.MyAccountPage();
    },
  );
}

/// generated route for
/// [_i12.ProfilePage]
class Profile extends _i16.PageRouteInfo<void> {
  const Profile({List<_i16.PageRouteInfo>? children})
    : super(Profile.name, initialChildren: children);

  static const String name = 'Profile';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i12.ProfilePage();
    },
  );
}

/// generated route for
/// [_i13.PublishPage]
class Publish extends _i16.PageRouteInfo<void> {
  const Publish({List<_i16.PageRouteInfo>? children})
    : super(Publish.name, initialChildren: children);

  static const String name = 'Publish';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i13.PublishPage();
    },
  );
}

/// generated route for
/// [_i14.SetNamePage]
class SetName extends _i16.PageRouteInfo<void> {
  const SetName({List<_i16.PageRouteInfo>? children})
    : super(SetName.name, initialChildren: children);

  static const String name = 'SetName';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i14.SetNamePage();
    },
  );
}

/// generated route for
/// [_i15.SplashPage]
class Splash extends _i16.PageRouteInfo<void> {
  const Splash({List<_i16.PageRouteInfo>? children})
    : super(Splash.name, initialChildren: children);

  static const String name = 'Splash';

  static _i16.PageInfo page = _i16.PageInfo(
    name,
    builder: (data) {
      return const _i15.SplashPage();
    },
  );
}
