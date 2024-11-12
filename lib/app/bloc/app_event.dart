part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appUserChange(User user) = _AppUserChanged;
  const factory AppEvent.appLogoutRequested() = AppLogoutRequested;
}
