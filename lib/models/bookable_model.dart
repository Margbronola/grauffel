import 'package:freezed_annotation/freezed_annotation.dart';
part 'bookable_model.freezed.dart';
part 'bookable_model.g.dart';

@freezed
class BookableModel with _$BookableModel {
  const factory BookableModel(
      {int? id,
      String? name,
      String? description,
      String? location,
      String? color_code,
      int? capacity,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      String? status_name,
      int? activity_capacity}) = _BookableModel;
  //pivot

  factory BookableModel.fromJson(Map<String, Object?> json) =>
      _$BookableModelFromJson(json);
}
