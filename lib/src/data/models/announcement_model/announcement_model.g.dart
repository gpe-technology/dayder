// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementModelImpl _$$AnnouncementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementModelImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$AnnouncementModelImplToJson(
        _$AnnouncementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'description': instance.description,
    };
