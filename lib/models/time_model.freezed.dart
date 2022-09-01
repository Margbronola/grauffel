// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  int? get avaiable => throw _privateConstructorUsedError;
  List<int>? get avalable_slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeModelCopyWith<TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModelCopyWith<$Res> {
  factory $TimeModelCopyWith(TimeModel value, $Res Function(TimeModel) then) =
      _$TimeModelCopyWithImpl<$Res>;
  $Res call({String? time, int? avaiable, List<int>? avalable_slots});
}

/// @nodoc
class _$TimeModelCopyWithImpl<$Res> implements $TimeModelCopyWith<$Res> {
  _$TimeModelCopyWithImpl(this._value, this._then);

  final TimeModel _value;
  // ignore: unused_field
  final $Res Function(TimeModel) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? avaiable = freezed,
    Object? avalable_slots = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      avaiable: avaiable == freezed
          ? _value.avaiable
          : avaiable // ignore: cast_nullable_to_non_nullable
              as int?,
      avalable_slots: avalable_slots == freezed
          ? _value.avalable_slots
          : avalable_slots // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$$_TimeModelCopyWith<$Res> implements $TimeModelCopyWith<$Res> {
  factory _$$_TimeModelCopyWith(
          _$_TimeModel value, $Res Function(_$_TimeModel) then) =
      __$$_TimeModelCopyWithImpl<$Res>;
  @override
  $Res call({String? time, int? avaiable, List<int>? avalable_slots});
}

/// @nodoc
class __$$_TimeModelCopyWithImpl<$Res> extends _$TimeModelCopyWithImpl<$Res>
    implements _$$_TimeModelCopyWith<$Res> {
  __$$_TimeModelCopyWithImpl(
      _$_TimeModel _value, $Res Function(_$_TimeModel) _then)
      : super(_value, (v) => _then(v as _$_TimeModel));

  @override
  _$_TimeModel get _value => super._value as _$_TimeModel;

  @override
  $Res call({
    Object? time = freezed,
    Object? avaiable = freezed,
    Object? avalable_slots = freezed,
  }) {
    return _then(_$_TimeModel(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      avaiable: avaiable == freezed
          ? _value.avaiable
          : avaiable // ignore: cast_nullable_to_non_nullable
              as int?,
      avalable_slots: avalable_slots == freezed
          ? _value._avalable_slots
          : avalable_slots // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeModel implements _TimeModel {
  const _$_TimeModel(
      {this.time, this.avaiable, final List<int>? avalable_slots})
      : _avalable_slots = avalable_slots;

  factory _$_TimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TimeModelFromJson(json);

  @override
  final String? time;
  @override
  final int? avaiable;
  final List<int>? _avalable_slots;
  @override
  List<int>? get avalable_slots {
    final value = _avalable_slots;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TimeModel(time: $time, avaiable: $avaiable, avalable_slots: $avalable_slots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeModel &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.avaiable, avaiable) &&
            const DeepCollectionEquality()
                .equals(other._avalable_slots, _avalable_slots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(avaiable),
      const DeepCollectionEquality().hash(_avalable_slots));

  @JsonKey(ignore: true)
  @override
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
  const factory _TimeModel(
      {final String? time,
      final int? avaiable,
      final List<int>? avalable_slots}) = _$_TimeModel;

  factory _TimeModel.fromJson(Map<String, dynamic> json) =
      _$_TimeModel.fromJson;

  @override
  String? get time;
  @override
  int? get avaiable;
  @override
  List<int>? get avalable_slots;
  @override
  @JsonKey(ignore: true)
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
