// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel(
      {int? id,
      String? name,
      String? slug,
      int? type_id,
      int? status,
      DateTime? created_at,
      DateTime? updated_at
      //type
      }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, Object?> json) =>
      _$BrandModelFromJson(json);
}
