import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dayder/di/di_container.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:monitoring_repository/monitoring_repository.dart' as m;

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
    _userSubscription = _authentication.user.listen((user) {
      add(_AppUserChanged(user));
      monitoring.setUserInfos(
        user: m.User(
          id: user.id,
          firstName: user.name ?? '',
          lastName: user.name ?? '',
          email: user.email ?? '',
        ),
      );
    });
  }

  final AuthenticationRepository _authentication;
  final m.Monitoring monitoring = diContainer<m.Monitoring>();
  late final StreamSubscription<User> _userSubscription;

  void _onUserChange(_AppUserChanged event, Emitter<AppState> emit) {
    emit(
      event.user.isNotEmpty
          ? AppState.authenticated(event.user)
          : AppState.unAuthenticated(),
    );
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
