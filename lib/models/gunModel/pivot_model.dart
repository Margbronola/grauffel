import 'package:freezed_annotation/freezed_annotation.dart';
part 'pivot_model.freezed.dart';
part 'pivot_model.g.dart';

@freezed
class PivotModel with _$PivotModel {
  const factory PivotModel({
    int? booking_id,
    int? equipement_id,
    int? quantity,
    int? capacity,
    double? price,
    double? total,
  }) = _PivotModel;
  //pivot

  factory PivotModel.fromJson(Map<String, Object?> json) =>
      _$PivotModelFromJson(json);
}
