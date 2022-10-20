import 'package:egczacademy/models/gunModel/country_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'image_model.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? fullname,
    String? first_name,
    String? last_name,
    String? email,
    String? address,
    String? zipcode,
    String? city,
    int? country_id,
    String? SIA_number,
    String? FFTir_license_number,
    String? credit_points,
    String? client_badge,
    int? verification,
    int? payment_verification,
    int? status,
    int? reduced_mobility,
    String? experience,
    String? equipment,
    String? phone_number,
    CountryModel? country,
    String? firebase_id,
    ImageModel? image,
    String? birthday,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic?> json) =>
      _$UserModelFromJson(json);
}
