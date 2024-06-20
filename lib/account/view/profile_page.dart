import 'package:authentication_repository/authentication_repository.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dayder/di/di_container.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'Profile')
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = diContainer<AuthenticationRepository>().currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.router.current.title(context)),
      ),
      body: Column(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text(user.email ?? ''),
              onTap: () {},
            ),
          ],
        ).toList(),
      ),
    );
  }
}
