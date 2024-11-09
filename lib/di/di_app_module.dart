import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:monitoring_repository/monitoring_repository.dart';
import 'package:remote_config_repository/remote_config_repository.dart';

@module
abstract class DIAppModule {
  @lazySingleton
  GlobalKey<NavigatorState> get key => GlobalKey<NavigatorState>();

  @lazySingleton
  AuthenticationRepository get auth => AuthenticationRepository();

  @preResolve
  Future<RemoteConfigRepository> remote() => RemoteConfigRepository().setup();

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;

  @preResolve
  Future<Monitoring> monitoring() async {
    return DatadogMonitoring(
      configuration: DatadogConfiguration(
        token: 'pub2557de719fcdc4be2db3803ca0195bb8',
        applicationId: 'ff29d2b7-d7be-4229-b1d6-7e41a4e6a2c3',
        zone: Zone.eu,
      )..enableHttpTracking(),
    );
  }
}
