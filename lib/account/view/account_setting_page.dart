import 'package:app_ui/app_ui.dart';
import 'package:auto_route/annotations.dart';
import 'package:dayder/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: ListTile.divideTiles(context: context, tiles: []).toList(),
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
