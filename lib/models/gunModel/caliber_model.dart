import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'caliber_model.freezed.dart';
part 'caliber_model.g.dart';

@freezed
class CaliberModel with _$CaliberModel {
  const factory CaliberModel({
    int? id,
    String? name,
    String? metric,
    String? typicalBulletDiameter,
    String? createdAt,
    String? updatedAt,
  }) = _CaliberModel;

  factory CaliberModel.fromJson(Map<String, Object?> json) =>
      _$CaliberModelFromJson(json);
}
