// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminModel _$$_AdminModelFromJson(Map<String, dynamic> json) =>
    _$_AdminModel(
      id: json['id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      iscoach: json['iscoach'] as int?,
      fullname: json['fullname'] as String?,
    );

Map<String, dynamic> _$$_AdminModelToJson(_$_AdminModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'iscoach': instance.iscoach,
      'fullname': instance.fullname,
    };
