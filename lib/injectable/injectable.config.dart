// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/authentication/src/data/firebase_authentication.dart'
    as _i6;
import '../features/authentication/src/domain/authentication.dart' as _i5;
import '../features/remote_config/fetch_config.dart' as _i8;
import '../features/remote_config/remote_config.dart' as _i7;
import '../src/data/announcement_client.dart' as _i3;
import '../src/data/repository/announcement_repository.dart' as _i4;

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
    gh.factory<_i3.AnnouncementClient>(() => _i3.AnnouncementClient());
    gh.factory<_i4.AnnouncementRepository>(
        () => _i4.AnnouncementRepository(gh<_i3.AnnouncementClient>()));
    gh.factory<_i5.Authentication>(
      () => _i6.FirebaseAuthentication(),
      registerFor: {_prod},
    );
    gh.factory<_i7.RemoteConfig>(() => _i7.RemoteConfig());
    gh.factory<_i8.FetchConfig>(() => _i8.FetchConfig(gh<_i7.RemoteConfig>()));
    return this;
  }
}
