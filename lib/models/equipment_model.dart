import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'equipment_model.freezed.dart';
part 'equipment_model.g.dart';

@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel({
    required String image,
    required String name,
    required String description,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, Object?> json) =>
      _$EquipmentModelFromJson(json);
}
