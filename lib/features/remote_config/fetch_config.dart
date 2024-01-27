import 'dart:convert';

import 'package:dayder/features/remote_config/data/model/config_model.dart';
import 'package:dayder/features/remote_config/remote_config.dart';
import 'package:dayder/injectable/injectable.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class FetchConfig {
  final RemoteConfig remoteConfig;

  FetchConfig(this.remoteConfig);

  baseConfig() async {
    final config = await remoteConfig.config();
    await config.setDefaults({});
    getIt.registerSingleton<ConfigModel>(
      ConfigModel.fromJson(json.decode(config.getString('baseConfig'))),
    );
  }
}
