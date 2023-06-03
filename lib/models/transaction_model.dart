// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    int? id,
    int? client_id,
    String? first_name,
    String? last_name,
    String? email,
    String? address,
    String? city,
    String? telephone,
    String? zipcode,
    String? package_name,
    String? purchase_token,
    int? uuid,
    int? transaction_id,
    int? booking_id,
    int? client_subscription_id,
    String? subscription_name,
    double? ammunition_discount,
    double? equipment_discount,
    double? gun_discount,
    double? price_per_hour,
    double? ook_cost,
    double? total_gun_cost,
    double? total_ammunition_cost,
    double? total_equipment_cost,
    double? sub_total,
    double? total_discount,
    String? purchase_number,
    String? purchase_name,
// payment_method
// payment_method_type
    int? status,
    double? price,
    double? tax_included,
    double? tax,
// payment_status
    String? reference_number,
    DateTime? created_at,
    DateTime? updated_at,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, Object?> json) =>
      _$TransactionModelFromJson(json);
}
