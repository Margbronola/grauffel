// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gun_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GunModel _$$_GunModelFromJson(Map<String, dynamic> json) => _$_GunModel(
      id: json['id'] as int?,
      model: json['model'] as String?,
      brand_id: json['brand_id'] as int?,
      caliber_id: json['caliber_id'] as int?,
      mags_capacity: json['mags_capacity'] as int?,
      reserve: json['reserve'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      reservable: json['reservable'] as bool?,
      caliber: json['caliber'] == null
          ? null
          : CaliberModel.fromJson(json['caliber'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      bookings: json['bookings'] as List<dynamic>?,
      ammunitions: json['ammunitions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_GunModelToJson(_$_GunModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'brand_id': instance.brand_id,
      'caliber_id': instance.caliber_id,
      'mags_capacity': instance.mags_capacity,
      'reserve': instance.reserve,
      'price': instance.price,
      'description': instance.description,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'reservable': instance.reservable,
      'caliber': instance.caliber,
      'brand': instance.brand,
      'image': instance.image,
      'bookings': instance.bookings,
      'ammunitions': instance.ammunitions,
    };
