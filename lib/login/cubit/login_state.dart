part of 'login_cubit.dart';

enum LoginStatus {
  numberVerification,
  codeVerification,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = Inital;

  const factory LoginState.loading() = Loading;

  const factory LoginState.error() = Error;
}
