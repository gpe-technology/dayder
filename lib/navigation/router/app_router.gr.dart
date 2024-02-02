// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:dayder/data/models/announcement_model.dart' as _i14;
import 'package:dayder/features/authentication/presentation/code_verification_page.dart'
    as _i5;
import 'package:dayder/features/authentication/presentation/login_page.dart'
    as _i7;
import 'package:dayder/presentation/account/my_account_page.dart' as _i8;
import 'package:dayder/presentation/account/profile_page.dart' as _i9;
import 'package:dayder/presentation/account/set_name_page.dart' as _i11;
import 'package:dayder/presentation/announcement/announcement_page.dart' as _i2;
import 'package:dayder/presentation/announcement_detail/announcement_detail.dart'
    as _i1;
import 'package:dayder/presentation/auth_wrapper.dart' as _i3;
import 'package:dayder/presentation/chat/chat_page.dart' as _i4;
import 'package:dayder/presentation/publish/publish_page.dart' as _i10;
import 'package:dayder/presentation/widgets/dashboard_widget.dart' as _i6;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    Detail.name: (routeData) {
      final args = routeData.argsAs<DetailArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AnnouncementDetail(
          key: args.key,
          announcement: args.announcement,
        ),
      );
    },
    Announcement.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AnnouncementPage(),
      );
    },
    AuthWrapper.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthWrapper(),
      );
    },
    Chat.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatPage(),
      );
    },
    Code.name: (routeData) {
      return _i12.AutoRoutePage<String>(
        routeData: routeData,
        child: const _i5.CodeVerificationPage(),
      );
    },
    Dashboard.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DashboardWidget(),
      );
    },
    Login.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LoginPage(),
      );
    },
    Account.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MyAccountPage(),
      );
    },
    Profile.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
    Publish.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PublishPage(),
      );
    },
    SetName.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SetNamePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnnouncementDetail]
class Detail extends _i12.PageRouteInfo<DetailArgs> {
  Detail({
    _i13.Key? key,
    required _i14.AnnouncementModel announcement,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          Detail.name,
          args: DetailArgs(
            key: key,
            announcement: announcement,
          ),
          initialChildren: children,
        );

  static const String name = 'Detail';

  static const _i12.PageInfo<DetailArgs> page = _i12.PageInfo<DetailArgs>(name);
}

class DetailArgs {
  const DetailArgs({
    this.key,
    required this.announcement,
  });

  final _i13.Key? key;

  final _i14.AnnouncementModel announcement;

  @override
  String toString() {
    return 'DetailArgs{key: $key, announcement: $announcement}';
  }
}

/// generated route for
/// [_i2.AnnouncementPage]
class Announcement extends _i12.PageRouteInfo<void> {
  const Announcement({List<_i12.PageRouteInfo>? children})
      : super(
          Announcement.name,
          initialChildren: children,
        );

  static const String name = 'Announcement';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthWrapper]
class AuthWrapper extends _i12.PageRouteInfo<void> {
  const AuthWrapper({List<_i12.PageRouteInfo>? children})
      : super(
          AuthWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapper';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatPage]
class Chat extends _i12.PageRouteInfo<void> {
  const Chat({List<_i12.PageRouteInfo>? children})
      : super(
          Chat.name,
          initialChildren: children,
        );

  static const String name = 'Chat';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CodeVerificationPage]
class Code extends _i12.PageRouteInfo<void> {
  const Code({List<_i12.PageRouteInfo>? children})
      : super(
          Code.name,
          initialChildren: children,
        );

  static const String name = 'Code';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DashboardWidget]
class Dashboard extends _i12.PageRouteInfo<void> {
  const Dashboard({List<_i12.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class Login extends _i12.PageRouteInfo<void> {
  const Login({List<_i12.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MyAccountPage]
class Account extends _i12.PageRouteInfo<void> {
  const Account({List<_i12.PageRouteInfo>? children})
      : super(
          Account.name,
          initialChildren: children,
        );

  static const String name = 'Account';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfilePage]
class Profile extends _i12.PageRouteInfo<void> {
  const Profile({List<_i12.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PublishPage]
class Publish extends _i12.PageRouteInfo<void> {
  const Publish({List<_i12.PageRouteInfo>? children})
      : super(
          Publish.name,
          initialChildren: children,
        );

  static const String name = 'Publish';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SetNamePage]
class SetName extends _i12.PageRouteInfo<void> {
  const SetName({List<_i12.PageRouteInfo>? children})
      : super(
          SetName.name,
          initialChildren: children,
        );

  static const String name = 'SetName';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
