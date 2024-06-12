import 'dart:convert';

import 'package:cache/cache.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config_repository/src/models/configuration.dart';

class RemoteConfigRepository {
  final String _baseConfigKey = "baseConfig";
  final CacheClient _cache;

  static const _configurationCacheKey = '__configuration_cache_key__';

  RemoteConfigRepository({CacheClient? cache})
      : _cache = cache ?? CacheClient();

  Configuration? get configuration =>
      _cache.read<Configuration>(key: _configurationCacheKey);

  Future<void> baseConfig() async {
    final result = await _initRemote();
    await result.setDefaults({});
    _cache.write(
      key: _configurationCacheKey,
      value: Configuration.from(
        json.decode(
          result.getString(_baseConfigKey),
        ),
      ),
    );
  }

  Future<FirebaseRemoteConfig> _initRemote() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 6),
        minimumFetchInterval: Duration.zero,
      ),
    );
    await remoteConfig.fetchAndActivate();
    await remoteConfig.ensureInitialized();
    return remoteConfig;
  }
}
