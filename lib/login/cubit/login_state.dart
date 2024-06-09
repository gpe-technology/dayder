part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginPhoneVerification extends LoginState {}

final class LoginCode extends LoginState {}
