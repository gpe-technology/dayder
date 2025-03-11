part of 'announcement_cubit.dart';

enum AnnouncementStatus { loading, loaded, error }

@freezed
sealed class AnnouncementState with _$AnnouncementState {
  const factory AnnouncementState.loading() = Loading;

  const factory AnnouncementState.loaded(List<AnnouncementModel> data) = Loaded;

  const factory AnnouncementState.error(
    Exception error,
    StackTrace stackTrace,
  ) = Error;
}
