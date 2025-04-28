// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ammunitions_model.dart';
import 'equipment_model.dart';
import 'gunModel/gun_model.dart';

part 'book_course_model.freezed.dart';
part 'book_course_model.g.dart';

@freezed
class BookCourseModel with _$BookCourseModel {
  const factory BookCourseModel(
      {int? course_id,
      List<GunModel>? guns,
      List<AmmunitionsModel>? ammunitions,
      List<EquipmentModel>? equipments

// activity
      }) = _BookCourseModel;

  factory BookCourseModel.fromJson(Map<String, Object?> json) =>
      _$BookCourseModelFromJson(json);
}
