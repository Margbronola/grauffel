import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'image_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? avatar,
    String? fullname,
    String? first_name,
    String? last_name,
    String? email,
    String? password,
    String? c_password,
    String? address,
    String? zipcode,
    String? city,
    int? country_id,
    String? SIA_number,
    String? FFTir_license_number,
    double? credit_points,
    int? verification,
    int? payment_verification,
    int? status,
    String? experience,
    String? equipment,
    String? phone_number,
    // SubscriptionModel? active_client_subscription,
    DateTime? created_at,
    DateTime? updated_at,
    String? firebase_id,
    ImageModel? image,
    String? birthday,
    // "equipment": null,
    // "level": null,
    // "created_at": "2022-06-28T08:32:13.000000Z",
    // "updated_at": "2022-06-28T08:36:46.000000Z",
    // "display_name": "blue red (john@gmail.com)",
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
