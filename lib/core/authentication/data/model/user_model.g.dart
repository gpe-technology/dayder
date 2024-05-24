// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      phoneNumber: json['phoneNumber'] as String,
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      emailVerified: json['emailVerified'] as bool,
      isAnonymous: json['isAnonymous'] as bool,
      refreshToken: json['refreshToken'] as String?,
      tenantId: json['tenantId'] as String?,
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'phoneNumber': instance.phoneNumber,
      'displayName': instance.displayName,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'isAnonymous': instance.isAnonymous,
      'refreshToken': instance.refreshToken,
      'tenantId': instance.tenantId,
      'photoURL': instance.photoURL,
    };
