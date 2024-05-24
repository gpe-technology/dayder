part of 'authentication_bloc.dart';

@immutable
sealed class AuthenticationEvent {}

final class AppStated extends AuthenticationEvent {}

final class AuthenticationPhoneVerification extends AuthenticationEvent {
  AuthenticationPhoneVerification(this.phone);

  final String phone;
}

final class AuthenticationLoginRequested extends AuthenticationEvent {
  AuthenticationLoginRequested(this.smsCode);

  final String smsCode;
}

final class AuthenticationLogoutRequested extends AuthenticationEvent {}
