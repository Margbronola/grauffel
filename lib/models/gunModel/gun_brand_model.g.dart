// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gun_brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GunBrandModel _$$_GunBrandModelFromJson(Map<String, dynamic> json) =>
    _$_GunBrandModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      type_id: json['type_id'] as int?,
      status: json['status'] as int?,
      updatedAt: json['updatedAt'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_GunBrandModelToJson(_$_GunBrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'type_id': instance.type_id,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
