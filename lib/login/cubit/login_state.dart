part of 'login_cubit.dart';

enum LoginStatus {
  numberVerification,
  codeVerification,
  authenticated,
  unAuthenticated
}

class LoginState extends Equatable {
  const LoginState._({required this.status});

  const LoginState.numberVerification()
      : this._(status: LoginStatus.numberVerification);

  const LoginState.codeVerification()
      : this._(status: LoginStatus.codeVerification);

  const LoginState.authenticated() : this._(status: LoginStatus.authenticated);
  const LoginState.unAuthenticated()
      : this._(status: LoginStatus.unAuthenticated);

  final LoginStatus status;

  @override
  List<Object?> get props => [status];
}
