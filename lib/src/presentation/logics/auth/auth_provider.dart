import 'package:dayder/features/authentication/authentication.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'auth_state.dart';
import 'phone_number_provider.dart';
import 'user_provider.dart';

final authProvider = Provider<AuthState>((ref) => throw UnimplementedError());

final authStateProvider =
    StateNotifierProvider<AuthStateNotifier, AuthState>((ref) {
  final auth = ref.watch(authProvider);
  return AuthStateNotifier(ref, auth);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this.ref, super.state);

  final Ref ref;

  String _verificationId = '';

  final _auth = GetIt.instance<FirebaseAuthentication>();

  Future<void> verifyPhone(String number) async {
    ref.read(phoneNumberProvider.notifier).update((state) => number);
    state = const AuthState.codeVerification();
    await _auth.verifyPhone(number, (verificationId, numberOfVerification) {
      _verificationId = verificationId;
      Logger().i(_verificationId);
    });
  }

  Future<void> login(String smsCode) async {
    await _auth.signInWithPhoneBy(_verificationId, smsCode);
    ref.read(userStateProvider.notifier).update((state) => _auth.currentUser());
    state = const AuthState.login();
  }

  Future<void> logout() async {
    await _auth.logout();
    ref.invalidate(userStateProvider);
    state = const AuthState.logout();
  }

  backToLogin() {
    state = const AuthState.logout();
  }
}
