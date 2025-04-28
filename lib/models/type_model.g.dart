// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TypeModel _$$_TypeModelFromJson(Map<String, dynamic> json) => _$_TypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_TypeModelToJson(_$_TypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
