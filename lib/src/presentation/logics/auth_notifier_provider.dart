import 'package:dayder/features/authentication/authentication.dart';
import 'package:dayder/src/presentation/logics/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthStateNotifier, AuthState>((ref) {
  final authState = ref.watch(authProvider);
  return AuthStateNotifier(authState);
});

class AuthStateNotifier extends StateNotifier<AuthState> {
  AuthStateNotifier(super.state);

  String _verificationId = '';

  final _auth = GetIt.instance<FirebaseAuthentication>();

  get currentUser => _auth.currentUser();

  Future<void> login(String smsCode) async {
    await _auth.signInWithPhoneBy(_verificationId, smsCode);
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
    state = AuthState.isLogout;
  }

  update(AuthState state) {
    this.state = state;
  }
}
