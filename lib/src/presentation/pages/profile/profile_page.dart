import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/domain/update_value.dart';
import 'package:dayder/src/presentation/logics/auth_notifier_provider.dart';
import 'package:dayder/src/presentation/logics/profile/update_navigation_notifier_provider.dart';
import 'package:dayder/src/presentation/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/selected_value_provider.dart';

@RoutePage(name: 'Profile')
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider.notifier);
    final name = user.currentUser?.displayName ?? '';
    final email = user.currentUser?.email ?? '';
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
                ref.read(selectedValueProvider.notifier).update(
                      (state) => SelectedValue(
                        title: 'Name',
                        value: name,
                      ),
                    );
                ref.read(updateNavigationNotifierProvider.notifier).setName();
              },
            ),
            AppListTile(
              icon: Icons.email_rounded,
              title: user.currentUser?.email ?? 'Add email',
              onTap: () {
                ref.read(selectedValueProvider.notifier).update(
                      (state) => SelectedValue(
                        title: 'Email',
                        value: email,
                      ),
                    );
                ref.read(updateNavigationNotifierProvider.notifier).setEmail();
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
