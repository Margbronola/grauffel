// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandTypeModel _$$_BrandTypeModelFromJson(Map<String, dynamic> json) =>
    _$_BrandTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      status: json['status'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_BrandTypeModelToJson(_$_BrandTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
