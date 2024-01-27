import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RemoteConfig {
  Future<FirebaseRemoteConfig> config() async {
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
