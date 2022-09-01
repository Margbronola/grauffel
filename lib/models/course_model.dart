import 'package:egczacademy/models/type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
class CourseModel with _$CourseModel {
  const factory CourseModel(
      {int? id,
      String? name,
      int? type_id,
      int? level_id,
// activity
      int? max_persons,
      double? price,
      DateTime? date_from,
      DateTime? date_to,
      String? start_time,
      String? end_time,
      String? color_code,
      List<int>? period,
      String? admin_id,
      String? salle_id,
      String? description,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      int? active_booking_count,
      String? status_name,
      TypeModel? type,
      List<String>? images,
      DateTime? datetime,
      List<String>? questions}) = _CourseModel;

  factory CourseModel.fromJson(Map<String, Object?> json) =>
      _$CourseModelFromJson(json);
}
