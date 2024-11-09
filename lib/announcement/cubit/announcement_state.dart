part of 'announcement_cubit.dart';

enum AnnouncementStatus { loading, loaded }

final class AnnouncementState extends Equatable {
  const AnnouncementState._({required this.status, this.data = const []});

  const AnnouncementState.loading()
      : this._(status: AnnouncementStatus.loading);

  const AnnouncementState.loaded(List<AnnouncementModel> data)
      : this._(status: AnnouncementStatus.loaded, data: data);

  final AnnouncementStatus status;
  final List<AnnouncementModel> data;

  @override
  List<Object?> get props => [status, data];
}
