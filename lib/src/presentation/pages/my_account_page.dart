import 'package:auto_route/annotations.dart';
import 'package:dayder/src/presentation/widgets/list_tile_account.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            const ListTileAccount(
              title: 'Profile',
              icon: Icons.person_rounded,
            ),
            const ListTileAccount(
              title: 'Help',
              icon: Icons.help_rounded,
            ),
            const TextButton(
              onPressed: null,
              child: Text('Logout'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
