import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage(name: 'Profile')
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.maybePop();
          },
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: Text(context.router.current.title(context)),
      ),
      body: Column(
        children: ListTile.divideTiles(
          context: context,
          tiles: [],
        ).toList(),
      ),
    );
  }
}
