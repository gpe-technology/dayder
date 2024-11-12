import 'package:auto_route/annotations.dart';
import 'package:dayder/di/di_container.dart';
import 'package:flutter/material.dart';
import 'package:remote_config_repository/remote_config_repository.dart';

@RoutePage(name: 'Chat')
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String config = '';
  final remoteConfigRepository = diContainer<RemoteConfigRepository>();

  @override
  void initState() {
    //final remoteConfig = diContainer<RemoteConfigRepository>().remoteConfig;
    config = remoteConfigRepository.configuration;
    //remoteConfig.onConfigUpdated.listen((event) async {
    //await remoteConfig.activate();
    // setState(() {
    //   config = remoteConfigRepository.configuration;
    // });
    //  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(config),
      ),
    );
  }
}
