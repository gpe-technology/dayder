part of 'announcement_add_bloc.dart';

@freezed
sealed class AnnouncementAddEvent with _$AnnouncementAddEvent {
  const factory AnnouncementAddEvent.submit(AnnouncementModel announcement) =
      AnnouncementAddEventSubmitted;
}
