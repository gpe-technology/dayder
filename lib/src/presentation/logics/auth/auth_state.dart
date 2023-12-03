import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.login() = LoginState;

  const factory AuthState.codeVerification() = CodeVerificationState;

  const factory AuthState.logout() = LogoutState;
}
