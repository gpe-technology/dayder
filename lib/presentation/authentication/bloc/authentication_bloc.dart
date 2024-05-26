import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:dayder/core/authentication/domain/authentication.dart';
import 'package:dayder/core/authentication/domain/user.dart';

import '../../../core/authentication/domain/authentication_status.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required Authentication authenticationRepository})
      : _authentication = authenticationRepository,
        super(const AuthenticationState.unknown()) {
    on<AppStated>(_checkIfAuthenticated);
    on<AuthenticationPhoneVerification>(_phoneVerification);
    on<AuthenticationLoginRequested>(_login);
    on<AuthenticationLogoutRequested>(_logout);
  }

  final Authentication _authentication;
  String code = "";

  _checkIfAuthenticated(
    AppStated event,
    Emitter<AuthenticationState> emit,
  ) {
    final user = _authentication.currentUser();
    if (user != null) {
      emit(AuthenticationState.authenticated(user: user));
    } else {
      emit(const AuthenticationState.unAuthenticated());
    }
  }

  Future<void> _phoneVerification(
    AuthenticationPhoneVerification event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      await _authentication.verifyPhone(
        event.phone,
        (code, value) {
          this.code = code;
          log("CODE: $code");
        },
      );
      emit(const AuthenticationState.codeVerification());
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _login(
    AuthenticationLoginRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      await _authentication.signInWithPhoneBy(
        code,
        event.smsCode,
      );
      emit(AuthenticationState.authenticated(
          user: _authentication.currentUser()));
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> _logout(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authentication.logout();
    emit(const AuthenticationState.unAuthenticated());
  }
}
