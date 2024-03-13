// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  Map<dynamic, dynamic>? get pivot => throw _privateConstructorUsedError;
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
      _$SalleModelCopyWithImpl<$Res, SalleModel>;
  @useResult
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
      Map<dynamic, dynamic>? pivot,
      List<CourseModel>? courses});
}

/// @nodoc
class _$SalleModelCopyWithImpl<$Res, $Val extends SalleModel>
    implements $SalleModelCopyWith<$Res> {
  _$SalleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
    Object? pivot = freezed,
    Object? courses = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      color_code: freezed == color_code
          ? _value.color_code
          : color_code // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      activity_capacity: freezed == activity_capacity
          ? _value.activity_capacity
          : activity_capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      bookings: freezed == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      activitysalle: freezed == activitysalle
          ? _value.activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      courses: freezed == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<CourseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalleModelCopyWith<$Res>
    implements $SalleModelCopyWith<$Res> {
  factory _$$_SalleModelCopyWith(
          _$_SalleModel value, $Res Function(_$_SalleModel) then) =
      __$$_SalleModelCopyWithImpl<$Res>;
  @override
  @useResult
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
      Map<dynamic, dynamic>? pivot,
      List<CourseModel>? courses});
}

/// @nodoc
class __$$_SalleModelCopyWithImpl<$Res>
    extends _$SalleModelCopyWithImpl<$Res, _$_SalleModel>
    implements _$$_SalleModelCopyWith<$Res> {
  __$$_SalleModelCopyWithImpl(
      _$_SalleModel _value, $Res Function(_$_SalleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    Object? pivot = freezed,
    Object? courses = freezed,
  }) {
    return _then(_$_SalleModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      color_code: freezed == color_code
          ? _value.color_code
          : color_code // ignore: cast_nullable_to_non_nullable
              as String?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      activity_capacity: freezed == activity_capacity
          ? _value.activity_capacity
          : activity_capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      bookings: freezed == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      activitysalle: freezed == activitysalle
          ? _value._activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pivot: freezed == pivot
          ? _value._pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
      courses: freezed == courses
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
      final Map<dynamic, dynamic>? pivot,
      final List<CourseModel>? courses})
      : _bookings = bookings,
        _activitysalle = activitysalle,
        _pivot = pivot,
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
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _activitysalle;
  @override
  List<dynamic>? get activitysalle {
    final value = _activitysalle;
    if (value == null) return null;
    if (_activitysalle is EqualUnmodifiableListView) return _activitysalle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<dynamic, dynamic>? _pivot;
  @override
  Map<dynamic, dynamic>? get pivot {
    final value = _pivot;
    if (value == null) return null;
    if (_pivot is EqualUnmodifiableMapView) return _pivot;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<CourseModel>? _courses;
  @override
  List<CourseModel>? get courses {
    final value = _courses;
    if (value == null) return null;
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SalleModel(id: $id, name: $name, description: $description, location: $location, color_code: $color_code, capacity: $capacity, status: $status, created_at: $created_at, updated_at: $updated_at, status_name: $status_name, activity_capacity: $activity_capacity, bookings: $bookings, activitysalle: $activitysalle, pivot: $pivot, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalleModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.color_code, color_code) ||
                other.color_code == color_code) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.status_name, status_name) ||
                other.status_name == status_name) &&
            (identical(other.activity_capacity, activity_capacity) ||
                other.activity_capacity == activity_capacity) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality()
                .equals(other._activitysalle, _activitysalle) &&
            const DeepCollectionEquality().equals(other._pivot, _pivot) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      location,
      color_code,
      capacity,
      status,
      created_at,
      updated_at,
      status_name,
      activity_capacity,
      const DeepCollectionEquality().hash(_bookings),
      const DeepCollectionEquality().hash(_activitysalle),
      const DeepCollectionEquality().hash(_pivot),
      const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalleModelCopyWith<_$_SalleModel> get copyWith =>
      __$$_SalleModelCopyWithImpl<_$_SalleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalleModelToJson(
      this,
    );
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
      final Map<dynamic, dynamic>? pivot,
      final List<CourseModel>? courses}) = _$_SalleModel;

  factory _SalleModel.fromJson(Map<String, dynamic> json) =
      _$_SalleModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get location;
  @override
  String? get color_code;
  @override
  int? get capacity;
  @override
  int? get status;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  String? get status_name;
  @override
  int? get activity_capacity;
  @override
  List<dynamic>? get bookings;
  @override
  List<dynamic>? get activitysalle;
  @override
  Map<dynamic, dynamic>? get pivot;
  @override
  List<CourseModel>? get courses;
  @override
  @JsonKey(ignore: true)
  _$$_SalleModelCopyWith<_$_SalleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
