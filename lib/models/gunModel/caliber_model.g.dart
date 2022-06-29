// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caliber_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CaliberModel _$$_CaliberModelFromJson(Map<String, dynamic> json) =>
    _$_CaliberModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      metric: json['metric'] as String?,
      typicalBulletDiameter: json['typicalBulletDiameter'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_CaliberModelToJson(_$_CaliberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'metric': instance.metric,
      'typicalBulletDiameter': instance.typicalBulletDiameter,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
