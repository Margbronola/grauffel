import 'package:egczacademy/models/salle_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'activity_salle_model.dart';

part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class ActivityModel with _$ActivityModel {
  const factory ActivityModel(
      {int? id,
      String? name,
      String? description,
      int? capacity,
      double? price,
      int? free_duration,
      int? course_duration,
      int? competition_duration,
      int? status,
      String? image,
      DateTime? created_at,
      DateTime? updated_at,
      bool? has_relation,
      bool? has_salle,
      bool? is_active,
      String? date_from,
      String? date_to,
      String? start_time,
      String? end_time,
      List<ActivitySalleModel>? activitysalle,
      List<SalleModel>? salles}) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, Object?> json) =>
      _$ActivityModelFromJson(json);
}
