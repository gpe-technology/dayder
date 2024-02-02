import 'package:dayder/features/authentication/domain/authentication.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user_provider.dart';

part 'update_name.g.dart';

final _auth = GetIt.instance<Authentication>();

@riverpod
Future<void> updateName(UpdateNameRef ref, {required String value}) async {
  await _auth.currentUser()?.setName(value);
  ref.invalidate(userStateProvider);
}
