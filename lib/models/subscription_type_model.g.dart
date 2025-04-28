// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionTypeModel _$$_SubscriptionTypeModelFromJson(
        Map<String, dynamic> json) =>
    _$_SubscriptionTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      duration: json['duration'] as int?,
      duration_type: json['duration_type'] as int?,
      ammunition_discount: (json['ammunition_discount'] as num?)?.toDouble(),
      equipment_discount: (json['equipment_discount'] as num?)?.toDouble(),
      gun_discount: (json['gun_discount'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      price_per_hour: (json['price_per_hour'] as num?)?.toDouble(),
      status: json['status'] as int?,
      fcredit: (json['fcredit'] as num?)?.toDouble(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      allow_guns: json['allow_guns'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_SubscriptionTypeModelToJson(
        _$_SubscriptionTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'duration_type': instance.duration_type,
      'ammunition_discount': instance.ammunition_discount,
      'equipment_discount': instance.equipment_discount,
      'gun_discount': instance.gun_discount,
      'price': instance.price,
      'price_per_hour': instance.price_per_hour,
      'status': instance.status,
      'fcredit': instance.fcredit,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'allow_guns': instance.allow_guns,
    };
