// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeModel _$TimeModelFromJson(Map<String, dynamic> json) {
  return _TimeModel.fromJson(json);
}

/// @nodoc
mixin _$TimeModel {
  String? get time => throw _privateConstructorUsedError;
  int? get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeModelCopyWith<TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModelCopyWith<$Res> {
  factory $TimeModelCopyWith(TimeModel value, $Res Function(TimeModel) then) =
      _$TimeModelCopyWithImpl<$Res, TimeModel>;
  @useResult
  $Res call({String? time, int? available});
}

/// @nodoc
class _$TimeModelCopyWithImpl<$Res, $Val extends TimeModel>
    implements $TimeModelCopyWith<$Res> {
  _$TimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? available = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeModelCopyWith<$Res> implements $TimeModelCopyWith<$Res> {
  factory _$$_TimeModelCopyWith(
          _$_TimeModel value, $Res Function(_$_TimeModel) then) =
      __$$_TimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? time, int? available});
}

/// @nodoc
class __$$_TimeModelCopyWithImpl<$Res>
    extends _$TimeModelCopyWithImpl<$Res, _$_TimeModel>
    implements _$$_TimeModelCopyWith<$Res> {
  __$$_TimeModelCopyWithImpl(
      _$_TimeModel _value, $Res Function(_$_TimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? available = freezed,
  }) {
    return _then(_$_TimeModel(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeModel implements _TimeModel {
  const _$_TimeModel({this.time, this.available});

  factory _$_TimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimeModelFromJson(json);

  @override
  final String? time;
  @override
  final int? available;

  @override
  String toString() {
    return 'TimeModel(time: $time, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeModel &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      __$$_TimeModelCopyWithImpl<_$_TimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeModelToJson(
      this,
    );
  }
}

abstract class _TimeModel implements TimeModel {
  const factory _TimeModel({final String? time, final int? available}) =
      _$_TimeModel;

  factory _TimeModel.fromJson(Map<String, dynamic> json) =
      _$_TimeModel.fromJson;

  @override
  String? get time;
  @override
  int? get available;
  @override
  @JsonKey(ignore: true)
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
