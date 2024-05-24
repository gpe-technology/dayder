import 'package:auto_route/auto_route.dart';
import 'package:dayder/core/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:dayder/presentation/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              onPressed: () async {
                context
                    .read<AuthenticationBloc>()
                    .add(AuthenticationLogoutRequested());
              },
              child: const Text('Logout'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
