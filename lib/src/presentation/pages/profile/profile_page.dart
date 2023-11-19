import 'package:auto_route/auto_route.dart';
import 'package:dayder/features/authentication/src/data/user_model/user_model.dart';
import 'package:dayder/src/presentation/logics/auth_notifier_provider.dart';
import 'package:dayder/src/presentation/logics/update_notifier_provider.dart';
import 'package:dayder/src/presentation/widgets/app_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: 'Profile')
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserModel user = ref.watch(authNotifierProvider.notifier).currentUser;
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
              title: user.displayName ?? 'Add name',
              onTap: () {
                ref.watch(updateNotifierProvider.notifier).updateName();
              },
            ),
            AppListTile(
              icon: Icons.email_rounded,
              title: user.email ?? 'Add email',
              onTap: () {
                ref.watch(updateNotifierProvider.notifier).updateEmail();
              },
            ),
          ],
        ).toList(),
      ),
    );
  }
}
