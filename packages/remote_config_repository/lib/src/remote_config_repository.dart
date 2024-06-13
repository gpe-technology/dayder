import 'dart:convert';

import 'package:cache/cache.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:remote_config_repository/src/models/configuration.dart';

class RemoteConfigRepository {
  RemoteConfigRepository(
      {FirebaseRemoteConfig? firebaseRemoteConfig, CacheClient? cache})
      : _cache = cache ?? CacheClient(),
        _firebaseRemoteConfig =
            firebaseRemoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final CacheClient _cache;

  static const _baseConfigCacheKey = '__base_config_cache_key__';
  final String _baseConfigKey = "baseConfig";

  Future<void> setup({Map<String, dynamic>? defaultParameters}) async {
    await _firebaseRemoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 6),
        minimumFetchInterval: Duration.zero,
      ),
    );
    await _firebaseRemoteConfig.fetchAndActivate();
    await _firebaseRemoteConfig.ensureInitialized();
    await _firebaseRemoteConfig.setDefaults(defaultParameters ?? {});
    final baseConfig = _firebaseRemoteConfig.getString(_baseConfigKey);
    _cache.write<Configuration>(
        key: _baseConfigCacheKey, value: json.decode(baseConfig));
  }

  Configuration get configuration =>
      _cache.read(key: _baseConfigCacheKey) ?? Configuration.isEmpty();
}
