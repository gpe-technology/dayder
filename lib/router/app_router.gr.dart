// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:dayder/account/view/account_edit_page.dart' as _i1;
import 'package:dayder/account/view/account_page.dart' as _i2;
import 'package:dayder/account/view/account_profile_page.dart' as _i3;
import 'package:dayder/account/view/account_setting_page.dart' as _i4;
import 'package:dayder/announcement/announcement.dart' as _i20;
import 'package:dayder/announcement/view/announcement_detail_page.dart' as _i6;
import 'package:dayder/announcement/view/announcement_page.dart' as _i7;
import 'package:dayder/announcement_add/view/announcement_add_page.dart' as _i5;
import 'package:dayder/app/view/app_account_page.dart' as _i8;
import 'package:dayder/app/view/app_announcement_page.dart' as _i9;
import 'package:dayder/app/view/app_chat_page.dart' as _i10;
import 'package:dayder/app/view/app_dashboard_page.dart' as _i11;
import 'package:dayder/app/view/app_login_page.dart' as _i12;
import 'package:dayder/chat/chat_page.dart' as _i13;
import 'package:dayder/login/view/login_email.dart' as _i14;
import 'package:dayder/login/view/login_page.dart' as _i15;
import 'package:dayder/login/view/login_phone.dart' as _i16;
import 'package:dayder/login/view/login_phone_verification.dart' as _i17;
import 'package:dayder/publish/publish_page.dart' as _i18;
import 'package:flutter/material.dart' as _i21;

/// generated route for
/// [_i1.AccountEditPage]
class AccountEditRoute extends _i19.PageRouteInfo<void> {
  const AccountEditRoute({List<_i19.PageRouteInfo>? children})
    : super(AccountEditRoute.name, initialChildren: children);

  static const String name = 'AccountEditRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountEditPage();
    },
  );
}

/// generated route for
/// [_i2.AccountPage]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute({List<_i19.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccountPage();
    },
  );
}

/// generated route for
/// [_i3.AccountProfilePage]
class AccountProfileRoute extends _i19.PageRouteInfo<void> {
  const AccountProfileRoute({List<_i19.PageRouteInfo>? children})
    : super(AccountProfileRoute.name, initialChildren: children);

  static const String name = 'AccountProfileRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i3.AccountProfilePage();
    },
  );
}

/// generated route for
/// [_i4.AccountSettingPage]
class AccountSettingRoute extends _i19.PageRouteInfo<void> {
  const AccountSettingRoute({List<_i19.PageRouteInfo>? children})
    : super(AccountSettingRoute.name, initialChildren: children);

  static const String name = 'AccountSettingRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i4.AccountSettingPage();
    },
  );
}

/// generated route for
/// [_i5.AnnouncementAddPage]
class AnnouncementAddRoute extends _i19.PageRouteInfo<void> {
  const AnnouncementAddRoute({List<_i19.PageRouteInfo>? children})
    : super(AnnouncementAddRoute.name, initialChildren: children);

  static const String name = 'AnnouncementAddRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i5.AnnouncementAddPage();
    },
  );
}

/// generated route for
/// [_i6.AnnouncementDetailPage]
class AnnouncementDetailRoute
    extends _i19.PageRouteInfo<AnnouncementDetailRouteArgs> {
  AnnouncementDetailRoute({
    required _i20.AnnouncementModel announcement,
    _i21.Key? key,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         AnnouncementDetailRoute.name,
         args: AnnouncementDetailRouteArgs(
           announcement: announcement,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AnnouncementDetailRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AnnouncementDetailRouteArgs>();
      return _i6.AnnouncementDetailPage(
        announcement: args.announcement,
        key: args.key,
      );
    },
  );
}

class AnnouncementDetailRouteArgs {
  const AnnouncementDetailRouteArgs({required this.announcement, this.key});

  final _i20.AnnouncementModel announcement;

  final _i21.Key? key;

  @override
  String toString() {
    return 'AnnouncementDetailRouteArgs{announcement: $announcement, key: $key}';
  }
}

/// generated route for
/// [_i7.AnnouncementPage]
class AnnouncementRoute extends _i19.PageRouteInfo<void> {
  const AnnouncementRoute({List<_i19.PageRouteInfo>? children})
    : super(AnnouncementRoute.name, initialChildren: children);

  static const String name = 'AnnouncementRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i7.AnnouncementPage();
    },
  );
}

/// generated route for
/// [_i8.AppAccountPage]
class AppAccountRoute extends _i19.PageRouteInfo<void> {
  const AppAccountRoute({List<_i19.PageRouteInfo>? children})
    : super(AppAccountRoute.name, initialChildren: children);

  static const String name = 'AppAccountRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i8.AppAccountPage();
    },
  );
}

/// generated route for
/// [_i9.AppAnnouncementPage]
class AppAnnouncementRoute extends _i19.PageRouteInfo<void> {
  const AppAnnouncementRoute({List<_i19.PageRouteInfo>? children})
    : super(AppAnnouncementRoute.name, initialChildren: children);

  static const String name = 'AppAnnouncementRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i9.AppAnnouncementPage();
    },
  );
}

/// generated route for
/// [_i10.AppChatPage]
class AppChatRoute extends _i19.PageRouteInfo<void> {
  const AppChatRoute({List<_i19.PageRouteInfo>? children})
    : super(AppChatRoute.name, initialChildren: children);

  static const String name = 'AppChatRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i10.AppChatPage();
    },
  );
}

/// generated route for
/// [_i11.AppDashboardPage]
class AppDashboardRoute extends _i19.PageRouteInfo<void> {
  const AppDashboardRoute({List<_i19.PageRouteInfo>? children})
    : super(AppDashboardRoute.name, initialChildren: children);

  static const String name = 'AppDashboardRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i11.AppDashboardPage();
    },
  );
}

/// generated route for
/// [_i12.AppLoginPage]
class AppLoginRoute extends _i19.PageRouteInfo<AppLoginRouteArgs> {
  AppLoginRoute({
    required _i21.ValueChanged<bool> onResult,
    _i21.Key? key,
    List<_i19.PageRouteInfo>? children,
  }) : super(
         AppLoginRoute.name,
         args: AppLoginRouteArgs(onResult: onResult, key: key),
         initialChildren: children,
       );

  static const String name = 'AppLoginRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppLoginRouteArgs>();
      return _i12.AppLoginPage(onResult: args.onResult, key: args.key);
    },
  );
}

class AppLoginRouteArgs {
  const AppLoginRouteArgs({required this.onResult, this.key});

  final _i21.ValueChanged<bool> onResult;

  final _i21.Key? key;

  @override
  String toString() {
    return 'AppLoginRouteArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i13.ChatPage]
class Chat extends _i19.PageRouteInfo<void> {
  const Chat({List<_i19.PageRouteInfo>? children})
    : super(Chat.name, initialChildren: children);

  static const String name = 'Chat';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i13.ChatPage();
    },
  );
}

/// generated route for
/// [_i14.LoginEmailPage]
class LoginEmailRoute extends _i19.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i19.PageRouteInfo>? children})
    : super(LoginEmailRoute.name, initialChildren: children);

  static const String name = 'LoginEmailRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i14.LoginEmailPage();
    },
  );
}

/// generated route for
/// [_i15.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute({List<_i19.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i15.LoginPage();
    },
  );
}

/// generated route for
/// [_i16.LoginPhonePage]
class LoginPhoneRoute extends _i19.PageRouteInfo<void> {
  const LoginPhoneRoute({List<_i19.PageRouteInfo>? children})
    : super(LoginPhoneRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i16.LoginPhonePage();
    },
  );
}

/// generated route for
/// [_i17.LoginPhoneVerificationPage]
class LoginPhoneVerificationRoute extends _i19.PageRouteInfo<void> {
  const LoginPhoneVerificationRoute({List<_i19.PageRouteInfo>? children})
    : super(LoginPhoneVerificationRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneVerificationRoute';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i17.LoginPhoneVerificationPage();
    },
  );
}

/// generated route for
/// [_i18.PublishPage]
class Publish extends _i19.PageRouteInfo<void> {
  const Publish({List<_i19.PageRouteInfo>? children})
    : super(Publish.name, initialChildren: children);

  static const String name = 'Publish';

  static _i19.PageInfo page = _i19.PageInfo(
    name,
    builder: (data) {
      return const _i18.PublishPage();
    },
  );
}
