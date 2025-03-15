// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:dayder/announcements/announcements.dart' as _i21;
import 'package:dayder/announcements/view/announcement_add_page.dart' as _i2;
import 'package:dayder/announcements/view/announcement_detail_page.dart' as _i3;
import 'package:dayder/announcements/view/announcements_page.dart' as _i4;
import 'package:dayder/app/view/app_dashboard_page.dart' as _i5;
import 'package:dayder/app/view/app_discussion_page.dart' as _i6;
import 'package:dayder/app/view/app_login_page.dart' as _i7;
import 'package:dayder/app/view/app_marketplace_page.dart' as _i8;
import 'package:dayder/app/view/app_menu_page.dart' as _i9;
import 'package:dayder/discussions/discussions_page.dart' as _i10;
import 'package:dayder/login/view/login_email.dart' as _i11;
import 'package:dayder/login/view/login_page.dart' as _i12;
import 'package:dayder/login/view/login_phone.dart' as _i13;
import 'package:dayder/login/view/login_phone_verification.dart' as _i14;
import 'package:dayder/marketplace/view/marketplace_page.dart' as _i15;
import 'package:dayder/menu/view/account_edit_page.dart' as _i1;
import 'package:dayder/menu/view/menu_page.dart' as _i16;
import 'package:dayder/menu/view/menu_profile_page.dart' as _i17;
import 'package:dayder/menu/view/menu_setting_page.dart' as _i18;
import 'package:dayder/publish/publish_page.dart' as _i19;
import 'package:flutter/material.dart' as _i22;

/// generated route for
/// [_i1.AccountEditPage]
class AccountEditRoute extends _i20.PageRouteInfo<void> {
  const AccountEditRoute({List<_i20.PageRouteInfo>? children})
    : super(AccountEditRoute.name, initialChildren: children);

  static const String name = 'AccountEditRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i1.AccountEditPage();
    },
  );
}

/// generated route for
/// [_i2.AnnouncementAddPage]
class AnnouncementAddRoute extends _i20.PageRouteInfo<void> {
  const AnnouncementAddRoute({List<_i20.PageRouteInfo>? children})
    : super(AnnouncementAddRoute.name, initialChildren: children);

  static const String name = 'AnnouncementAddRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i2.AnnouncementAddPage();
    },
  );
}

/// generated route for
/// [_i3.AnnouncementDetailPage]
class AnnouncementDetailRoute
    extends _i20.PageRouteInfo<AnnouncementDetailRouteArgs> {
  AnnouncementDetailRoute({
    required _i21.Announcement announcement,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         AnnouncementDetailRoute.name,
         args: AnnouncementDetailRouteArgs(
           announcement: announcement,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'AnnouncementDetailRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AnnouncementDetailRouteArgs>();
      return _i3.AnnouncementDetailPage(
        announcement: args.announcement,
        key: args.key,
      );
    },
  );
}

class AnnouncementDetailRouteArgs {
  const AnnouncementDetailRouteArgs({required this.announcement, this.key});

  final _i21.Announcement announcement;

  final _i22.Key? key;

  @override
  String toString() {
    return 'AnnouncementDetailRouteArgs{announcement: $announcement, key: $key}';
  }
}

/// generated route for
/// [_i4.AnnouncementsPage]
class AnnouncementsRoute extends _i20.PageRouteInfo<void> {
  const AnnouncementsRoute({List<_i20.PageRouteInfo>? children})
    : super(AnnouncementsRoute.name, initialChildren: children);

  static const String name = 'AnnouncementsRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i4.AnnouncementsPage();
    },
  );
}

/// generated route for
/// [_i5.AppDashboardPage]
class AppDashboardRoute extends _i20.PageRouteInfo<void> {
  const AppDashboardRoute({List<_i20.PageRouteInfo>? children})
    : super(AppDashboardRoute.name, initialChildren: children);

  static const String name = 'AppDashboardRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i5.AppDashboardPage();
    },
  );
}

/// generated route for
/// [_i6.AppDiscussionsPage]
class AppDiscussionsRoute extends _i20.PageRouteInfo<void> {
  const AppDiscussionsRoute({List<_i20.PageRouteInfo>? children})
    : super(AppDiscussionsRoute.name, initialChildren: children);

  static const String name = 'AppDiscussionsRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i6.AppDiscussionsPage();
    },
  );
}

/// generated route for
/// [_i7.AppLoginPage]
class AppLoginRoute extends _i20.PageRouteInfo<AppLoginRouteArgs> {
  AppLoginRoute({
    required _i22.ValueChanged<bool> onResult,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
         AppLoginRoute.name,
         args: AppLoginRouteArgs(onResult: onResult, key: key),
         initialChildren: children,
       );

  static const String name = 'AppLoginRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppLoginRouteArgs>();
      return _i7.AppLoginPage(onResult: args.onResult, key: args.key);
    },
  );
}

class AppLoginRouteArgs {
  const AppLoginRouteArgs({required this.onResult, this.key});

  final _i22.ValueChanged<bool> onResult;

  final _i22.Key? key;

  @override
  String toString() {
    return 'AppLoginRouteArgs{onResult: $onResult, key: $key}';
  }
}

/// generated route for
/// [_i8.AppMarketplacePage]
class AppMarketplaceRoute extends _i20.PageRouteInfo<void> {
  const AppMarketplaceRoute({List<_i20.PageRouteInfo>? children})
    : super(AppMarketplaceRoute.name, initialChildren: children);

  static const String name = 'AppMarketplaceRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i8.AppMarketplacePage();
    },
  );
}

/// generated route for
/// [_i9.AppMenuPage]
class AppMenuRoute extends _i20.PageRouteInfo<void> {
  const AppMenuRoute({List<_i20.PageRouteInfo>? children})
    : super(AppMenuRoute.name, initialChildren: children);

  static const String name = 'AppMenuRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i9.AppMenuPage();
    },
  );
}

/// generated route for
/// [_i10.DiscussionsPage]
class DiscussionsRoute extends _i20.PageRouteInfo<void> {
  const DiscussionsRoute({List<_i20.PageRouteInfo>? children})
    : super(DiscussionsRoute.name, initialChildren: children);

  static const String name = 'DiscussionsRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i10.DiscussionsPage();
    },
  );
}

/// generated route for
/// [_i11.LoginEmailPage]
class LoginEmailRoute extends _i20.PageRouteInfo<void> {
  const LoginEmailRoute({List<_i20.PageRouteInfo>? children})
    : super(LoginEmailRoute.name, initialChildren: children);

  static const String name = 'LoginEmailRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i11.LoginEmailPage();
    },
  );
}

/// generated route for
/// [_i12.LoginPage]
class LoginRoute extends _i20.PageRouteInfo<void> {
  const LoginRoute({List<_i20.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i12.LoginPage();
    },
  );
}

/// generated route for
/// [_i13.LoginPhonePage]
class LoginPhoneRoute extends _i20.PageRouteInfo<void> {
  const LoginPhoneRoute({List<_i20.PageRouteInfo>? children})
    : super(LoginPhoneRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i13.LoginPhonePage();
    },
  );
}

/// generated route for
/// [_i14.LoginPhoneVerificationPage]
class LoginPhoneVerificationRoute extends _i20.PageRouteInfo<void> {
  const LoginPhoneVerificationRoute({List<_i20.PageRouteInfo>? children})
    : super(LoginPhoneVerificationRoute.name, initialChildren: children);

  static const String name = 'LoginPhoneVerificationRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i14.LoginPhoneVerificationPage();
    },
  );
}

/// generated route for
/// [_i15.MarketplacePage]
class MarketplaceRoute extends _i20.PageRouteInfo<void> {
  const MarketplaceRoute({List<_i20.PageRouteInfo>? children})
    : super(MarketplaceRoute.name, initialChildren: children);

  static const String name = 'MarketplaceRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i15.MarketplacePage();
    },
  );
}

/// generated route for
/// [_i16.MenuPage]
class MenuRoute extends _i20.PageRouteInfo<void> {
  const MenuRoute({List<_i20.PageRouteInfo>? children})
    : super(MenuRoute.name, initialChildren: children);

  static const String name = 'MenuRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i16.MenuPage();
    },
  );
}

/// generated route for
/// [_i17.MenuProfilePage]
class MenuProfileRoute extends _i20.PageRouteInfo<void> {
  const MenuProfileRoute({List<_i20.PageRouteInfo>? children})
    : super(MenuProfileRoute.name, initialChildren: children);

  static const String name = 'MenuProfileRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i17.MenuProfilePage();
    },
  );
}

/// generated route for
/// [_i18.MenuSettingPage]
class MenuSettingRoute extends _i20.PageRouteInfo<void> {
  const MenuSettingRoute({List<_i20.PageRouteInfo>? children})
    : super(MenuSettingRoute.name, initialChildren: children);

  static const String name = 'MenuSettingRoute';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i18.MenuSettingPage();
    },
  );
}

/// generated route for
/// [_i19.PublishPage]
class Publish extends _i20.PageRouteInfo<void> {
  const Publish({List<_i20.PageRouteInfo>? children})
    : super(Publish.name, initialChildren: children);

  static const String name = 'Publish';

  static _i20.PageInfo page = _i20.PageInfo(
    name,
    builder: (data) {
      return const _i19.PublishPage();
    },
  );
}
