import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

enum AppStatus { authenticated, unAuthenticated }

@Injectable()
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required AuthenticationRepository authentication})
      : _authentication = authentication,
        super(AppState.unAuthenticated()) {
    on<_AppUserChanged>(_onUserChange);
    on<AppLogoutRequested>(_onLogoutRequested);
    _userSubscription = _authentication.user.listen(
      (user) => add(_AppUserChanged(user)),
    );
  }

  final AuthenticationRepository _authentication;
  late final StreamSubscription<User> _userSubscription;

  _onUserChange(_AppUserChanged event, Emitter<AppState> emit) {
    emit(event.user.isNotEmpty
        ? AppState.authenticated(event.user)
        : AppState.unAuthenticated());
  }

  _onLogoutRequested(AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_authentication.logout());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
