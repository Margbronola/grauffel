// ignore_for_file: non_constant_identifier_names

import 'package:egczacademy/models/admin_model.dart';
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
      int? max_persons,
      int? active_booking_count,
      double? price,
      String? date_from,
      String? date_to,
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
      String? status_name,
      AdminModel? admin,
      TypeModel? type,
      List<dynamic>? questions}) = _CourseModel;

  factory CourseModel.fromJson(Map<String, Object?> json) =>
      _$CourseModelFromJson(json);
}
