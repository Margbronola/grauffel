// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalleModel _$$_SalleModelFromJson(Map<String, dynamic> json) =>
    _$_SalleModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] as String?,
      color_code: json['color_code'] as String?,
      capacity: json['capacity'] as int?,
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status_name: json['status_name'] as String?,
      activity_capacity: json['activity_capacity'] as int?,
      bookings: json['bookings'] as List<dynamic>?,
      activitysalle: json['activitysalle'] as List<dynamic>?,
      pivot: json['pivot'] as Map<String, dynamic>?,
      courses: (json['courses'] as List<dynamic>?)
          ?.map((e) => CourseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalleModelToJson(_$_SalleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'color_code': instance.color_code,
      'capacity': instance.capacity,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'status_name': instance.status_name,
      'activity_capacity': instance.activity_capacity,
      'bookings': instance.bookings,
      'activitysalle': instance.activitysalle,
      'pivot': instance.pivot,
      'courses': instance.courses,
    };
