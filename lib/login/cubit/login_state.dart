part of 'login_cubit.dart';

enum LoginStatus {
  numberVerification,
  codeVerification,
  authenticated,
  unAuthenticated
}

class LoginState extends Equatable {
  const LoginState._({required this.status, required this.user});

  const LoginState.numberVerification()
      : this._(status: LoginStatus.numberVerification, user: User.empty);

  const LoginState.codeVerification()
      : this._(status: LoginStatus.codeVerification, user: User.empty);

  const LoginState.authenticated(User user)
      : this._(status: LoginStatus.authenticated, user: user);
  const LoginState.unAuthenticated()
      : this._(status: LoginStatus.unAuthenticated, user: User.empty);

  final LoginStatus status;
  final User user;

  @override
  List<Object?> get props => [status];
}
