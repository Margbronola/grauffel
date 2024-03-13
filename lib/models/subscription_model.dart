// ignore_for_file: non_constant_identifier_names

import 'package:egczacademy/models/subscription_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@freezed
class SubscriptionModel with _$SubscriptionModel {
  const factory SubscriptionModel(
      {int? id,
      int? client_id,
      int? subscription_type_id,
      double? price,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      DateTime? start_date,
      SubscriptionTypeModel? subscription_type,
      String? paymentMethodToken,
      String? subscriptionId,
      int? bank,
      int? recurring_cycle,
      int? recurring_status,
      DateTime? end_date}) = _SubscriptionModel;
  //pivot

  factory SubscriptionModel.fromJson(Map<String, Object?> json) =>
      _$SubscriptionModelFromJson(json);
}
