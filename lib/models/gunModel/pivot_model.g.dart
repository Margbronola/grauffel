// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PivotModel _$$_PivotModelFromJson(Map<String, dynamic> json) =>
    _$_PivotModel(
      booking_id: json['booking_id'] as int?,
      equipement_id: json['equipement_id'] as int?,
      quantity: json['quantity'] as int?,
      capacity: json['capacity'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PivotModelToJson(_$_PivotModel instance) =>
    <String, dynamic>{
      'booking_id': instance.booking_id,
      'equipement_id': instance.equipement_id,
      'quantity': instance.quantity,
      'capacity': instance.capacity,
      'price': instance.price,
      'total': instance.total,
    };
