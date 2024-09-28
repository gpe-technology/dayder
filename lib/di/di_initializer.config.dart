// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i6;
import 'package:dayder/app/bloc/app_bloc.dart' as _i9;
import 'package:dayder/app/router/router.dart' as _i10;
import 'package:dayder/di/di_app_module.dart' as _i12;
import 'package:dayder/login/cubit/login_cubit.dart' as _i8;
import 'package:firebase_analytics/firebase_analytics.dart' as _i7;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/widgets.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:monitoring_repository/monitoring_repository.dart' as _i4;
import 'package:remote_config_repository/remote_config_repository.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dIAppModule = _$DIAppModule();
    await gh.factoryAsync<_i3.RemoteConfigRepository>(
      () => dIAppModule.remote(),
      preResolve: true,
    );
    await gh.factoryAsync<_i4.Monitoring>(
      () => dIAppModule.monitoring(),
      preResolve: true,
    );
    gh.lazySingleton<_i5.GlobalKey<_i5.NavigatorState>>(() => dIAppModule.key);
    gh.lazySingleton<_i6.AuthenticationRepository>(() => dIAppModule.auth);
    gh.lazySingleton<_i7.FirebaseAnalytics>(
        () => dIAppModule.firebaseAnalytics);
    gh.factory<_i8.LoginCubit>(
        () => _i8.LoginCubit(gh<_i6.AuthenticationRepository>()));
    gh.factory<_i9.AppBloc>(
        () => _i9.AppBloc(authentication: gh<_i6.AuthenticationRepository>()));
    gh.factory<_i10.AppRouter>(() => _i10.AppRouter(
          authenticationRepository: gh<_i6.AuthenticationRepository>(),
          key: gh<_i11.GlobalKey<_i11.NavigatorState>>(),
        ));
    return this;
  }
}

class _$DIAppModule extends _i12.DIAppModule {}
