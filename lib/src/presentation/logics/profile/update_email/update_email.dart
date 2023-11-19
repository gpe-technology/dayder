import 'package:dayder/features/authentication/src/data/firebase_authentication.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../update_navigation_notifier_provider.dart';

part 'update_email.g.dart';

final _auth = GetIt.instance<FirebaseAuthentication>();

@riverpod
Future<void> updateEmail(UpdateEmailRef ref, {required String value}) async {
  await _auth.currentUser()?.setEmail(value);
  ref.read(updateNavigationNotifierProvider.notifier).pop();
}
