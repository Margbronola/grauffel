// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_salle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivitySalleModel _$ActivitySalleModelFromJson(Map<String, dynamic> json) {
  return _ActivitySalleModel.fromJson(json);
}

/// @nodoc
mixin _$ActivitySalleModel {
  int? get id => throw _privateConstructorUsedError;
  String? get date_start => throw _privateConstructorUsedError;
  String? get date_end => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  int? get activity_id => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  ActivityModel? get activity => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivitySalleModelCopyWith<ActivitySalleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitySalleModelCopyWith<$Res> {
  factory $ActivitySalleModelCopyWith(
          ActivitySalleModel value, $Res Function(ActivitySalleModel) then) =
      _$ActivitySalleModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? date_start,
      String? date_end,
      int? capacity,
      int? activity_id,
      int? status,
      ActivityModel? activity,
      DateTime? created_at,
      DateTime? updated_at});

  $ActivityModelCopyWith<$Res>? get activity;
}

/// @nodoc
class _$ActivitySalleModelCopyWithImpl<$Res>
    implements $ActivitySalleModelCopyWith<$Res> {
  _$ActivitySalleModelCopyWithImpl(this._value, this._then);

  final ActivitySalleModel _value;
  // ignore: unused_field
  final $Res Function(ActivitySalleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date_start = freezed,
    Object? date_end = freezed,
    Object? capacity = freezed,
    Object? activity_id = freezed,
    Object? status = freezed,
    Object? activity = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date_start: date_start == freezed
          ? _value.date_start
          : date_start // ignore: cast_nullable_to_non_nullable
              as String?,
      date_end: date_end == freezed
          ? _value.date_end
          : date_end // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      activity_id: activity_id == freezed
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $ActivityModelCopyWith<$Res>? get activity {
    if (_value.activity == null) {
      return null;
    }

    return $ActivityModelCopyWith<$Res>(_value.activity!, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

/// @nodoc
abstract class _$$_ActivitySalleModelCopyWith<$Res>
    implements $ActivitySalleModelCopyWith<$Res> {
  factory _$$_ActivitySalleModelCopyWith(_$_ActivitySalleModel value,
          $Res Function(_$_ActivitySalleModel) then) =
      __$$_ActivitySalleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? date_start,
      String? date_end,
      int? capacity,
      int? activity_id,
      int? status,
      ActivityModel? activity,
      DateTime? created_at,
      DateTime? updated_at});

  @override
  $ActivityModelCopyWith<$Res>? get activity;
}

/// @nodoc
class __$$_ActivitySalleModelCopyWithImpl<$Res>
    extends _$ActivitySalleModelCopyWithImpl<$Res>
    implements _$$_ActivitySalleModelCopyWith<$Res> {
  __$$_ActivitySalleModelCopyWithImpl(
      _$_ActivitySalleModel _value, $Res Function(_$_ActivitySalleModel) _then)
      : super(_value, (v) => _then(v as _$_ActivitySalleModel));

  @override
  _$_ActivitySalleModel get _value => super._value as _$_ActivitySalleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? date_start = freezed,
    Object? date_end = freezed,
    Object? capacity = freezed,
    Object? activity_id = freezed,
    Object? status = freezed,
    Object? activity = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_ActivitySalleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date_start: date_start == freezed
          ? _value.date_start
          : date_start // ignore: cast_nullable_to_non_nullable
              as String?,
      date_end: date_end == freezed
          ? _value.date_end
          : date_end // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      activity_id: activity_id == freezed
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivitySalleModel implements _ActivitySalleModel {
  const _$_ActivitySalleModel(
      {this.id,
      this.date_start,
      this.date_end,
      this.capacity,
      this.activity_id,
      this.status,
      this.activity,
      this.created_at,
      this.updated_at});

  factory _$_ActivitySalleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActivitySalleModelFromJson(json);

  @override
  final int? id;
  @override
  final String? date_start;
  @override
  final String? date_end;
  @override
  final int? capacity;
  @override
  final int? activity_id;
  @override
  final int? status;
  @override
  final ActivityModel? activity;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'ActivitySalleModel(id: $id, date_start: $date_start, date_end: $date_end, capacity: $capacity, activity_id: $activity_id, status: $status, activity: $activity, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivitySalleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.date_start, date_start) &&
            const DeepCollectionEquality().equals(other.date_end, date_end) &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality()
                .equals(other.activity_id, activity_id) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date_start),
      const DeepCollectionEquality().hash(date_end),
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(activity_id),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$$_ActivitySalleModelCopyWith<_$_ActivitySalleModel> get copyWith =>
      __$$_ActivitySalleModelCopyWithImpl<_$_ActivitySalleModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivitySalleModelToJson(this);
  }
}

abstract class _ActivitySalleModel implements ActivitySalleModel {
  const factory _ActivitySalleModel(
      {final int? id,
      final String? date_start,
      final String? date_end,
      final int? capacity,
      final int? activity_id,
      final int? status,
      final ActivityModel? activity,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$_ActivitySalleModel;

  factory _ActivitySalleModel.fromJson(Map<String, dynamic> json) =
      _$_ActivitySalleModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get date_start => throw _privateConstructorUsedError;
  @override
  String? get date_end => throw _privateConstructorUsedError;
  @override
  int? get capacity => throw _privateConstructorUsedError;
  @override
  int? get activity_id => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  ActivityModel? get activity => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActivitySalleModelCopyWith<_$_ActivitySalleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
