// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:dayder/account/view/account_page.dart' as _i1;
import 'package:dayder/account/view/account_profile_page.dart' as _i2;
import 'package:dayder/account/view/set_name_page.dart' as _i17;
import 'package:dayder/announcement/announcement.dart' as _i19;
import 'package:dayder/announcement/view/announcement_detail_page.dart' as _i4;
import 'package:dayder/announcement/view/announcement_page.dart' as _i5;
import 'package:dayder/announcement_add/view/announcement_add_page.dart' as _i3;
import 'package:dayder/app/view/app_account_page.dart' as _i6;
import 'package:dayder/app/view/app_announcement_page.dart' as _i7;
import 'package:dayder/app/view/app_chat_page.dart' as _i8;
import 'package:dayder/app/view/app_dashboard_page.dart' as _i9;
import 'package:dayder/app/view/app_login_page.dart' as _i10;
import 'package:dayder/chat/chat_page.dart' as _i11;
import 'package:dayder/login/view/login_email.dart' as _i12;
import 'package:dayder/login/view/login_page.dart' as _i13;
import 'package:dayder/login/view/login_phone.dart' as _i14;
import 'package:dayder/login/view/login_phone_verification.dart' as _i15;
import 'package:dayder/publish/publish_page.dart' as _i16;
import 'package:flutter/material.dart' as _i20;

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i18.PageRouteInfo<void> {
  const AccountRoute({List<_i18.PageRouteInfo>? children})
    : super(AccountRoute.name, initialChildren: children);

  static const String name = 'AccountRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountPage();
    },
  );
}

/// generated route for
/// [_i2.AccountProfilePage]
class AccountProfileRoute extends _i18.PageRouteInfo<void> {
  const AccountProfileRoute({List<_i18.PageRouteInfo>? children})
    : super(AccountProfileRoute.name, initialChildren: children);

  static const String name = 'AccountProfileRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i2.AccountProfilePage();
    },
  );
}

/// generated route for
/// [_i3.AnnouncementAddPage]
class AnnouncementAddRoute extends _i18.PageRouteInfo<void> {
  const AnnouncementAddRoute({List<_i18.PageRouteInfo>? children})
    : super(AnnouncementAddRoute.name, initialChildren: children);

  static const String name = 'AnnouncementAddRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i3.AnnouncementAddPage();
    },
  );
}

/// generated route for
/// [_i4.AnnouncementDetailPage]
class AnnouncementDetailRoute
    extends _i18.PageRouteInfo<AnnouncementDetailRouteArgs> {
  AnnouncementDetailRoute({
    required _i19.AnnouncementModel announcement,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AnnouncementDetailRoute.name,
         args: AnnouncementDetailRouteArgs(
           announcement: announcement,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AnnouncementDetailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AnnouncementDetailRouteArgs>();
      return _i4.AnnouncementDetailPage(
        announcement: args.announcement,
        key: args.key,
      );
    },
  );
}

class AnnouncementDetailRouteArgs {
  const AnnouncementDetailRouteArgs({required this.announcement, this.key});

  final _i19.AnnouncementModel announcement;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AnnouncementDetailRouteArgs{announcement: $announcement, key: $key}';
  }
}

/// generated route for
/// [_i5.AnnouncementPage]
class AnnouncementRoute extends _i18.PageRouteInfo<void> {
  const AnnouncementRoute({List<_i18.PageRouteInfo>? children})
    : super(AnnouncementRoute.name, initialChildren: children);

  static const String name = 'AnnouncementRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i5.AnnouncementPage();
    },
  );
}

/// generated route for
/// [_i6.AppAccountPage]
class AppAccountRoute extends _i18.PageRouteInfo<void> {
  const AppAccountRoute({List<_i18.PageRouteInfo>? children})
    : super(AppAccountRoute.name, initialChildren: children);

  static const String name = 'AppAccountRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i6.AppAccountPage();
    },
  );
}

/// generated route for
/// [_i7.AppAnnouncementPage]
class AppAnnouncementRoute extends _i18.PageRouteInfo<void> {
  const AppAnnouncementRoute({List<_i18.PageRouteInfo>? children})
    : super(AppAnnouncementRoute.name, initialChildren: children);

  static const String name = 'AppAnnouncementRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i7.AppAnnouncementPage();
    },
  );
}

/// generated route for
/// [_i8.AppChatPage]
class AppChatRoute extends _i18.PageRouteInfo<void> {
  const AppChatRoute({List<_i18.PageRouteInfo>? children})
    : super(AppChatRoute.name, initialChildren: children);

  static const String name = 'AppChatRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i8.AppChatPage();
    },
  );
}

/// generated route for
/// [_i9.AppDashboardPage]
class AppDashboardRoute extends _i18.PageRouteInfo<void> {
  const AppDashboardRoute({List<_i18.PageRouteInfo>? children})
    : super(AppDashboardRoute.name, initialChildren: children);

  static const String name = 'AppDashboardRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i9.AppDashboardPage();
    },
  );
}

/// generated route for
/// [_i10.AppLoginPage]
class AppLoginRoute extends _i18.PageRouteInfo<AppLoginRouteArgs> {
  AppLoginRoute({
    required _i20.ValueChanged<bool> onResult,
    _i20.Key? key,
    List<_i18.PageRouteInfo>? children,
  }) : super(
         AppLoginRoute.name,
         args: AppLoginRouteArgs(onResult: onResult, key: key),
         initialChildren: children,
       );

  static const String name = 'AppLoginRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppLoginRouteArgs>();
      return _i10.AppLoginPage(onResult: args.onResult, key: args.key);
    },
  );
}

class AppLoginRouteArgs {
  const AppLoginRouteArgs({required this.onResult, this.key});

  final _i20.ValueChanged<bool> onResult;

  final _i20.Key? key;

  @override
  String toString() {
    return 'AppLoginRouteArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i11.ChatPage]
class Chat extends _i18.PageRouteInfo<void> {
  const Chat({List<_i18.PageRouteInfo>? children})
    : super(Chat.name, initialChildren: children);

  static const String name = 'Chat';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i11.ChatPage();
    },
  );
}

/// generated route for
/// [_i12.LoginEmailPage]
class LoginEmailRoute extends _i18.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i18.PageRouteInfo>? children})
    : super(LoginEmailRoute.name, initialChildren: children);

  static const String name = 'LoginEmailRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i12.LoginEmailPage();
    },
  );
}

/// generated route for
/// [_i13.LoginPage]
class LoginRoute extends _i18.PageRouteInfo<void> {
  const LoginRoute({List<_i18.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i13.LoginPage();
    },
  );
}

/// generated route for
/// [_i14.LoginPhonePage]
class LoginPhoneRoute extends _i18.PageRouteInfo<void> {
  const LoginPhoneRoute({List<_i18.PageRouteInfo>? children})
    : super(LoginPhoneRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i14.LoginPhonePage();
    },
  );
}

/// generated route for
/// [_i15.LoginPhoneVerificationPage]
class LoginPhoneVerificationRoute extends _i18.PageRouteInfo<void> {
  const LoginPhoneVerificationRoute({List<_i18.PageRouteInfo>? children})
    : super(LoginPhoneVerificationRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneVerificationRoute';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i15.LoginPhoneVerificationPage();
    },
  );
}

/// generated route for
/// [_i16.PublishPage]
class Publish extends _i18.PageRouteInfo<void> {
  const Publish({List<_i18.PageRouteInfo>? children})
    : super(Publish.name, initialChildren: children);

  static const String name = 'Publish';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i16.PublishPage();
    },
  );
}

/// generated route for
/// [_i17.SetNamePage]
class SetName extends _i18.PageRouteInfo<void> {
  const SetName({List<_i18.PageRouteInfo>? children})
    : super(SetName.name, initialChildren: children);

  static const String name = 'SetName';

  static _i18.PageInfo page = _i18.PageInfo(
    name,
    builder: (data) {
      return const _i17.SetNamePage();
    },
  );
}
