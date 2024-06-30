import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigRepository {
  RemoteConfigRepository({FirebaseRemoteConfig? firebaseRemoteConfig})
      : _firebaseRemoteConfig =
            firebaseRemoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _firebaseRemoteConfig;

  Future<RemoteConfigRepository> setup({
    Map<String, dynamic>? defaultParameters,
  }) async {
    try {
      await _firebaseRemoteConfig.setDefaults(
        defaultParameters ?? {"configs": "127.0.0.1:9090"},
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
