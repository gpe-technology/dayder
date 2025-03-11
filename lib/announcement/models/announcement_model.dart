import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';

part 'announcement_model.g.dart';

@freezed
abstract class AnnouncementModel with _$AnnouncementModel {
  factory AnnouncementModel({
    required String id,
    required String title,
    required String url,
    required String description,
    required String price,
  }) = _AnnouncementModel;
  const AnnouncementModel._();

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);
}
