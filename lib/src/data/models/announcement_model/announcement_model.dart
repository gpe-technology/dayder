import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_model.freezed.dart';

part 'announcement_model.g.dart';

@freezed
class AnnouncementModel with _$AnnouncementModel {
  const AnnouncementModel._();

  factory AnnouncementModel({
    required String id,
    required String url,
    required String description,
    required String price,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(json) => _$AnnouncementModelFromJson(json);
}
