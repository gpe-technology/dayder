import 'package:flutter/material.dart';
import 'package:monitoring_repository/src/models/models.dart';

/// Exemple usage Datadog Rhum
/// final Monitoring monitoring = DatadogMonitoring(
///   configuration: Configuration(
///                     token: [token],
///                     applicationId: [applicationId]
///                 ),
/// );
abstract class Monitoring {
  /// monitoring.runApp(() => flutterRunApp)
  Future<void> runApp(
    void Function() runner,
  );

  /// set user info to monitoring
  /// monitoring.setUserInfos(user: [user]);
  void setUserInfos({required User user});

  /// Application Navigation observer
  ///  MaterialApp(
  ///   navigatorObservers: [monitoring.navObserver()]
  /// )
  NavigatorObserver navObserver();

  /// Log application information type warning
  ///  monitoring.warning(message: [message]);
  void sendLoggerError({required String message});

  void endSession() {}
}
