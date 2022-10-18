import 'package:egczacademy/models/type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'reserve_model.freezed.dart';
part 'reserve_model.g.dart';

@freezed
class ReserveModel with _$ReserveModel {
  const factory ReserveModel({
    String? image,
    String? title,
    String? description,
    String? dateTo,
    String? dateFrom,
    String? startTime,
    String? endTime,
    String? instructor,
    int? restantes,
    TypeModel? type,
  }) = _ReserveModel;

  factory ReserveModel.fromJson(Map<String, Object?> json) =>
      _$ReserveModelFromJson(json);
}
