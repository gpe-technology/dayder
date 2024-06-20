import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository)
      : super(const LoginState.numberVerification());

  final AuthenticationRepository _authenticationRepository;

  String _code = "";

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _authenticationRepository.signInWithEmailAndPassword(
        email: email, password: password);
    emit(LoginState.authenticated(_authenticationRepository.currentUser));
  }

  Future<void> verifyPhoneNumber(String number) async {
    await _authenticationRepository.verifyPhoneNumber(
        number: number,
        codeSent: (code, value) {
          _code = code;
        });
    emit(const LoginState.codeVerification());
  }

  Future<void> signInWithPhone(String verificationId) async {
    await _authenticationRepository.signInWithPhone(
      verificationId: verificationId,
      smsCode: _code,
    );
  }

  Future<void> logout() async {
    await _authenticationRepository.logout();
    emit(const LoginState.unAuthenticated());
  }
}
