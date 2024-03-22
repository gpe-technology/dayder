import 'package:dayder/features/authentication/authentication.dart';
import 'package:dayder/features/authentication/domain/authentication.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userStateProvider = StateProvider.family<User, Authentication>(
  (ref, auth) => auth.currentUser()!,
);
