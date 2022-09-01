// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeModel _$$_TimeModelFromJson(Map<String, dynamic> json) => _$_TimeModel(
      time: json['time'] as String?,
      avaiable: json['avaiable'] as int?,
      avalable_slots: (json['avalable_slots'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_TimeModelToJson(_$_TimeModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'avaiable': instance.avaiable,
      'avalable_slots': instance.avalable_slots,
    };
