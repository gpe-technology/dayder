part of 'login_cubit.dart';

enum LoginStatus {
  numberVerification,
  codeVerification,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.inital() = Inital;

  const factory LoginState.email() = Email;

  const factory LoginState.phone() = Phone;

  const factory LoginState.codeVerification() = CodeVerification;
}
