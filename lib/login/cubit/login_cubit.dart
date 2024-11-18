import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

@Injectable()
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository)
      : super(const LoginState.initial());

  final AuthenticationRepository _authenticationRepository;

  String _verificationId = '';

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(const LoginState.loading());
    await _authenticationRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> verifyPhoneNumber({required String number}) async {
    emit(const LoginState.loading());
    await _authenticationRepository.verifyPhoneNumber(
        number: number,
        codeSent: (code, value) {
          _verificationId = code;
        });
  }

  Future<void> signInWithPhone({required String smsCode}) async {
    emit(const LoginState.loading());
    await _authenticationRepository.signInWithPhone(
      verificationId: _verificationId,
      smsCode: smsCode,
    );
  }

  Future<void> signInWithGoogle() async {
    emit(const LoginState.loading());
    await _authenticationRepository.signInWithGoogle();
  }
}
