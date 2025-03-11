import 'package:auto_route/auto_route.dart';
import 'package:dayder/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AccountProfilePage extends StatelessWidget {
  const AccountProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.select((AppBloc bloc) => bloc.state.user);
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Column(
        children:
            ListTile.divideTiles(
              context: context,
              tiles: [
                ListTile(title: Text(user.email ?? ''), onTap: () {}),
                ListTile(title: Text(user.name ?? ''), onTap: () {}),
                ListTile(title: Text(user.phoneNumber ?? ''), onTap: () {}),
              ],
            ).toList(),
      ),
    );
  }
}
