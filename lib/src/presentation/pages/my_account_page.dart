import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:dayder/src/presentation/logics/auth_notifier_provider.dart';
import 'package:dayder/src/presentation/widgets/list_tile_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: 'Account')
class MyAccountPage extends ConsumerWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTileAccount(
              title: 'Profile',
              icon: Icons.person_rounded,
              onTap: () {
                context.pushRoute(const Profile());
              },
            ),
            const ListTileAccount(
              title: 'Help',
              icon: Icons.help_rounded,
            ),
            TextButton(
              onPressed: () async {
                await ref.read(authNotifierProvider.notifier).logout();
              },
              child: const Text('Logout'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
