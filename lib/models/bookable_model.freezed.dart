// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookable_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookableModel _$BookableModelFromJson(Map<String, dynamic> json) {
  return _BookableModel.fromJson(json);
}

/// @nodoc
mixin _$BookableModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get free_duration => throw _privateConstructorUsedError;
  int? get course_duration => throw _privateConstructorUsedError;
  int? get competition_duration => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  List<ActivitySalleModel>? get activitysalle =>
      throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  List<SalleModel>? get salles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookableModelCopyWith<BookableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookableModelCopyWith<$Res> {
  factory $BookableModelCopyWith(
          BookableModel value, $Res Function(BookableModel) then) =
      _$BookableModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      int? capacity,
      double? price,
      int? free_duration,
      int? course_duration,
      int? competition_duration,
      int? status,
      List<ActivitySalleModel>? activitysalle,
      DateTime? created_at,
      DateTime? updated_at,
      List<SalleModel>? salles});
}

/// @nodoc
class _$BookableModelCopyWithImpl<$Res>
    implements $BookableModelCopyWith<$Res> {
  _$BookableModelCopyWithImpl(this._value, this._then);

  final BookableModel _value;
  // ignore: unused_field
  final $Res Function(BookableModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? capacity = freezed,
    Object? price = freezed,
    Object? free_duration = freezed,
    Object? course_duration = freezed,
    Object? competition_duration = freezed,
    Object? status = freezed,
    Object? activitysalle = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      activitysalle: activitysalle == freezed
          ? _value.activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<ActivitySalleModel>?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salles: salles == freezed
          ? _value.salles
          : salles // ignore: cast_nullable_to_non_nullable
              as List<SalleModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookableModelCopyWith<$Res>
    implements $BookableModelCopyWith<$Res> {
  factory _$$_BookableModelCopyWith(
          _$_BookableModel value, $Res Function(_$_BookableModel) then) =
      __$$_BookableModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? image,
      int? capacity,
      double? price,
      int? free_duration,
      int? course_duration,
      int? competition_duration,
      int? status,
      List<ActivitySalleModel>? activitysalle,
      DateTime? created_at,
      DateTime? updated_at,
      List<SalleModel>? salles});
}

/// @nodoc
class __$$_BookableModelCopyWithImpl<$Res>
    extends _$BookableModelCopyWithImpl<$Res>
    implements _$$_BookableModelCopyWith<$Res> {
  __$$_BookableModelCopyWithImpl(
      _$_BookableModel _value, $Res Function(_$_BookableModel) _then)
      : super(_value, (v) => _then(v as _$_BookableModel));

  @override
  _$_BookableModel get _value => super._value as _$_BookableModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? capacity = freezed,
    Object? price = freezed,
    Object? free_duration = freezed,
    Object? course_duration = freezed,
    Object? competition_duration = freezed,
    Object? status = freezed,
    Object? activitysalle = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? salles = freezed,
  }) {
    return _then(_$_BookableModel(
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
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      activitysalle: activitysalle == freezed
          ? _value._activitysalle
          : activitysalle // ignore: cast_nullable_to_non_nullable
              as List<ActivitySalleModel>?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      salles: salles == freezed
          ? _value._salles
          : salles // ignore: cast_nullable_to_non_nullable
              as List<SalleModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookableModel implements _BookableModel {
  const _$_BookableModel(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.capacity,
      this.price,
      this.free_duration,
      this.course_duration,
      this.competition_duration,
      this.status,
      final List<ActivitySalleModel>? activitysalle,
      this.created_at,
      this.updated_at,
      final List<SalleModel>? salles})
      : _activitysalle = activitysalle,
        _salles = salles;

  factory _$_BookableModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookableModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
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
  final List<ActivitySalleModel>? _activitysalle;
  @override
  List<ActivitySalleModel>? get activitysalle {
    final value = _activitysalle;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
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
    return 'BookableModel(id: $id, name: $name, description: $description, image: $image, capacity: $capacity, price: $price, free_duration: $free_duration, course_duration: $course_duration, competition_duration: $competition_duration, status: $status, activitysalle: $activitysalle, created_at: $created_at, updated_at: $updated_at, salles: $salles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookableModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.free_duration, free_duration) &&
            const DeepCollectionEquality()
                .equals(other.course_duration, course_duration) &&
            const DeepCollectionEquality()
                .equals(other.competition_duration, competition_duration) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other._activitysalle, _activitysalle) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other._salles, _salles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(free_duration),
      const DeepCollectionEquality().hash(course_duration),
      const DeepCollectionEquality().hash(competition_duration),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_activitysalle),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(_salles));

  @JsonKey(ignore: true)
  @override
  _$$_BookableModelCopyWith<_$_BookableModel> get copyWith =>
      __$$_BookableModelCopyWithImpl<_$_BookableModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookableModelToJson(
      this,
    );
  }
}

abstract class _BookableModel implements BookableModel {
  const factory _BookableModel(
      {final int? id,
      final String? name,
      final String? description,
      final String? image,
      final int? capacity,
      final double? price,
      final int? free_duration,
      final int? course_duration,
      final int? competition_duration,
      final int? status,
      final List<ActivitySalleModel>? activitysalle,
      final DateTime? created_at,
      final DateTime? updated_at,
      final List<SalleModel>? salles}) = _$_BookableModel;

  factory _BookableModel.fromJson(Map<String, dynamic> json) =
      _$_BookableModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
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
  List<ActivitySalleModel>? get activitysalle;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  List<SalleModel>? get salles;
  @override
  @JsonKey(ignore: true)
  _$$_BookableModelCopyWith<_$_BookableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
