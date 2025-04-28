// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_model.freezed.dart';
part 'type_model.g.dart';

@freezed
class TypeModel with _$TypeModel {
  const factory TypeModel(
      {int? id,
      String? name,
      String? slug,
      int? status,
      DateTime? created_at,
      DateTime? updated_at
      //type
      }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, Object?> json) =>
      _$TypeModelFromJson(json);
}
