// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentModel _$$_DocumentModelFromJson(Map<String, dynamic> json) =>
    _$_DocumentModel(
      id: json['id'] as int?,
      client_id: json['client_id'] as int?,
      client_document_type_id: json['client_document_type_id'] as int?,
      image_base64_front: json['image_base64_front'] as String?,
      image_base64_back: json['image_base64_back'] as String?,
      path: json['path'] as String?,
      path2: json['path2'] as String?,
      expiration: json['expiration'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      is_valid: json['is_valid'] as int?,
      is_new: json['is_new'] as int?,
      is_viewed: json['is_viewed'] as int?,
      client_document_types: json['client_document_types'] == null
          ? null
          : ClientDocumentsTypesModel.fromJson(
              json['client_document_types'] as Map<String, dynamic>),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_DocumentModelToJson(_$_DocumentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.client_id,
      'client_document_type_id': instance.client_document_type_id,
      'image_base64_front': instance.image_base64_front,
      'image_base64_back': instance.image_base64_back,
      'path': instance.path,
      'path2': instance.path2,
      'expiration': instance.expiration,
      'created_at': instance.created_at?.toIso8601String(),
      'is_valid': instance.is_valid,
      'is_new': instance.is_new,
      'is_viewed': instance.is_viewed,
      'client_document_types': instance.client_document_types,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
