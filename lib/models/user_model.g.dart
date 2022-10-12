// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      fullname: json['fullname'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      zipcode: json['zipcode'] as String?,
      city: json['city'] as String?,
      country_id: json['country_id'] as int?,
      SIA_number: json['SIA_number'] as String?,
      FFTir_license_number: json['FFTir_license_number'] as String?,
      credit_points: json['credit_points'] as String?,
      verification: json['verification'] as int?,
      payment_verification: json['payment_verification'] as int?,
      status: json['status'] as int?,
      experience: json['experience'] as String?,
      equipment: json['equipment'] as String?,
      phone_number: json['phone_number'] as String?,
      firebase_id: json['firebase_id'] as String?,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      birthday: json['birthday'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'address': instance.address,
      'zipcode': instance.zipcode,
      'city': instance.city,
      'country_id': instance.country_id,
      'SIA_number': instance.SIA_number,
      'FFTir_license_number': instance.FFTir_license_number,
      'credit_points': instance.credit_points,
      'verification': instance.verification,
      'payment_verification': instance.payment_verification,
      'status': instance.status,
      'experience': instance.experience,
      'equipment': instance.equipment,
      'phone_number': instance.phone_number,
      'firebase_id': instance.firebase_id,
      'image': instance.image,
      'birthday': instance.birthday,
    };
