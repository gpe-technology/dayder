import 'package:auto_route/auto_route.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/features/authentication/domain/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/update_value.dart';
import '../widgets/app_list_tile.dart';
import 'logic/selected_value_provider.dart';
import 'logic/user_provider.dart';

@RoutePage(name: 'Profile')
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userStateProvider(diContainer<Authentication>()));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.popRoute();
          },
          icon: Icon(Icons.adaptive.arrow_back),
        ),
        title: Text(context.router.current.title(context)),
      ),
      body: Column(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            AppListTile(
              icon: Icons.person_rounded,
              title: user.name,
              onTap: () {
                ref.read(selectedValueProvider.notifier).update(
                      (state) => SelectedValue(
                        title: 'Name',
                        value: user.name,
                      ),
                    );
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
