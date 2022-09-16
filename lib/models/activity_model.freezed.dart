// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get free_duration => throw _privateConstructorUsedError;
  int? get course_duration => throw _privateConstructorUsedError;
  int? get competition_duration => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  bool? get has_relation => throw _privateConstructorUsedError;
  bool? get has_salle => throw _privateConstructorUsedError;
  bool? get is_active => throw _privateConstructorUsedError;
  String? get date_from => throw _privateConstructorUsedError;
  String? get date_to => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String? get end_time => throw _privateConstructorUsedError;
  List<ActivitySalleModel>? get activitysalle =>
      throw _privateConstructorUsedError;
  List<SalleModel>? get salles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? capacity,
      double? price,
      int? free_duration,
      int? course_duration,
      int? competition_duration,
      int? status,
      String? image,
      DateTime? created_at,
      DateTime? updated_at,
      bool? has_relation,
      bool? has_salle,
      bool? is_active,
      String? date_from,
      String? date_to,
      String? start_time,
      String? end_time,
      List<ActivitySalleModel>? activitysalle,
      List<SalleModel>? salles});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  final ActivityModel _value;
  // ignore: unused_field
  final $Res Function(ActivityModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? capacity = freezed,
    Object? price = freezed,
    Object? free_duration = freezed,
    Object? course_duration = freezed,
    Object? competition_duration = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? has_relation = freezed,
    Object? has_salle = freezed,
    Object? is_active = freezed,
    Object? date_from = freezed,
    Object? date_to = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? activitysalle = freezed,
    Object? salles = freezed,
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
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      free_duration: free_duration == freezed
          ? _value.free_duration
          : free_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      course_duration: course_duration == freezed
          ? _value.course_duration
          : course_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      competition_duration: competition_duration == freezed
          ? _value.competition_duration
          : competition_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      has_relation: has_relation == freezed
          ? _value.has_relation
          : has_relation // ignore: cast_nullable_to_non_nullable
              as bool?,
      has_salle: has_salle == freezed
          ? _value.has_salle
          : has_salle // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_active: is_active == freezed
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_from: date_from == freezed
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as String?,
      date_to: date_to == freezed
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: end_time == freezed
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      activitysalle: activitysalle == freezed
          ? _value.activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<ActivitySalleModel>?,
      salles: salles == freezed
          ? _value.salles
          : salles // ignore: cast_nullable_to_non_nullable
              as List<SalleModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ActivityModelCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$$_ActivityModelCopyWith(
          _$_ActivityModel value, $Res Function(_$_ActivityModel) then) =
      __$$_ActivityModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? capacity,
      double? price,
      int? free_duration,
      int? course_duration,
      int? competition_duration,
      int? status,
      String? image,
      DateTime? created_at,
      DateTime? updated_at,
      bool? has_relation,
      bool? has_salle,
      bool? is_active,
      String? date_from,
      String? date_to,
      String? start_time,
      String? end_time,
      List<ActivitySalleModel>? activitysalle,
      List<SalleModel>? salles});
}

/// @nodoc
class __$$_ActivityModelCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res>
    implements _$$_ActivityModelCopyWith<$Res> {
  __$$_ActivityModelCopyWithImpl(
      _$_ActivityModel _value, $Res Function(_$_ActivityModel) _then)
      : super(_value, (v) => _then(v as _$_ActivityModel));

  @override
  _$_ActivityModel get _value => super._value as _$_ActivityModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? capacity = freezed,
    Object? price = freezed,
    Object? free_duration = freezed,
    Object? course_duration = freezed,
    Object? competition_duration = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? has_relation = freezed,
    Object? has_salle = freezed,
    Object? is_active = freezed,
    Object? date_from = freezed,
    Object? date_to = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? activitysalle = freezed,
    Object? salles = freezed,
  }) {
    return _then(_$_ActivityModel(
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
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      free_duration: free_duration == freezed
          ? _value.free_duration
          : free_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      course_duration: course_duration == freezed
          ? _value.course_duration
          : course_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      competition_duration: competition_duration == freezed
          ? _value.competition_duration
          : competition_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      has_relation: has_relation == freezed
          ? _value.has_relation
          : has_relation // ignore: cast_nullable_to_non_nullable
              as bool?,
      has_salle: has_salle == freezed
          ? _value.has_salle
          : has_salle // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_active: is_active == freezed
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_from: date_from == freezed
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as String?,
      date_to: date_to == freezed
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: end_time == freezed
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      activitysalle: activitysalle == freezed
          ? _value._activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<ActivitySalleModel>?,
      salles: salles == freezed
          ? _value._salles
          : salles // ignore: cast_nullable_to_non_nullable
              as List<SalleModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityModel implements _ActivityModel {
  const _$_ActivityModel(
      {this.id,
      this.name,
      this.description,
      this.capacity,
      this.price,
      this.free_duration,
      this.course_duration,
      this.competition_duration,
      this.status,
      this.image,
      this.created_at,
      this.updated_at,
      this.has_relation,
      this.has_salle,
      this.is_active,
      this.date_from,
      this.date_to,
      this.start_time,
      this.end_time,
      final List<ActivitySalleModel>? activitysalle,
      final List<SalleModel>? salles})
      : _activitysalle = activitysalle,
        _salles = salles;

  factory _$_ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? capacity;
  @override
  final double? price;
  @override
  final int? free_duration;
  @override
  final int? course_duration;
  @override
  final int? competition_duration;
  @override
  final int? status;
  @override
  final String? image;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final bool? has_relation;
  @override
  final bool? has_salle;
  @override
  final bool? is_active;
  @override
  final String? date_from;
  @override
  final String? date_to;
  @override
  final String? start_time;
  @override
  final String? end_time;
  final List<ActivitySalleModel>? _activitysalle;
  @override
  List<ActivitySalleModel>? get activitysalle {
    final value = _activitysalle;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalleModel>? _salles;
  @override
  List<SalleModel>? get salles {
    final value = _salles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActivityModel(id: $id, name: $name, description: $description, capacity: $capacity, price: $price, free_duration: $free_duration, course_duration: $course_duration, competition_duration: $competition_duration, status: $status, image: $image, created_at: $created_at, updated_at: $updated_at, has_relation: $has_relation, has_salle: $has_salle, is_active: $is_active, date_from: $date_from, date_to: $date_to, start_time: $start_time, end_time: $end_time, activitysalle: $activitysalle, salles: $salles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.free_duration, free_duration) &&
            const DeepCollectionEquality()
                .equals(other.course_duration, course_duration) &&
            const DeepCollectionEquality()
                .equals(other.competition_duration, competition_duration) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.has_relation, has_relation) &&
            const DeepCollectionEquality().equals(other.has_salle, has_salle) &&
            const DeepCollectionEquality().equals(other.is_active, is_active) &&
            const DeepCollectionEquality().equals(other.date_from, date_from) &&
            const DeepCollectionEquality().equals(other.date_to, date_to) &&
            const DeepCollectionEquality()
                .equals(other.start_time, start_time) &&
            const DeepCollectionEquality().equals(other.end_time, end_time) &&
            const DeepCollectionEquality()
                .equals(other._activitysalle, _activitysalle) &&
            const DeepCollectionEquality().equals(other._salles, _salles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(capacity),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(free_duration),
        const DeepCollectionEquality().hash(course_duration),
        const DeepCollectionEquality().hash(competition_duration),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(image),
        const DeepCollectionEquality().hash(created_at),
        const DeepCollectionEquality().hash(updated_at),
        const DeepCollectionEquality().hash(has_relation),
        const DeepCollectionEquality().hash(has_salle),
        const DeepCollectionEquality().hash(is_active),
        const DeepCollectionEquality().hash(date_from),
        const DeepCollectionEquality().hash(date_to),
        const DeepCollectionEquality().hash(start_time),
        const DeepCollectionEquality().hash(end_time),
        const DeepCollectionEquality().hash(_activitysalle),
        const DeepCollectionEquality().hash(_salles)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ActivityModelCopyWith<_$_ActivityModel> get copyWith =>
      __$$_ActivityModelCopyWithImpl<_$_ActivityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityModelToJson(
      this,
    );
  }
}

abstract class _ActivityModel implements ActivityModel {
  const factory _ActivityModel(
      {final int? id,
      final String? name,
      final String? description,
      final int? capacity,
      final double? price,
      final int? free_duration,
      final int? course_duration,
      final int? competition_duration,
      final int? status,
      final String? image,
      final DateTime? created_at,
      final DateTime? updated_at,
      final bool? has_relation,
      final bool? has_salle,
      final bool? is_active,
      final String? date_from,
      final String? date_to,
      final String? start_time,
      final String? end_time,
      final List<ActivitySalleModel>? activitysalle,
      final List<SalleModel>? salles}) = _$_ActivityModel;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$_ActivityModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get capacity;
  @override
  double? get price;
  @override
  int? get free_duration;
  @override
  int? get course_duration;
  @override
  int? get competition_duration;
  @override
  int? get status;
  @override
  String? get image;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  bool? get has_relation;
  @override
  bool? get has_salle;
  @override
  bool? get is_active;
  @override
  String? get date_from;
  @override
  String? get date_to;
  @override
  String? get start_time;
  @override
  String? get end_time;
  @override
  List<ActivitySalleModel>? get activitysalle;
  @override
  List<SalleModel>? get salles;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityModelCopyWith<_$_ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
