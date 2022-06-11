import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'bullet_model.freezed.dart';
part 'bullet_model.g.dart';

@freezed
class BulletModel with _$BulletModel {
  const factory BulletModel({
    required String image,
    required String name,
    required String description,
  }) = _BulletModel;

  factory BulletModel.fromJson(Map<String, Object?> json) =>
      _$BulletModelFromJson(json);
}
