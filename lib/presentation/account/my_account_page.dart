import 'package:auto_route/auto_route.dart';
import 'package:dayder/presentation/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Account')
class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            AppListTile(
              title: 'Profile',
              icon: Icons.person_rounded,
              onTap: () {},
            ),
            const AppListTile(
              title: 'Help',
              icon: Icons.help_rounded,
            ),
            TextButton(
              onPressed: () async {},
              child: const Text('Logout'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
