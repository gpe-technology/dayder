import 'package:dayder/features/authentication/authentication.dart';
import 'package:dayder/src/presentation/logics/auth_provider.dart';
import 'package:dayder/src/presentation/logics/user_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final authProvider = Provider.autoDispose<AuthState>(
  (ref) => ref.watch(authStateNotifierProvider),
);

final authStateNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>((ref) {
  final authState = ref.watch(authStateProvider);
  return AuthStateNotifier(ref, authState);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(this.ref, super.state);

  final Ref ref;

  String _verificationId = '';

  final _auth = GetIt.instance<FirebaseAuthentication>();

  Future<void> login(String smsCode) async {
    await _auth.signInWithPhoneBy(_verificationId, smsCode);
    ref.read(userStateProvider.notifier).update((state) => _auth.currentUser());
    state = AuthState.isLogin;
  }

  Future<void> verifyPhone(String number) async {
    state = AuthState.isCodeVerification;
    await _auth.verifyPhone(number, (verificationId, numberOfVerification) {
      _verificationId = verificationId;
      Logger().i(_verificationId);
    });
  }

  Future<void> logout() async {
    await _auth.logout();
    ref.invalidate(userStateProvider);
    state = AuthState.isLogout;
  }

  backToLogin() {
    state = AuthState.isLogout;
  }
}
