import 'package:dayder/features/authentication/src/data/firebase_authentication.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'update_navigation_notifier_provider.dart';

final _auth = GetIt.instance<FirebaseAuthentication>();

final updateNameFutureProvider = FutureProvider.family.autoDispose(
  (ref, String value) async {
    await _auth.currentUser()?.setName(value);
    ref.read(updateNavigationNotifierProvider.notifier).pop();
  },
);

final updateEmailFutureProvider = FutureProvider.family.autoDispose(
  (ref, String value) async {
    await _auth.currentUser()?.setEmail(value);
    ref.read(updateNavigationNotifierProvider.notifier).pop();
  },
);
