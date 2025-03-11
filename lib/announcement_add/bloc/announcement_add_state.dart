part of 'announcement_add_bloc.dart';

@freezed
sealed class AnnouncementAddState with _$AnnouncementAddState {
  const factory AnnouncementAddState.initial() = AnnouncementAddInitial;
  const factory AnnouncementAddState.loading() = AnnouncementAddLoading;
  const factory AnnouncementAddState.success(AnnouncementModel announcement) =
      AnnouncementAddSuccess;
  const factory AnnouncementAddState.error(
    Exception error,
    StackTrace stackTrace,
  ) = AnnouncementAddError;
}
