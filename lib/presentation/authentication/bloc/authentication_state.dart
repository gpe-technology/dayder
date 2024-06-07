part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AppStatus.unAuthenticated,
    this.user,
  });

  const AuthenticationState.codeVerification()
      : this._(status: AppStatus.codeVerification);

  const AuthenticationState.authenticated({User? user})
      : this._(status: AppStatus.authenticated);

  const AuthenticationState.unAuthenticated()
      : this._(status: AppStatus.unAuthenticated);

  final AppStatus status;
  final User? user;

  @override
  List<Object?> get props => [status, user];
}
