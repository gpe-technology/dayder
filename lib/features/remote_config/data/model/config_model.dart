import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_model.freezed.dart';
part 'config_model.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  const ConfigModel._();

  factory ConfigModel({
    required String backendUrl,
  }) = _ConfigModel;

  factory ConfigModel.fromJson(json) => _$ConfigModelFromJson(json);
}
