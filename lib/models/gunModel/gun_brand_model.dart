import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'gun_brand_model.freezed.dart';
part 'gun_brand_model.g.dart';

@freezed
class GunBrandModel with _$GunBrandModel {
  const factory GunBrandModel(
      {int? id,
      String? name,
      String? slug,
      int? type_id,
      int? status,
      String? updatedAt,
      DateTime? created_at,
      DateTime? updated_at
      //type
      }) = _GunBrandModel;

  factory GunBrandModel.fromJson(Map<String, Object?> json) =>
      _$GunBrandModelFromJson(json);
}
