import 'package:auto_route/auto_route.dart';
import 'package:dayder/src/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../logics/profile/update_navigation_notifier_provider.dart';


@RoutePage()
class ProfileWrapper extends ConsumerWidget {
  const ProfileWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(updateNavigationNotifierProvider);
    return AutoRouter.declarative(
      routes: (_) => [
        if (state == UpdateState.isProfile) const Profile(),
        if (state == UpdateState.isSetValue) const SetValue(),
        if (state == UpdateState.isUpdateValue) const UpdateValue(),
      ],
    );
  }
}
