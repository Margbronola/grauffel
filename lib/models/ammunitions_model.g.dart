// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ammunitions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AmmunitionsModel _$$_AmmunitionsModelFromJson(Map<String, dynamic> json) =>
    _$_AmmunitionsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      stock: json['stock'] as int?,
      status: json['status'] as int?,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      caliber: json['caliber'] == null
          ? null
          : CaliberModel.fromJson(json['caliber'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 1,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AmmunitionsModelToJson(_$_AmmunitionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'status': instance.status,
      'image': instance.image,
      'brand': instance.brand,
      'caliber': instance.caliber,
      'quantity': instance.quantity,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
