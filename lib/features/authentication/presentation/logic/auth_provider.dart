import 'package:dayder/di/di_container.dart';
import 'package:dayder/features/authentication/domain/authentication.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../../../data/auth_state.dart';
import '../../../../presentation/account/logic/user_provider.dart';
import 'phone_number_provider.dart';

final authProvider = Provider<AuthState>((ref) => throw UnimplementedError());

final authNotifierProvider =
    NotifierProvider<AuthNotifier, AuthState>(AuthNotifier.new);

class AuthNotifier extends Notifier<AuthState> {
  @override
  AuthState build() {
    final auth = ref.watch(authProvider);
    return auth;
  }

  String _verificationId = '';

  final _auth = GetIt.instance<Authentication>();

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
    ref
        .read(userStateProvider(diContainer<Authentication>()).notifier)
        .update((state) => _auth.currentUser()!);
    state = const AuthState.login();
  }

  Future<void> logout() async {
    await _auth.logout();
    ref.invalidate(userStateProvider);
    state = const AuthState.logout();
  }

  void backToLogin() {
    state = const AuthState.logout();
  }
}
