// ignore_for_file: non_constant_identifier_names

import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gunModel/pivot_model.dart';

part 'ammunitions_model.freezed.dart';
part 'ammunitions_model.g.dart';

@freezed
class AmmunitionsModel with _$AmmunitionsModel {
  const factory AmmunitionsModel({
    int? id,
    String? name,
    String? description,
    double? price,
    int? stock,
    int? status,
    BrandModel? brand,
    CaliberModel? caliber,
    @Default(1) int quantity,
    @Default(1) int qty,
    PivotModel? pivot,
    String? image_url,
    String? image_thumb_url,
    // DateTime? created_at,
    // DateTime? updated_at,
  }) = _AmmunitionsModel;

  factory AmmunitionsModel.fromJson(Map<String, Object?> json) =>
      _$AmmunitionsModelFromJson(json);
}
