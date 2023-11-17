import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    required String uid,
    required String phoneNumber,
    String? displayName,
    String? email,
    required bool emailVerified,
    required bool isAnonymous,
    String? refreshToken,
    String? tenantId,
    String? photoURL,
  }) = _UserModel;

  factory UserModel.fromJson(json) => _$UserModelFromJson(json);
}
