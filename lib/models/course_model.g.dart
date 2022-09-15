// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseModel _$$_CourseModelFromJson(Map<String, dynamic> json) =>
    _$_CourseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type_id: json['type_id'] as int?,
      level_id: json['level_id'] as int?,
      max_persons: json['max_persons'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      date_from: json['date_from'] as String?,
      date_to: json['date_to'] as String?,
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String?,
      color_code: json['color_code'] as String?,
      period: (json['period'] as List<dynamic>?)?.map((e) => e as int).toList(),
      admin_id: json['admin_id'] as String?,
      salle_id: json['salle_id'] as String?,
      description: json['description'] as String?,
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      active_booking_count: json['active_booking_count'] as int?,
      status_name: json['status_name'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_CourseModelToJson(_$_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type_id': instance.type_id,
      'level_id': instance.level_id,
      'max_persons': instance.max_persons,
      'price': instance.price,
      'date_from': instance.date_from,
      'date_to': instance.date_to,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'color_code': instance.color_code,
      'period': instance.period,
      'admin_id': instance.admin_id,
      'salle_id': instance.salle_id,
      'description': instance.description,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'active_booking_count': instance.active_booking_count,
      'status_name': instance.status_name,
      'images': instance.images,
      'questions': instance.questions,
    };
