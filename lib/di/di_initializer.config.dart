// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i223;
import 'package:dayder/app/bloc/app_bloc.dart' as _i674;
import 'package:dayder/di/di_app_module.dart' as _i93;
import 'package:dayder/login/cubit/login_cubit.dart' as _i635;
import 'package:dayder/router/app_router.dart' as _i1069;
import 'package:firebase_analytics/firebase_analytics.dart' as _i398;
import 'package:flutter/material.dart' as _i409;
import 'package:flutter/widgets.dart' as _i718;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:monitoring_repository/monitoring_repository.dart' as _i568;
import 'package:remote_config_repository/remote_config_repository.dart'
    as _i812;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dIAppModule = _$DIAppModule();
    await gh.factoryAsync<_i812.RemoteConfigRepository>(
      () => dIAppModule.remote(),
      preResolve: true,
    );
    await gh.factoryAsync<_i568.Monitoring>(
      () => dIAppModule.monitoring(),
      preResolve: true,
    );
    gh.lazySingleton<_i409.GlobalKey<_i409.NavigatorState>>(
      () => dIAppModule.key,
    );
    gh.lazySingleton<_i223.AuthenticationRepository>(() => dIAppModule.auth);
    gh.lazySingleton<_i398.FirebaseAnalytics>(
      () => dIAppModule.firebaseAnalytics,
    );
    gh.factory<_i635.LoginCubit>(
      () => _i635.LoginCubit(gh<_i223.AuthenticationRepository>()),
    );
    gh.factory<_i674.AppBloc>(
      () => _i674.AppBloc(authentication: gh<_i223.AuthenticationRepository>()),
    );
    gh.factory<_i1069.AppRouter>(
      () => _i1069.AppRouter(
        authenticationRepository: gh<_i223.AuthenticationRepository>(),
        key: gh<_i718.GlobalKey<_i718.NavigatorState>>(),
      ),
    );
    return this;
  }
}

class _$DIAppModule extends _i93.DIAppModule {}
