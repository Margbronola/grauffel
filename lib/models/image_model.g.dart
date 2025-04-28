// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      id: json['id'] as int?,
      filename: json['filename'] as String?,
      path: json['path'] as String?,
      order: json['order'] as int?,
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'path': instance.path,
      'order': instance.order,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
