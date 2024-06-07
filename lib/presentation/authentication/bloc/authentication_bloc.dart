import 'dart:async';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dayder/di/di_container.dart';
import 'package:dayder/router/app_navigator.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

enum AppStatus { authenticated, unAuthenticated, codeVerification }

@Injectable()
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authentication = authenticationRepository,
        super(const AuthenticationState.unAuthenticated()) {
    on<AuthenticationPhoneVerification>(_phoneVerification);
    on<AuthenticationLoginRequested>(_login);
    on<AuthenticationLogoutRequested>(_logout);
  }

  final AuthenticationRepository _authentication;
  String code = "";

  Future<void> _phoneVerification(
    AuthenticationPhoneVerification event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authentication.verifyPhone(
      number: event.phone,
      codeSent: (code, value) {
        this.code = code;
      },
    );
    emit(const AuthenticationState.codeVerification());
    diContainer<AppNavigator>().goToCodeVerification();
  }

  Future<void> _login(
    AuthenticationLoginRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authentication.signInWithPhoneBy(
      smsCode: code,
      verificationId: event.smsCode,
    );
  }

  Future<void> _logout(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authentication.logout();
    emit(const AuthenticationState.unAuthenticated());
  }
}
