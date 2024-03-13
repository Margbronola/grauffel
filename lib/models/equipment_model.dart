// ignore_for_file: non_constant_identifier_names

import 'package:egczacademy/models/gunModel/pivot_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'gunModel/brand_model.dart';

part 'equipment_model.freezed.dart';
part 'equipment_model.g.dart';

@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel({
    int? id,
    String? name,
    double? price,
    String? description,
    int? stocks,
    int? type,
    // int? unlimited,
    PivotModel? pivot,
    DateTime? created_at,
    DateTime? updated_at,
    BrandModel? brand,
    @Default(1) int quantity,
    @Default(1) int? qty,
    // String? type_name,
    // ImageModel? image,
    String? image_url,
    String? image_thumb_url,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, Object?> json) =>
      _$EquipmentModelFromJson(json);
}
