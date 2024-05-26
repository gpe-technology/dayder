part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  const AuthenticationState.unknown()
      : this._(status: AuthenticationStatus.unknown);

  const AuthenticationState.codeVerification()
      : this._(status: AuthenticationStatus.codeVerification);

  const AuthenticationState.authenticated({User? user})
      : this._(status: AuthenticationStatus.authenticated);

  const AuthenticationState.unAuthenticated()
      : this._(status: AuthenticationStatus.unAuthenticated);

  final AuthenticationStatus status;
  final User? user;

  @override
  List<Object?> get props => [status, user];
}
