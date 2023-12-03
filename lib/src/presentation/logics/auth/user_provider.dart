import 'package:dayder/features/authentication/src/data/user_model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../../../features/authentication/src/data/firebase_authentication.dart';

final _auth = GetIt.instance<FirebaseAuthentication>();

final userProvider =
    Provider<UserModel?>((ref) => ref.watch(userStateProvider));

final userStateProvider =
    StateProvider<UserModel?>((ref) => _auth.currentUser());
