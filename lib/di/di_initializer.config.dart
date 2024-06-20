// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i4;
import 'package:dayder/app/router/router.dart' as _i6;
import 'package:dayder/di/di_app_module.dart' as _i8;
import 'package:dayder/login/cubit/login_cubit.dart' as _i5;
import 'package:flutter/material.dart' as _i3;
import 'package:flutter/widgets.dart' as _i7;
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
    gh.lazySingleton<_i3.GlobalKey<_i3.NavigatorState>>(() => dIAppModule.key);
    gh.lazySingleton<_i4.AuthenticationRepository>(() => dIAppModule.auth);
    gh.lazySingleton<_i5.LoginCubit>(
        () => _i5.LoginCubit(gh<_i4.AuthenticationRepository>()));
    gh.factory<_i6.AppRouter>(() => _i6.AppRouter(
          authenticationRepository: gh<_i4.AuthenticationRepository>(),
          key: gh<_i7.GlobalKey<_i7.NavigatorState>>(),
        ));
    return this;
  }
}

class _$DIAppModule extends _i8.DIAppModule {}
