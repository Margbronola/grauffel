import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_type_model.freezed.dart';
part 'subscription_type_model.g.dart';

@freezed
class SubscriptionTypeModel with _$SubscriptionTypeModel {
  const factory SubscriptionTypeModel(
      {int? id,
      String? name,
      int? duration,
      int? duration_type,
      double? ammunition_discount,
      double? equipment_discount,
      double? gun_discount,
      double? price,
      double? price_per_hour,
      int? status,
      double? fcredit,
      DateTime? created_at,
      DateTime? updated_at,
      List? allow_guns}) = _SubscriptionTypeModel;
  //pivot

  factory SubscriptionTypeModel.fromJson(Map<String, Object?> json) =>
      _$SubscriptionTypeModelFromJson(json);
}
