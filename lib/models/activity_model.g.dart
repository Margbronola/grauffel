// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityModel _$$_ActivityModelFromJson(Map<String, dynamic> json) =>
    _$_ActivityModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      capacity: json['capacity'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      free_duration: json['free_duration'] as int?,
      course_duration: json['course_duration'] as int?,
      competition_duration: json['competition_duration'] as int?,
      status: json['status'] as int?,
      image: json['image'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      has_relation: json['has_relation'] as bool?,
      has_salle: json['has_salle'] as bool?,
      is_active: json['is_active'] as bool?,
      activitysalle: (json['activitysalle'] as List<dynamic>?)
          ?.map((e) => ActivitySalleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      salles: (json['salles'] as List<dynamic>?)
          ?.map((e) => SalleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ActivityModelToJson(_$_ActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'capacity': instance.capacity,
      'price': instance.price,
      'free_duration': instance.free_duration,
      'course_duration': instance.course_duration,
      'competition_duration': instance.competition_duration,
      'status': instance.status,
      'image': instance.image,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'has_relation': instance.has_relation,
      'has_salle': instance.has_salle,
      'is_active': instance.is_active,
      'activitysalle': instance.activitysalle,
      'salles': instance.salles,
    };
