import 'package:datadog_flutter_plugin/datadog_flutter_plugin.dart';
import 'package:monitoring_repository/src/models/models.dart';
import 'package:monitoring_repository/src/monitoring.dart';

class DatadogMonitoring implements Monitoring {
  DatadogMonitoring({required this.configuration});

  final DatadogSdk _instance = DatadogSdk.instance;
  final DatadogConfiguration configuration;

  @override
  Future<void> runApp(void Function() runner) async {
    _instance.sdkVerbosity = CoreLoggerLevel.debug;
    DatadogSdk.runApp(
      configuration,
      TrackingConsent.granted,
      runner,
    );
  }

  @override
  void setUserInfos({required User user}) {
    _instance.setUserInfo(
      id: user.id,
      name: '${user.firstName} ${user.lastName}',
      email: user.email,
      extraInfo: user.extraInfo ?? const {},
    );
  }

  @override
  DatadogNavigationObserver navObserver() {
    return DatadogNavigationObserver(datadogSdk: _instance);
  }

  @override
  void sendLoggerError({required String message}) {
    final logger = _instance.logs?.createLogger(
      DatadogLoggerConfiguration(
        remoteLogThreshold: LogLevel.warning,
      ),
    );
    logger?.error(message);
  }

  @override
  void endSession() {}
}
