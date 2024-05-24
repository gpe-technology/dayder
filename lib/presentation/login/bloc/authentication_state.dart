part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationState {}

final class Unknown extends AuthenticationState {}

final class CodeVerification extends AuthenticationState {}

final class Authenticated extends AuthenticationState {
  Authenticated(this.user);

  final User? user;
}

final class UnAuthenticated extends AuthenticationState {}
