// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:dayder/account/view/account_menu.dart' as _i1;
import 'package:dayder/account/view/my_account_page.dart' as _i10;
import 'package:dayder/account/view/profile_page.dart' as _i11;
import 'package:dayder/account/view/set_name_page.dart' as _i13;
import 'package:dayder/announcement/models/announcement_model.dart' as _i16;
import 'package:dayder/announcement/view/announcement_detail.dart' as _i2;
import 'package:dayder/announcement/view/announcement_page.dart' as _i3;
import 'package:dayder/app/view/app_login_page.dart' as _i4;
import 'package:dayder/app/view/dashboard_page.dart' as _i6;
import 'package:dayder/app/view/splash_page.dart' as _i14;
import 'package:dayder/chat/chat_page.dart' as _i5;
import 'package:dayder/login/view/login_email.dart' as _i7;
import 'package:dayder/login/view/login_phone.dart' as _i8;
import 'package:dayder/login/view/login_phone_verification.dart' as _i9;
import 'package:dayder/publish/publish_page.dart' as _i12;
import 'package:flutter/material.dart' as _i17;

/// generated route for
/// [_i1.AccountMenu]
class AccountMenu extends _i15.PageRouteInfo<void> {
  const AccountMenu({List<_i15.PageRouteInfo>? children})
    : super(AccountMenu.name, initialChildren: children);

  static const String name = 'AccountMenu';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountMenu();
    },
  );
}

/// generated route for
/// [_i2.AnnouncementDetail]
class Detail extends _i15.PageRouteInfo<DetailArgs> {
  Detail({
    required _i16.AnnouncementModel announcement,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         Detail.name,
         args: DetailArgs(announcement: announcement, key: key),
         initialChildren: children,
       );

  static const String name = 'Detail';

  static _i15.PageInfo page = _i15.PageInfo(
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

  final _i16.AnnouncementModel announcement;

  final _i17.Key? key;

  @override
  String toString() {
    return 'DetailArgs{announcement: $announcement, key: $key}';
  }
}

/// generated route for
/// [_i3.AnnouncementPage]
class Announcement extends _i15.PageRouteInfo<void> {
  const Announcement({List<_i15.PageRouteInfo>? children})
    : super(Announcement.name, initialChildren: children);

  static const String name = 'Announcement';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i3.AnnouncementPage();
    },
  );
}

/// generated route for
/// [_i4.AppLoginPage]
class AppLoginRoute extends _i15.PageRouteInfo<AppLoginRouteArgs> {
  AppLoginRoute({
    required _i17.ValueChanged<bool> onResult,
    _i17.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
         AppLoginRoute.name,
         args: AppLoginRouteArgs(onResult: onResult, key: key),
         initialChildren: children,
       );

  static const String name = 'AppLoginRoute';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppLoginRouteArgs>();
      return _i4.AppLoginPage(onResult: args.onResult, key: args.key);
    },
  );
}

class AppLoginRouteArgs {
  const AppLoginRouteArgs({required this.onResult, this.key});

  final _i17.ValueChanged<bool> onResult;

  final _i17.Key? key;

  @override
  String toString() {
    return 'AppLoginRouteArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i5.ChatPage]
class Chat extends _i15.PageRouteInfo<void> {
  const Chat({List<_i15.PageRouteInfo>? children})
    : super(Chat.name, initialChildren: children);

  static const String name = 'Chat';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i5.ChatPage();
    },
  );
}

/// generated route for
/// [_i6.DashboardPage]
class Dashboard extends _i15.PageRouteInfo<void> {
  const Dashboard({List<_i15.PageRouteInfo>? children})
    : super(Dashboard.name, initialChildren: children);

  static const String name = 'Dashboard';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i6.DashboardPage();
    },
  );
}

/// generated route for
/// [_i7.LoginEmail]
class LoginEmail extends _i15.PageRouteInfo<void> {
  const LoginEmail({List<_i15.PageRouteInfo>? children})
    : super(LoginEmail.name, initialChildren: children);

  static const String name = 'LoginEmail';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i7.LoginEmail();
    },
  );
}

/// generated route for
/// [_i8.LoginPhone]
class LoginPhone extends _i15.PageRouteInfo<void> {
  const LoginPhone({List<_i15.PageRouteInfo>? children})
    : super(LoginPhone.name, initialChildren: children);

  static const String name = 'LoginPhone';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i8.LoginPhone();
    },
  );
}

/// generated route for
/// [_i9.LoginPhoneVerification]
class LoginPhoneVerification extends _i15.PageRouteInfo<void> {
  const LoginPhoneVerification({List<_i15.PageRouteInfo>? children})
    : super(LoginPhoneVerification.name, initialChildren: children);

  static const String name = 'LoginPhoneVerification';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i9.LoginPhoneVerification();
    },
  );
}

/// generated route for
/// [_i10.MyAccountPage]
class Account extends _i15.PageRouteInfo<void> {
  const Account({List<_i15.PageRouteInfo>? children})
    : super(Account.name, initialChildren: children);

  static const String name = 'Account';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i10.MyAccountPage();
    },
  );
}

/// generated route for
/// [_i11.ProfilePage]
class Profile extends _i15.PageRouteInfo<void> {
  const Profile({List<_i15.PageRouteInfo>? children})
    : super(Profile.name, initialChildren: children);

  static const String name = 'Profile';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i11.ProfilePage();
    },
  );
}

/// generated route for
/// [_i12.PublishPage]
class Publish extends _i15.PageRouteInfo<void> {
  const Publish({List<_i15.PageRouteInfo>? children})
    : super(Publish.name, initialChildren: children);

  static const String name = 'Publish';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i12.PublishPage();
    },
  );
}

/// generated route for
/// [_i13.SetNamePage]
class SetName extends _i15.PageRouteInfo<void> {
  const SetName({List<_i15.PageRouteInfo>? children})
    : super(SetName.name, initialChildren: children);

  static const String name = 'SetName';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i13.SetNamePage();
    },
  );
}

/// generated route for
/// [_i14.SplashPage]
class Splash extends _i15.PageRouteInfo<void> {
  const Splash({List<_i15.PageRouteInfo>? children})
    : super(Splash.name, initialChildren: children);

  static const String name = 'Splash';

  static _i15.PageInfo page = _i15.PageInfo(
    name,
    builder: (data) {
      return const _i14.SplashPage();
    },
  );
}
