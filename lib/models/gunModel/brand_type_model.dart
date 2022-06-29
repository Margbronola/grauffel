import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'brand_type_model.freezed.dart';
part 'brand_type_model.g.dart';

@freezed
class BrandTypeModel with _$BrandTypeModel {
  const factory BrandTypeModel({
    int? id,
    String? name,
    String? slug,
    int? status,
    String? createdAt,
    String? updatedAt,
  }) = _BrandTypeModel;

  factory BrandTypeModel.fromJson(Map<String, Object?> json) =>
      _$BrandTypeModelFromJson(json);
}
