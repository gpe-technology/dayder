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
    try {
      emit(const LoginState.loading());
      await _authenticationRepository.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception catch (error, stackTrace) {
      emit(LoginState.error(error, stackTrace));
    }
  }

  Future<void> verifyPhoneNumber({required String number}) async {
    try {
      emit(const LoginState.loading());
      await _authenticationRepository.verifyPhoneNumber(
        number: number,
        codeSent: (code, value) {
          _verificationId = code;
        },
      );
    } on Exception catch (error, stackTrace) {
      emit(LoginState.error(error, stackTrace));
    }
  }

  Future<void> signInWithPhone({required String smsCode}) async {
    try {
      emit(const LoginState.loading());
      await _authenticationRepository.signInWithPhone(
        verificationId: _verificationId,
        smsCode: smsCode,
      );
    } on Exception catch (error, stackTrace) {
      emit(LoginState.error(error, stackTrace));
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      emit(const LoginState.loading());
      await _authenticationRepository.signInWithGoogle();
    } on Exception catch (error, stackTrace) {
      emit(LoginState.error(error, stackTrace));
    }
  }
}
