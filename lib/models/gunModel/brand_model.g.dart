// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandModel _$$_BrandModelFromJson(Map<String, dynamic> json) =>
    _$_BrandModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      type_id: json['type_id'] as int?,
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_BrandModelToJson(_$_BrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'type_id': instance.type_id,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
