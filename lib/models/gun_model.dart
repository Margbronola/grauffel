import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'gun_model.freezed.dart';
part 'gun_model.g.dart';

@freezed
class GunModel with _$GunModel {
  const factory GunModel({
    required String image,
    required String name,
    required String description,
  }) = _GunModel;

  factory GunModel.fromJson(Map<String, Object?> json) =>
      _$GunModelFromJson(json);
}
