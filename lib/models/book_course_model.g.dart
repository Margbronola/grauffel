// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookCourseModel _$$_BookCourseModelFromJson(Map<String, dynamic> json) =>
    _$_BookCourseModel(
      course_id: json['course_id'] as int?,
      guns: (json['guns'] as List<dynamic>?)
          ?.map((e) => GunModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ammunitions: (json['ammunitions'] as List<dynamic>?)
          ?.map((e) => AmmunitionsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      equipments: (json['equipments'] as List<dynamic>?)
          ?.map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookCourseModelToJson(_$_BookCourseModel instance) =>
    <String, dynamic>{
      'course_id': instance.course_id,
      'guns': instance.guns,
      'ammunitions': instance.ammunitions,
      'equipments': instance.equipments,
    };
