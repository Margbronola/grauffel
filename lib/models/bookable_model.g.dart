// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookable_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookableModel _$$_BookableModelFromJson(Map<String, dynamic> json) =>
    _$_BookableModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      capacity: json['capacity'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      free_duration: json['free_duration'] as int?,
      course_duration: json['course_duration'] as int?,
      competition_duration: json['competition_duration'] as int?,
      status: json['status'] as int?,
      activitysalle: (json['activitysalle'] as List<dynamic>?)
          ?.map((e) => ActivitySalleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      salles: (json['salles'] as List<dynamic>?)
          ?.map((e) => SalleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookableModelToJson(_$_BookableModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'capacity': instance.capacity,
      'price': instance.price,
      'free_duration': instance.free_duration,
      'course_duration': instance.course_duration,
      'competition_duration': instance.competition_duration,
      'status': instance.status,
      'activitysalle': instance.activitysalle,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'salles': instance.salles,
    };
