part of 'app_bloc.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({required AppStatus status, required User user}) =
      _AppState;

  factory AppState.authenticated(User user) =>
      AppState(user: user, status: AppStatus.authenticated);
  factory AppState.unAuthenticated() =>
      const AppState(user: User.empty, status: AppStatus.unAuthenticated);
}
