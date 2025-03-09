import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage(name: 'AccountMenu')
class AccountMenuView extends StatelessWidget {
  const AccountMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.router.current.title(context))),
      body: ListView(
        children:
            ListTile.divideTiles(
              context: context,
              tiles: [
                AppListTile(
                  title: 'Profile',
                  icon: Icons.person_rounded,
                  onTap: () async {
                    await context.pushRoute(const Profile());
                  },
                ),
                const AppListTile(title: 'Help', icon: Icons.help_rounded),
                TextButton(
                  onPressed:
                      () => context.read<AppBloc>().add(
                        const AppLogoutRequested(),
                      ),
                  child: const Text('Logout'),
                ),
              ],
            ).toList(),
      ),
    );
  }
}
