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
      reserve: json['reserve'] as int?,
      required_ammunition: json['required_ammunition'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      pivot: json['pivot'] == null
          ? null
          : PivotModel.fromJson(json['pivot'] as Map<String, dynamic>),
      reservable: json['reservable'] as bool?,
      caliber: json['caliber'] == null
          ? null
          : CaliberModel.fromJson(json['caliber'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      quantity: json['quantity'] as int? ?? 1,
      qty: json['qty'] as int? ?? 1,
      image_url: json['image_url'] as String?,
      image_thumb_url: json['image_thumb_url'] as String?,
      ammunitions: (json['ammunitions'] as List<dynamic>?)
          ?.map((e) => AmmunitionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GunModelToJson(_$_GunModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'brand_id': instance.brand_id,
      'caliber_id': instance.caliber_id,
      'reserve': instance.reserve,
      'required_ammunition': instance.required_ammunition,
      'price': instance.price,
      'description': instance.description,
      'pivot': instance.pivot,
      'reservable': instance.reservable,
      'caliber': instance.caliber,
      'brand': instance.brand,
      'quantity': instance.quantity,
      'qty': instance.qty,
      'image_url': instance.image_url,
      'image_thumb_url': instance.image_thumb_url,
      'ammunitions': instance.ammunitions,
    };
