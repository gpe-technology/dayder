part of 'login_cubit.dart';

enum LoginStatus { numberVerification, codeVerification }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;

  const factory LoginState.loading() = Loading;

  const factory LoginState.error(Exception error, StackTrace stackTrace) =
      Error;
}
