import 'package:datadog_flutter_plugin/datadog_flutter_plugin.dart' as datadog;
import 'package:monitoring_repository/src/environnement.dart';

export 'package:datadog_tracking_http_client/datadog_tracking_http_client.dart';

enum Zone {
  us,
  eu,
}

extension ValueSite on Zone {
  datadog.DatadogSite get value {
    switch (this) {
      case Zone.us:
        return datadog.DatadogSite.us1;
      default:
        return datadog.DatadogSite.eu1;
    }
  }
}

class DatadogConfiguration extends datadog.DatadogConfiguration {
  DatadogConfiguration({
    required String applicationId,
    required String token,
    required Zone zone,
    List<String>? hosts,
  }) : super(
          clientToken: token,
          env: environment,
          site: zone.value,
          rumConfiguration: datadog.DatadogRumConfiguration(
            applicationId: applicationId,
            reportFlutterPerformance: true,
            traceSampleRate: 100.0,
          ),
          firstPartyHosts: hosts,
          firstPartyHostsWithTracingHeaders: {
            for (var h in hosts ?? []) h: {datadog.TracingHeaderType.datadog}
          },
        );
}
