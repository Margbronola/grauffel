import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reserve_model.freezed.dart';
part 'reserve_model.g.dart';

@freezed
class ReserveModel with _$ReserveModel {
  const factory ReserveModel({
    required String image,
    required String title,
    required String description,
  }) = _ReserveModel;

  factory ReserveModel.fromJson(Map<String, Object?> json) =>
      _$ReserveModelFromJson(json);
}
