import 'package:get_it/get_it.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../features/authentication/src/domain/authentication.dart';
import '../../auth/user_provider.dart';

part 'update_name.g.dart';

final _auth = GetIt.instance<Authentication>();

@riverpod
Future<void> updateName(UpdateNameRef ref, {required String value}) async {
  await _auth.currentUser()?.setName(value);
  ref.invalidate(userStateProvider);
}
