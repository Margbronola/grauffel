// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'salle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalleModel _$SalleModelFromJson(Map<String, dynamic> json) {
  return _SalleModel.fromJson(json);
}

/// @nodoc
mixin _$SalleModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get color_code => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  String? get status_name => throw _privateConstructorUsedError;
  int? get activity_capacity => throw _privateConstructorUsedError;
  List<dynamic>? get bookings => throw _privateConstructorUsedError;
  List<dynamic>? get activitysalle => throw _privateConstructorUsedError;
  List<CourseModel>? get courses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalleModelCopyWith<SalleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalleModelCopyWith<$Res> {
  factory $SalleModelCopyWith(
          SalleModel value, $Res Function(SalleModel) then) =
      _$SalleModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? location,
      String? color_code,
      int? capacity,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      String? status_name,
      int? activity_capacity,
      List<dynamic>? bookings,
      List<dynamic>? activitysalle,
      List<CourseModel>? courses});
}

/// @nodoc
class _$SalleModelCopyWithImpl<$Res> implements $SalleModelCopyWith<$Res> {
  _$SalleModelCopyWithImpl(this._value, this._then);

  final SalleModel _value;
  // ignore: unused_field
  final $Res Function(SalleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? color_code = freezed,
    Object? capacity = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? status_name = freezed,
    Object? activity_capacity = freezed,
    Object? bookings = freezed,
    Object? activitysalle = freezed,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      color_code: color_code == freezed
          ? _value.color_code
          : color_code // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: status_name == freezed
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      activity_capacity: activity_capacity == freezed
          ? _value.activity_capacity
          : activity_capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      bookings: bookings == freezed
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      activitysalle: activitysalle == freezed
          ? _value.activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      courses: courses == freezed
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_SalleModelCopyWith<$Res>
    implements $SalleModelCopyWith<$Res> {
  factory _$$_SalleModelCopyWith(
          _$_SalleModel value, $Res Function(_$_SalleModel) then) =
      __$$_SalleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? location,
      String? color_code,
      int? capacity,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      String? status_name,
      int? activity_capacity,
      List<dynamic>? bookings,
      List<dynamic>? activitysalle,
      List<CourseModel>? courses});
}

/// @nodoc
class __$$_SalleModelCopyWithImpl<$Res> extends _$SalleModelCopyWithImpl<$Res>
    implements _$$_SalleModelCopyWith<$Res> {
  __$$_SalleModelCopyWithImpl(
      _$_SalleModel _value, $Res Function(_$_SalleModel) _then)
      : super(_value, (v) => _then(v as _$_SalleModel));

  @override
  _$_SalleModel get _value => super._value as _$_SalleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? color_code = freezed,
    Object? capacity = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? status_name = freezed,
    Object? activity_capacity = freezed,
    Object? bookings = freezed,
    Object? activitysalle = freezed,
    Object? courses = freezed,
  }) {
    return _then(_$_SalleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      color_code: color_code == freezed
          ? _value.color_code
          : color_code // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: status_name == freezed
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      activity_capacity: activity_capacity == freezed
          ? _value.activity_capacity
          : activity_capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      bookings: bookings == freezed
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      activitysalle: activitysalle == freezed
          ? _value._activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      courses: courses == freezed
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalleModel implements _SalleModel {
  const _$_SalleModel(
      {this.id,
      this.name,
      this.description,
      this.location,
      this.color_code,
      this.capacity,
      this.status,
      this.created_at,
      this.updated_at,
      this.status_name,
      this.activity_capacity,
      final List<dynamic>? bookings,
      final List<dynamic>? activitysalle,
      final List<CourseModel>? courses})
      : _bookings = bookings,
        _activitysalle = activitysalle,
        _courses = courses;

  factory _$_SalleModel.fromJson(Map<String, dynamic> json) =>
      _$$_SalleModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final String? color_code;
  @override
  final int? capacity;
  @override
  final int? status;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final String? status_name;
  @override
  final int? activity_capacity;
  final List<dynamic>? _bookings;
  @override
  List<dynamic>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _activitysalle;
  @override
  List<dynamic>? get activitysalle {
    final value = _activitysalle;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CourseModel>? _courses;
  @override
  List<CourseModel>? get courses {
    final value = _courses;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalleModel(id: $id, name: $name, description: $description, location: $location, color_code: $color_code, capacity: $capacity, status: $status, created_at: $created_at, updated_at: $updated_at, status_name: $status_name, activity_capacity: $activity_capacity, bookings: $bookings, activitysalle: $activitysalle, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.color_code, color_code) &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.status_name, status_name) &&
            const DeepCollectionEquality()
                .equals(other.activity_capacity, activity_capacity) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality()
                .equals(other._activitysalle, _activitysalle) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(color_code),
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(status_name),
      const DeepCollectionEquality().hash(activity_capacity),
      const DeepCollectionEquality().hash(_bookings),
      const DeepCollectionEquality().hash(_activitysalle),
      const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  _$$_SalleModelCopyWith<_$_SalleModel> get copyWith =>
      __$$_SalleModelCopyWithImpl<_$_SalleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalleModelToJson(this);
  }
}

abstract class _SalleModel implements SalleModel {
  const factory _SalleModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? location,
      final String? color_code,
      final int? capacity,
      final int? status,
      final DateTime? created_at,
      final DateTime? updated_at,
      final String? status_name,
      final int? activity_capacity,
      final List<dynamic>? bookings,
      final List<dynamic>? activitysalle,
      final List<CourseModel>? courses}) = _$_SalleModel;

  factory _SalleModel.fromJson(Map<String, dynamic> json) =
      _$_SalleModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get location => throw _privateConstructorUsedError;
  @override
  String? get color_code => throw _privateConstructorUsedError;
  @override
  int? get capacity => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  String? get status_name => throw _privateConstructorUsedError;
  @override
  int? get activity_capacity => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get bookings => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get activitysalle => throw _privateConstructorUsedError;
  @override
  List<CourseModel>? get courses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SalleModelCopyWith<_$_SalleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
