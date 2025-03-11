import 'package:app_ui/app_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    title: 'Profile',
                    icon: Icons.person_rounded,
                    onTap: () => context.pushRoute(const AccountProfileRoute()),
                  ),
                  const AppListTile(title: 'Help', icon: Icons.help_rounded),
                ],
              ).toList(),
        ),
      ),
      persistentFooterButtons: [
        Button(
          onPressed:
              () => context.read<AppBloc>().add(const AppLogoutRequested()),
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
