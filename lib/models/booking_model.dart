import 'package:egczacademy/models/activity_model.dart';
import 'package:egczacademy/models/ammunitions_model.dart';
import 'package:egczacademy/models/bookable_model.dart';
import 'package:egczacademy/models/equipment_model.dart';
import 'package:egczacademy/models/gunModel/gun_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingModel with _$BookingModel {
  const factory BookingModel({
    int? id,
    int? bookable_id,
    String? name,
    int? client_id,
    int? activity_id,
    DateTime? start,
    DateTime? end,
    int? cell_loc,
    int? status,
    int? duration,
    double? bookable_cost,
    double? total_gun_cost,
    double? total_ammunition_cost,
    double? total_equipment_cost,
    double? tax_included,
    double? sub_total,
    double? gun_discount,
    double? ammunition_discount,
    double? equipment_discount,
    double? total_discount,
    double? total_cost,
    String? purchase_number,
    DateTime? created_at,
    DateTime? updated_at,
    String? status_name,
    String? morph_class,
    List<AmmunitionsModel>? ammunitions,
    List<GunModel>? guns,
    List<EquipmentModel>? equipements,
    BookableModel? bookable,
    ActivityModel? activity,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, Object?> json) =>
      _$BookingModelFromJson(json);
}
