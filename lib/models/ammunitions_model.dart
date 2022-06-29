import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ammunitions_model.freezed.dart';
part 'ammunitions_model.g.dart';

@freezed
class AmmunitionsModel with _$AmmunitionsModel {
  const factory AmmunitionsModel(
      {int? id,
      int? brand_id,
      int? caliber_id,
      String? name,
      String? description,
      double? price,
      int? stock,
      int? status,
      String? image,
      DateTime? created_at,
      DateTime? updated_at}) = _AmmunitionsModel;
  //pivot

  factory AmmunitionsModel.fromJson(Map<String, Object?> json) =>
      _$AmmunitionsModelFromJson(json);
}
