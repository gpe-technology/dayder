part of 'announcements_cubit.dart';

@freezed
sealed class AnnouncementsState with _$AnnouncementsState {
  const factory AnnouncementsState.loading() = AnnouncementsLoading;

  const factory AnnouncementsState.loaded(List<Announcement> data) =
      AnnouncementsLoaded;

  const factory AnnouncementsState.error(
    Exception error,
    StackTrace stackTrace,
  ) = AnnouncementsError;
}
