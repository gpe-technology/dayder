import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository)
      : super(const LoginState.numberVerification());

  final AuthenticationRepository _authenticationRepository;

  String _code = "";

  Future<void> signInWithEmailAndPassword() async {
    await _authenticationRepository.signInWithEmailAndPassword(
        email: "alphaseul@yahoo.fr", password: "alphasow");
    emit(const LoginState.authenticated());
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
}
