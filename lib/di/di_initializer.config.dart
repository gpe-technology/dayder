// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dayder/data/announcement_client.dart' as _i3;
import 'package:dayder/di/di_app_module.dart' as _i11;
import 'package:dayder/features/authentication/data/firebase_authentication.dart'
    as _i5;
import 'package:dayder/features/authentication/domain/authentication.dart'
    as _i4;
import 'package:dayder/features/remote_config/fetch_config.dart' as _i9;
import 'package:dayder/features/remote_config/remote_config.dart' as _i7;
import 'package:dayder/navigation/navigator.dart' as _i10;
import 'package:dayder/navigation/router/router.dart' as _i8;
import 'package:flutter/material.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dIAppModule = _$DIAppModule();
    gh.factory<_i3.AnnouncementClient>(() => _i3.AnnouncementClient());
    gh.factory<_i4.Authentication>(
      () => _i5.FirebaseAuthentication(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i6.GlobalKey<_i6.NavigatorState>>(() => dIAppModule.key);
    gh.factory<_i7.RemoteConfig>(() => _i7.RemoteConfig());
    gh.lazySingleton<_i8.DayderRouter>(
        () => _i8.DayderRouter(gh<_i6.GlobalKey<_i6.NavigatorState>>()));
    gh.factory<_i9.FetchConfig>(() => _i9.FetchConfig(gh<_i7.RemoteConfig>()));
    gh.factory<_i10.Navigator>(() => _i10.Navigator(gh<_i8.DayderRouter>()));
    return this;
  }
}

class _$DIAppModule extends _i11.DIAppModule {}
