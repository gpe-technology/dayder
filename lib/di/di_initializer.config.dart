// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i5;
import 'package:dayder/app/bloc/app_bloc.dart' as _i7;
import 'package:dayder/app/router/router.dart' as _i8;
import 'package:dayder/di/di_app_module.dart' as _i10;
import 'package:dayder/login/cubit/login_cubit.dart' as _i6;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter/widgets.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
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
    gh.lazySingleton<_i4.GlobalKey<_i4.NavigatorState>>(() => dIAppModule.key);
    gh.lazySingleton<_i5.AuthenticationRepository>(() => dIAppModule.auth);
    gh.factory<_i6.LoginCubit>(
        () => _i6.LoginCubit(gh<_i5.AuthenticationRepository>()));
    gh.factory<_i7.AppBloc>(
        () => _i7.AppBloc(authentication: gh<_i5.AuthenticationRepository>()));
    gh.factory<_i8.AppRouter>(() => _i8.AppRouter(
          authenticationRepository: gh<_i5.AuthenticationRepository>(),
          key: gh<_i9.GlobalKey<_i9.NavigatorState>>(),
        ));
    return this;
  }
}

class _$DIAppModule extends _i10.DIAppModule {}
