// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ammunitions_model.dart';
import 'equipment_model.dart';
import 'gunModel/gun_model.dart';

part 'book_cell_model.freezed.dart';
part 'book_cell_model.g.dart';

@freezed
class BookCellModel with _$BookCellModel {
  const factory BookCellModel(
      {String? date,
      String? time,
      int? activity_id,
      List<GunModel>? guns,
      List<AmmunitionsModel>? ammunitions,
      List<EquipmentModel>? equipments

// activity
      }) = _BookCellModel;

  factory BookCellModel.fromJson(Map<String, Object?> json) =>
      _$BookCellModelFromJson(json);
}
