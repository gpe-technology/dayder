import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';

part 'announcement.g.dart';

@freezed
abstract class Announcement with _$Announcement {
  factory Announcement({
    required String id,
    required String title,
    required String url,
    required String description,
    required String price,
  }) = _Announcement;
  const Announcement._();

  factory Announcement.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementFromJson(json);
}
