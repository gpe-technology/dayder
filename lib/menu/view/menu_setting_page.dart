import 'package:app_ui/app_ui.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/annotations.dart';
import 'package:dayder/di/di.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MenuSettingPage extends StatelessWidget {
  const MenuSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: ListTile.divideTiles(context: context, tiles: []).toList(),
      ),
      persistentFooterButtons: [
        Button(
          onPressed: () => diContainer<AuthenticationRepository>().logout(),
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
