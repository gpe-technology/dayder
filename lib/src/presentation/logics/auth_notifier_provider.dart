import 'package:dayder/src/data/authentication.dart';
import 'package:dayder/src/presentation/logics/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Authentication auth = Authentication();

final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, bool>((ref) {
  final isAuth = ref.watch(authProvider);
  return AuthStateNotifier(isAuth);
});

class AuthStateNotifier extends StateNotifier<bool> {
  AuthStateNotifier(super.state);

  Future<void> login(String verificationId, String smsCode) async {
    await auth.signInWithPhoneBy(verificationId, smsCode);
    state = true;
  }

  Future<void> verifyPhone(
    String number,
    Function(String, int?) codeSent,
  ) async {
    await auth.verifyPhone(number, codeSent);
  }

  Future<void> logout() async {
    await auth.logout();
    state = false;
  }
}
