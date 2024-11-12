import 'dart:async';
import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigRepository {
  RemoteConfigRepository(
      {FirebaseRemoteConfig? firebaseRemoteConfig,
      FirebaseAnalytics? analytics})
      : _firebaseRemoteConfig =
            firebaseRemoteConfig ?? FirebaseRemoteConfig.instance,
        _analytics = analytics ?? FirebaseAnalytics.instance;

  final FirebaseRemoteConfig _firebaseRemoteConfig;
  final FirebaseAnalytics _analytics;

  Future<RemoteConfigRepository> setup({
    Map<String, dynamic>? defaultParameters,
  }) async {
    try {
      await  _analytics.setUserProperty(name: "env", value: '');
      await _firebaseRemoteConfig.setDefaults(
        defaultParameters ??
            {"configs": "127.0.0.1:9090", "features_classic": ""},
      );
      await _firebaseRemoteConfig.fetchAndActivate();
    } on FirebaseException catch (e) {
      log(e.code);
    }
    return this;
  }

  String get configuration => _firebaseRemoteConfig.getString('configs');

  FirebaseRemoteConfig get remoteConfig => _firebaseRemoteConfig;
}
