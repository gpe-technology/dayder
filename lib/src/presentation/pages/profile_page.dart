import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/presentation/logics/auth_notifier_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage(name: 'Profile')
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider.notifier).currentUser;
    return Scaffold(
      appBar: AppBar(
        title: Text(context.router.current.name),
      ),
      body: Center(
        child: Text(user.toString()),
      ),
    );
  }
}
