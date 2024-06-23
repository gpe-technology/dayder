part of 'login_cubit.dart';

enum LoginStatus {
  numberVerification,
  codeVerification,
}

class LoginState extends Equatable {
  const LoginState._({required this.status, required this.user});

  const LoginState.numberVerification()
      : this._(status: LoginStatus.numberVerification, user: User.empty);

  const LoginState.codeVerification()
      : this._(status: LoginStatus.codeVerification, user: User.empty);

  final LoginStatus status;
  final User user;

  @override
  List<Object?> get props => [status];
}
