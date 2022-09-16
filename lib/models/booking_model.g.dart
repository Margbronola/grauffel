// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingModel _$$_BookingModelFromJson(Map<String, dynamic> json) =>
    _$_BookingModel(
      id: json['id'] as int?,
      bookable_id: json['bookable_id'] as int?,
      name: json['name'] as String?,
      client_id: json['client_id'] as int?,
      activity_id: json['activity_id'] as int?,
      description: json['description'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      cell_loc: json['cell_loc'] as int?,
      status: json['status'] as int?,
      duration: json['duration'] as int?,
      bookable_cost: (json['bookable_cost'] as num?)?.toDouble(),
      total_gun_cost: (json['total_gun_cost'] as num?)?.toDouble(),
      total_ammunition_cost:
          (json['total_ammunition_cost'] as num?)?.toDouble(),
      total_equipment_cost: (json['total_equipment_cost'] as num?)?.toDouble(),
      tax_included: (json['tax_included'] as num?)?.toDouble(),
      sub_total: (json['sub_total'] as num?)?.toDouble(),
      gun_discount: (json['gun_discount'] as num?)?.toDouble(),
      ammunition_discount: (json['ammunition_discount'] as num?)?.toDouble(),
      equipment_discount: (json['equipment_discount'] as num?)?.toDouble(),
      total_discount: (json['total_discount'] as num?)?.toDouble(),
      total_cost: (json['total_cost'] as num?)?.toDouble(),
      purchase_number: json['purchase_number'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status_name: json['status_name'] as String?,
      morph_class: json['morph_class'] as String?,
      ammunitions: (json['ammunitions'] as List<dynamic>?)
          ?.map((e) => AmmunitionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      guns: (json['guns'] as List<dynamic>?)
          ?.map((e) => GunModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipements: (json['equipements'] as List<dynamic>?)
          ?.map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookable: json['bookable'] == null
          ? null
          : ActivityModel.fromJson(json['bookable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookingModelToJson(_$_BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookable_id': instance.bookable_id,
      'name': instance.name,
      'client_id': instance.client_id,
      'activity_id': instance.activity_id,
      'description': instance.description,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'cell_loc': instance.cell_loc,
      'status': instance.status,
      'duration': instance.duration,
      'bookable_cost': instance.bookable_cost,
      'total_gun_cost': instance.total_gun_cost,
      'total_ammunition_cost': instance.total_ammunition_cost,
      'total_equipment_cost': instance.total_equipment_cost,
      'tax_included': instance.tax_included,
      'sub_total': instance.sub_total,
      'gun_discount': instance.gun_discount,
      'ammunition_discount': instance.ammunition_discount,
      'equipment_discount': instance.equipment_discount,
      'total_discount': instance.total_discount,
      'total_cost': instance.total_cost,
      'purchase_number': instance.purchase_number,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'status_name': instance.status_name,
      'morph_class': instance.morph_class,
      'ammunitions': instance.ammunitions,
      'guns': instance.guns,
      'equipements': instance.equipements,
      'bookable': instance.bookable,
    };
