import 'package:egczacademy/models/activity_salle_model.dart';
import 'package:egczacademy/models/salle_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bookable_model.freezed.dart';
part 'bookable_model.g.dart';

@freezed
class BookableModel with _$BookableModel {
  const factory BookableModel(
      {int? id,
      String? name,
      String? description,
      int? capacity,
      double? price,
      int? free_duration,
      int? course_duration,
      int? competition_duration,
      int? status,
      List<ActivitySalleModel>? activitysalle,
      DateTime? created_at,
      DateTime? updated_at,
      List<SalleModel>? salles}) = _BookableModel;
  //pivot

  factory BookableModel.fromJson(Map<String, Object?> json) =>
      _$BookableModelFromJson(json);
}
