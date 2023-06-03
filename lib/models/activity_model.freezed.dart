// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  TypeModel? get type => throw _privateConstructorUsedError;
  AdminModel? get admin => throw _privateConstructorUsedError;
  int? get max_persons => throw _privateConstructorUsedError;
  int? get active_booking_count => throw _privateConstructorUsedError;
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
      _$ActivityModelCopyWithImpl<$Res, ActivityModel>;
  @useResult
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
      TypeModel? type,
      AdminModel? admin,
      int? max_persons,
      int? active_booking_count,
      List<ActivitySalleModel>? activitysalle,
      List<SalleModel>? salles});

  $TypeModelCopyWith<$Res>? get type;
  $AdminModelCopyWith<$Res>? get admin;
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res, $Val extends ActivityModel>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? admin = freezed,
    Object? max_persons = freezed,
    Object? active_booking_count = freezed,
    Object? activitysalle = freezed,
    Object? salles = freezed,
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
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      free_duration: freezed == free_duration
          ? _value.free_duration
          : free_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      course_duration: freezed == course_duration
          ? _value.course_duration
          : course_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      competition_duration: freezed == competition_duration
          ? _value.competition_duration
          : competition_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      has_relation: freezed == has_relation
          ? _value.has_relation
          : has_relation // ignore: cast_nullable_to_non_nullable
              as bool?,
      has_salle: freezed == has_salle
          ? _value.has_salle
          : has_salle // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_from: freezed == date_from
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as String?,
      date_to: freezed == date_to
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as AdminModel?,
      max_persons: freezed == max_persons
          ? _value.max_persons
          : max_persons // ignore: cast_nullable_to_non_nullable
              as int?,
      active_booking_count: freezed == active_booking_count
          ? _value.active_booking_count
          : active_booking_count // ignore: cast_nullable_to_non_nullable
              as int?,
      activitysalle: freezed == activitysalle
          ? _value.activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<ActivitySalleModel>?,
      salles: freezed == salles
          ? _value.salles
          : salles // ignore: cast_nullable_to_non_nullable
              as List<SalleModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminModelCopyWith<$Res>? get admin {
    if (_value.admin == null) {
      return null;
    }

    return $AdminModelCopyWith<$Res>(_value.admin!, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActivityModelCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$$_ActivityModelCopyWith(
          _$_ActivityModel value, $Res Function(_$_ActivityModel) then) =
      __$$_ActivityModelCopyWithImpl<$Res>;
  @override
  @useResult
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
      TypeModel? type,
      AdminModel? admin,
      int? max_persons,
      int? active_booking_count,
      List<ActivitySalleModel>? activitysalle,
      List<SalleModel>? salles});

  @override
  $TypeModelCopyWith<$Res>? get type;
  @override
  $AdminModelCopyWith<$Res>? get admin;
}

/// @nodoc
class __$$_ActivityModelCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res, _$_ActivityModel>
    implements _$$_ActivityModelCopyWith<$Res> {
  __$$_ActivityModelCopyWithImpl(
      _$_ActivityModel _value, $Res Function(_$_ActivityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    Object? type = freezed,
    Object? admin = freezed,
    Object? max_persons = freezed,
    Object? active_booking_count = freezed,
    Object? activitysalle = freezed,
    Object? salles = freezed,
  }) {
    return _then(_$_ActivityModel(
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
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      free_duration: freezed == free_duration
          ? _value.free_duration
          : free_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      course_duration: freezed == course_duration
          ? _value.course_duration
          : course_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      competition_duration: freezed == competition_duration
          ? _value.competition_duration
          : competition_duration // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      has_relation: freezed == has_relation
          ? _value.has_relation
          : has_relation // ignore: cast_nullable_to_non_nullable
              as bool?,
      has_salle: freezed == has_salle
          ? _value.has_salle
          : has_salle // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as bool?,
      date_from: freezed == date_from
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as String?,
      date_to: freezed == date_to
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as AdminModel?,
      max_persons: freezed == max_persons
          ? _value.max_persons
          : max_persons // ignore: cast_nullable_to_non_nullable
              as int?,
      active_booking_count: freezed == active_booking_count
          ? _value.active_booking_count
          : active_booking_count // ignore: cast_nullable_to_non_nullable
              as int?,
      activitysalle: freezed == activitysalle
          ? _value._activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<ActivitySalleModel>?,
      salles: freezed == salles
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
      this.type,
      this.admin,
      this.max_persons,
      this.active_booking_count,
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
  @override
  final TypeModel? type;
  @override
  final AdminModel? admin;
  @override
  final int? max_persons;
  @override
  final int? active_booking_count;
  final List<ActivitySalleModel>? _activitysalle;
  @override
  List<ActivitySalleModel>? get activitysalle {
    final value = _activitysalle;
    if (value == null) return null;
    if (_activitysalle is EqualUnmodifiableListView) return _activitysalle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SalleModel>? _salles;
  @override
  List<SalleModel>? get salles {
    final value = _salles;
    if (value == null) return null;
    if (_salles is EqualUnmodifiableListView) return _salles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActivityModel(id: $id, name: $name, description: $description, capacity: $capacity, price: $price, free_duration: $free_duration, course_duration: $course_duration, competition_duration: $competition_duration, status: $status, image: $image, created_at: $created_at, updated_at: $updated_at, has_relation: $has_relation, has_salle: $has_salle, is_active: $is_active, date_from: $date_from, date_to: $date_to, start_time: $start_time, end_time: $end_time, type: $type, admin: $admin, max_persons: $max_persons, active_booking_count: $active_booking_count, activitysalle: $activitysalle, salles: $salles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.free_duration, free_duration) ||
                other.free_duration == free_duration) &&
            (identical(other.course_duration, course_duration) ||
                other.course_duration == course_duration) &&
            (identical(other.competition_duration, competition_duration) ||
                other.competition_duration == competition_duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.has_relation, has_relation) ||
                other.has_relation == has_relation) &&
            (identical(other.has_salle, has_salle) ||
                other.has_salle == has_salle) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.date_from, date_from) ||
                other.date_from == date_from) &&
            (identical(other.date_to, date_to) || other.date_to == date_to) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.max_persons, max_persons) ||
                other.max_persons == max_persons) &&
            (identical(other.active_booking_count, active_booking_count) ||
                other.active_booking_count == active_booking_count) &&
            const DeepCollectionEquality()
                .equals(other._activitysalle, _activitysalle) &&
            const DeepCollectionEquality().equals(other._salles, _salles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        capacity,
        price,
        free_duration,
        course_duration,
        competition_duration,
        status,
        image,
        created_at,
        updated_at,
        has_relation,
        has_salle,
        is_active,
        date_from,
        date_to,
        start_time,
        end_time,
        type,
        admin,
        max_persons,
        active_booking_count,
        const DeepCollectionEquality().hash(_activitysalle),
        const DeepCollectionEquality().hash(_salles)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final TypeModel? type,
      final AdminModel? admin,
      final int? max_persons,
      final int? active_booking_count,
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
  TypeModel? get type;
  @override
  AdminModel? get admin;
  @override
  int? get max_persons;
  @override
  int? get active_booking_count;
  @override
  List<ActivitySalleModel>? get activitysalle;
  @override
  List<SalleModel>? get salles;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityModelCopyWith<_$_ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
