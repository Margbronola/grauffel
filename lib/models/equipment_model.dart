import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_model.freezed.dart';
part 'equipment_model.g.dart';

@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel(
      {int? id,
      String? name,
      double? price,
      String? description,
      int? stocks,
      int? type,
      int? unlimited,
      DateTime? created_at,
      DateTime? updated_at,
      String? type_name,
      String? image}) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, Object?> json) =>
      _$EquipmentModelFromJson(json);
}
