// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i9;
import 'package:dayder/core/remote_config/fetch_config.dart' as _i6;
import 'package:dayder/core/remote_config/remote_config.dart' as _i3;
import 'package:dayder/data/announcement_client.dart' as _i4;
import 'package:dayder/di/di_app_module.dart' as _i11;
import 'package:dayder/presentation/authentication/bloc/authentication_bloc.dart'
    as _i8;
import 'package:dayder/router/app_navigator.dart' as _i10;
import 'package:dayder/router/router.dart' as _i7;
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.factory<_i3.RemoteConfig>(() => _i3.RemoteConfig());
    gh.factory<_i4.AnnouncementClient>(() => _i4.AnnouncementClient());
    gh.lazySingleton<_i5.GlobalKey<_i5.NavigatorState>>(() => dIAppModule.key);
    gh.factory<_i6.FetchConfig>(() => _i6.FetchConfig(gh<_i3.RemoteConfig>()));
    gh.lazySingleton<_i7.AppRouter>(
        () => _i7.AppRouter(gh<_i5.GlobalKey<_i5.NavigatorState>>()));
    gh.factory<_i8.AuthenticationBloc>(() => _i8.AuthenticationBloc(
        authenticationRepository: gh<_i9.AuthenticationRepository>()));
    gh.factory<_i10.AppNavigator>(() => _i10.AppNavigator(gh<_i7.AppRouter>()));
    return this;
  }
}

class _$DIAppModule extends _i11.DIAppModule {}
