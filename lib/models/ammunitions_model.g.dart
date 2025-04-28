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
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      caliber: json['caliber'] == null
          ? null
          : CaliberModel.fromJson(json['caliber'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 1,
      qty: json['qty'] as int? ?? 1,
      pivot: json['pivot'] == null
          ? null
          : PivotModel.fromJson(json['pivot'] as Map<String, dynamic>),
      image_url: json['image_url'] as String?,
      image_thumb_url: json['image_thumb_url'] as String?,
    );

Map<String, dynamic> _$$_AmmunitionsModelToJson(_$_AmmunitionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'status': instance.status,
      'brand': instance.brand,
      'caliber': instance.caliber,
      'quantity': instance.quantity,
      'qty': instance.qty,
      'pivot': instance.pivot,
      'image_url': instance.image_url,
      'image_thumb_url': instance.image_thumb_url,
    };
