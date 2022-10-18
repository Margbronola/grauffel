// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EquipmentModel _$$_EquipmentModelFromJson(Map<String, dynamic> json) =>
    _$_EquipmentModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      stocks: json['stocks'] as int?,
      type: json['type'] as int?,
      unlimited: json['unlimited'] as int?,
      pivot: json['pivot'] == null
          ? null
          : PivotModel.fromJson(json['pivot'] as Map<String, dynamic>),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      quantity: json['quantity'] as int? ?? 1,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      qty: json['qty'] as int? ?? 1,
      type_name: json['type_name'] as String?,
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EquipmentModelToJson(_$_EquipmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'stocks': instance.stocks,
      'type': instance.type,
      'unlimited': instance.unlimited,
      'pivot': instance.pivot,
      'created_at': instance.created_at?.toIso8601String(),
      'quantity': instance.quantity,
      'updated_at': instance.updated_at?.toIso8601String(),
      'brand': instance.brand,
      'qty': instance.qty,
      'type_name': instance.type_name,
      'image': instance.image,
    };
