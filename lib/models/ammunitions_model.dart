import 'package:egczacademy/models/gunModel/brand_model.dart';
import 'package:egczacademy/models/gunModel/caliber_model.dart';
import 'package:egczacademy/models/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ammunitions_model.freezed.dart';
part 'ammunitions_model.g.dart';

@freezed
class AmmunitionsModel with _$AmmunitionsModel {
  const factory AmmunitionsModel(
      {int? id,
      String? name,
      String? description,
      double? price,
      int? stock,
      int? status,
      ImageModel? image,
      BrandModel? brand,
      CaliberModel? caliber,
      @Default(1) int quantity,
      DateTime? created_at,
      DateTime? updated_at}) = _AmmunitionsModel;
  //pivot

  factory AmmunitionsModel.fromJson(Map<String, Object?> json) =>
      _$AmmunitionsModelFromJson(json);
}
