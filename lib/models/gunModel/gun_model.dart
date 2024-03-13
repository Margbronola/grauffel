// ignore_for_file: non_constant_identifier_names

import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/models/gunModel/pivot_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'gun_model.freezed.dart';
part 'gun_model.g.dart';

@freezed
class GunModel with _$GunModel {
  const factory GunModel(
      {int? id,
      String? model,
      int? brand_id,
      int? caliber_id,
      // int? mags_capacity,
      int? reserve,
      int? required_ammunition,
      double? price,
      String? description,
      // DateTime? created_at,
      // DateTime? updated_at,
      PivotModel? pivot,
      //available_ammunition {}
      bool? reservable,
      // relatedAmmo []
      // relatedEquipment []
      CaliberModel? caliber,
      BrandModel? brand,
      // ImageModel? image,
      // List? bookings,
      @Default(1) int? quantity,
      @Default(1) int? qty,
      String? image_url,
      String? image_thumb_url,
      // List<EquipmentModel>? equipments,
      List<AmmunitionsModel>? ammunitions}) = _GunModel;

  factory GunModel.fromJson(Map<String, Object?> json) =>
      _$GunModelFromJson(json);
}
