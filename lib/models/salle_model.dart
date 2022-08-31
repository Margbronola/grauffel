import 'package:egczacademy/models/course_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'salle_model.freezed.dart';
part 'salle_model.g.dart';

@freezed
class SalleModel with _$SalleModel {
  const factory SalleModel(
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
      int? activity_capacity,
      List? bookings,
      List? activitysalle,
      Map? pivot,
      List<CourseModel>? courses}) = _SalleModel;

  factory SalleModel.fromJson(Map<String, Object?> json) =>
      _$SalleModelFromJson(json);
}
