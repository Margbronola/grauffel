// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      avatar: json['avatar'] as String?,
      fullname: json['fullname'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      c_password: json['c_password'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      address: json['address'] as String?,
      zipcode: json['zipcode'] as String?,
      city: json['city'] as String?,
      country_id: json['country_id'] as int?,
      SIA_number: json['SIA_number'] as int?,
      FFTir_license_number: json['FFTir_license_number'] as int?,
      credit_points: (json['credit_points'] as num?)?.toDouble(),
      verification: json['verification'] as int?,
      payment_verification: json['payment_verification'] as int?,
      status: json['status'] as int?,
      active_client_subscription: json['active_client_subscription'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      firebase_id: json['firebase_id'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
      'fullname': instance.fullname,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'password': instance.password,
      'c_password': instance.c_password,
      'birthday': instance.birthday?.toIso8601String(),
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
      'active_client_subscription': instance.active_client_subscription,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'firebase_id': instance.firebase_id,
    };
