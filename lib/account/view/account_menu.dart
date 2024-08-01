import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/bloc/app_bloc.dart';
import 'package:dayder/app/router/router.gr.dart';
import 'package:dayder/app/view/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'AccountMenu')
class AccountMenu extends StatelessWidget {
  const AccountMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.router.current.title(context))),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            AppListTile(
              title: 'Profile',
              icon: Icons.person_rounded,
              onTap: () {
                context.pushRoute(const Profile());
              },
            ),
            const AppListTile(
              title: 'Help',
              icon: Icons.help_rounded,
            ),
            TextButton(
              onPressed: () async {
                context.read<AppBloc>().add(const AppLogoutRequested());
              },
              child: const Text('Logout'),
            ),
          ],
        ).toList(),
      ),
    );
  }
}
