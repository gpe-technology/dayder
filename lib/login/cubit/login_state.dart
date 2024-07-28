part of 'login_cubit.dart';

enum LoginStatus {
  numberVerification,
  codeVerification,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Inital;

  const factory LoginState.email() = Email;

  const factory LoginState.phone() = Phone;

  const factory LoginState.codeVerification() = CodeVerification;
}
