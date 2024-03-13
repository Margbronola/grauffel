// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentTypeModel _$$_DocumentTypeModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as int?,
      ismandatory: json['ismandatory'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_DocumentTypeModelToJson(
        _$_DocumentTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'ismandatory': instance.ismandatory,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
