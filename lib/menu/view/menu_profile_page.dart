import 'package:app_ui/app_ui.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/app.dart';
import 'package:dayder/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MenuProfilePage extends StatelessWidget {
  const MenuProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        children:
            ListTile.divideTiles(
              context: context,
              tiles: [
                AppListTile(
                  title: Text(user.email ?? ''),
                  onTap: () => context.router.push(const AccountEditRoute()),
                ),
                ListTile(title: Text(user.name ?? '')),
                ListTile(title: Text(user.phoneNumber ?? '')),
              ],
            ).toList(),
      ),
    );
  }
}
