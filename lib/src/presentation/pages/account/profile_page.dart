import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../app_router.gr.dart';
import '../../../domain/update_value.dart';
import '../../logics/auth/user_provider.dart';
import '../../logics/profile/selected_value_provider.dart';
import '../../widgets/app_list_tile.dart';

@RoutePage(name: 'Profile')
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final name = user?.displayName ?? '';
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
              title: name,
              onTap: () {
                ref.read(selectedValueStateProvider.notifier).update(
                      (state) => SelectedValue(
                        title: 'Name',
                        value: name,
                      ),
                    );
                context.pushRoute(const SetName());
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
