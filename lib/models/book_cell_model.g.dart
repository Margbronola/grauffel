// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_cell_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookCellModel _$$_BookCellModelFromJson(Map<String, dynamic> json) =>
    _$_BookCellModel(
      date: json['date'] as String?,
      time: json['time'] as String?,
      activity_id: json['activity_id'] as int?,
      guns: (json['guns'] as List<dynamic>?)
          ?.map((e) => GunModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ammunition: (json['ammunition'] as List<dynamic>?)
          ?.map((e) => AmmunitionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipements: (json['equipements'] as List<dynamic>?)
          ?.map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookCellModelToJson(_$_BookCellModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'activity_id': instance.activity_id,
      'guns': instance.guns,
      'ammunition': instance.ammunition,
      'equipements': instance.equipements,
    };
