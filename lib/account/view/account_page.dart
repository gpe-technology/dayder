import 'package:app_ui/app_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/router/app_router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children:
              ListTile.divideTiles(
                context: context,
                tiles: [
                  AppListTile(
                    title: const Text('Profile'),
                    icon: const Icon(Icons.person_rounded),
                    onTap: () => context.pushRoute(const AccountProfileRoute()),
                  ),
                  AppListTile(
                    title: const Text('Settings'),
                    icon: const Icon(Icons.settings_rounded),
                    onTap: () => context.pushRoute(const AccountSettingRoute()),
                  ),
                  const AppListTile(
                    title: Text('Help'),
                    icon: Icon(Icons.help_rounded),
                  ),
                ],
              ).toList(),
        ),
      ),
    );
  }
}
