// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseModel _$CourseModelFromJson(Map<String, dynamic> json) {
  return _CourseModel.fromJson(json);
}

/// @nodoc
mixin _$CourseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get type_id => throw _privateConstructorUsedError;
  int? get level_id => throw _privateConstructorUsedError; // activity
  int? get max_persons => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  DateTime? get date_from => throw _privateConstructorUsedError;
  DateTime? get date_to => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String? get end_time => throw _privateConstructorUsedError;
  String? get color_code => throw _privateConstructorUsedError;
  List<int>? get period => throw _privateConstructorUsedError;
  int? get admin_id => throw _privateConstructorUsedError;
  int? get salle_id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  int? get active_booking_count => throw _privateConstructorUsedError;
  String? get status_name => throw _privateConstructorUsedError;
  BrandModel? get type => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<String>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseModelCopyWith<CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseModelCopyWith<$Res> {
  factory $CourseModelCopyWith(
          CourseModel value, $Res Function(CourseModel) then) =
      _$CourseModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      int? type_id,
      int? level_id,
      int? max_persons,
      double? price,
      DateTime? date_from,
      DateTime? date_to,
      String? start_time,
      String? end_time,
      String? color_code,
      List<int>? period,
      int? admin_id,
      int? salle_id,
      String? description,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      int? active_booking_count,
      String? status_name,
      BrandModel? type,
      List<String>? images,
      List<String>? questions});

  $BrandModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$CourseModelCopyWithImpl<$Res> implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._value, this._then);

  final CourseModel _value;
  // ignore: unused_field
  final $Res Function(CourseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type_id = freezed,
    Object? level_id = freezed,
    Object? max_persons = freezed,
    Object? price = freezed,
    Object? date_from = freezed,
    Object? date_to = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? color_code = freezed,
    Object? period = freezed,
    Object? admin_id = freezed,
    Object? salle_id = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? active_booking_count = freezed,
    Object? status_name = freezed,
    Object? type = freezed,
    Object? images = freezed,
    Object? questions = freezed,
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
      type_id: type_id == freezed
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      level_id: level_id == freezed
          ? _value.level_id
          : level_id // ignore: cast_nullable_to_non_nullable
              as int?,
      max_persons: max_persons == freezed
          ? _value.max_persons
          : max_persons // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      date_from: date_from == freezed
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date_to: date_to == freezed
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: end_time == freezed
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      color_code: color_code == freezed
          ? _value.color_code
          : color_code // ignore: cast_nullable_to_non_nullable
              as String?,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      admin_id: admin_id == freezed
          ? _value.admin_id
          : admin_id // ignore: cast_nullable_to_non_nullable
              as int?,
      salle_id: salle_id == freezed
          ? _value.salle_id
          : salle_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      active_booking_count: active_booking_count == freezed
          ? _value.active_booking_count
          : active_booking_count // ignore: cast_nullable_to_non_nullable
              as int?,
      status_name: status_name == freezed
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $BrandModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$$_CourseModelCopyWith<$Res>
    implements $CourseModelCopyWith<$Res> {
  factory _$$_CourseModelCopyWith(
          _$_CourseModel value, $Res Function(_$_CourseModel) then) =
      __$$_CourseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      int? type_id,
      int? level_id,
      int? max_persons,
      double? price,
      DateTime? date_from,
      DateTime? date_to,
      String? start_time,
      String? end_time,
      String? color_code,
      List<int>? period,
      int? admin_id,
      int? salle_id,
      String? description,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      int? active_booking_count,
      String? status_name,
      BrandModel? type,
      List<String>? images,
      List<String>? questions});

  @override
  $BrandModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$_CourseModelCopyWithImpl<$Res> extends _$CourseModelCopyWithImpl<$Res>
    implements _$$_CourseModelCopyWith<$Res> {
  __$$_CourseModelCopyWithImpl(
      _$_CourseModel _value, $Res Function(_$_CourseModel) _then)
      : super(_value, (v) => _then(v as _$_CourseModel));

  @override
  _$_CourseModel get _value => super._value as _$_CourseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type_id = freezed,
    Object? level_id = freezed,
    Object? max_persons = freezed,
    Object? price = freezed,
    Object? date_from = freezed,
    Object? date_to = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? color_code = freezed,
    Object? period = freezed,
    Object? admin_id = freezed,
    Object? salle_id = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? active_booking_count = freezed,
    Object? status_name = freezed,
    Object? type = freezed,
    Object? images = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$_CourseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type_id: type_id == freezed
          ? _value.type_id
          : type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      level_id: level_id == freezed
          ? _value.level_id
          : level_id // ignore: cast_nullable_to_non_nullable
              as int?,
      max_persons: max_persons == freezed
          ? _value.max_persons
          : max_persons // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      date_from: date_from == freezed
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date_to: date_to == freezed
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start_time: start_time == freezed
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: end_time == freezed
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      color_code: color_code == freezed
          ? _value.color_code
          : color_code // ignore: cast_nullable_to_non_nullable
              as String?,
      period: period == freezed
          ? _value._period
          : period // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      admin_id: admin_id == freezed
          ? _value.admin_id
          : admin_id // ignore: cast_nullable_to_non_nullable
              as int?,
      salle_id: salle_id == freezed
          ? _value.salle_id
          : salle_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
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
      active_booking_count: active_booking_count == freezed
          ? _value.active_booking_count
          : active_booking_count // ignore: cast_nullable_to_non_nullable
              as int?,
      status_name: status_name == freezed
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      questions: questions == freezed
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseModel implements _CourseModel {
  const _$_CourseModel(
      {this.id,
      this.name,
      this.type_id,
      this.level_id,
      this.max_persons,
      this.price,
      this.date_from,
      this.date_to,
      this.start_time,
      this.end_time,
      this.color_code,
      final List<int>? period,
      this.admin_id,
      this.salle_id,
      this.description,
      this.status,
      this.created_at,
      this.updated_at,
      this.active_booking_count,
      this.status_name,
      this.type,
      final List<String>? images,
      final List<String>? questions})
      : _period = period,
        _images = images,
        _questions = questions;

  factory _$_CourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CourseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? type_id;
  @override
  final int? level_id;
// activity
  @override
  final int? max_persons;
  @override
  final double? price;
  @override
  final DateTime? date_from;
  @override
  final DateTime? date_to;
  @override
  final String? start_time;
  @override
  final String? end_time;
  @override
  final String? color_code;
  final List<int>? _period;
  @override
  List<int>? get period {
    final value = _period;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? admin_id;
  @override
  final int? salle_id;
  @override
  final String? description;
  @override
  final int? status;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final int? active_booking_count;
  @override
  final String? status_name;
  @override
  final BrandModel? type;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _questions;
  @override
  List<String>? get questions {
    final value = _questions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseModel(id: $id, name: $name, type_id: $type_id, level_id: $level_id, max_persons: $max_persons, price: $price, date_from: $date_from, date_to: $date_to, start_time: $start_time, end_time: $end_time, color_code: $color_code, period: $period, admin_id: $admin_id, salle_id: $salle_id, description: $description, status: $status, created_at: $created_at, updated_at: $updated_at, active_booking_count: $active_booking_count, status_name: $status_name, type: $type, images: $images, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CourseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type_id, type_id) &&
            const DeepCollectionEquality().equals(other.level_id, level_id) &&
            const DeepCollectionEquality()
                .equals(other.max_persons, max_persons) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.date_from, date_from) &&
            const DeepCollectionEquality().equals(other.date_to, date_to) &&
            const DeepCollectionEquality()
                .equals(other.start_time, start_time) &&
            const DeepCollectionEquality().equals(other.end_time, end_time) &&
            const DeepCollectionEquality()
                .equals(other.color_code, color_code) &&
            const DeepCollectionEquality().equals(other._period, _period) &&
            const DeepCollectionEquality().equals(other.admin_id, admin_id) &&
            const DeepCollectionEquality().equals(other.salle_id, salle_id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.active_booking_count, active_booking_count) &&
            const DeepCollectionEquality()
                .equals(other.status_name, status_name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(type_id),
        const DeepCollectionEquality().hash(level_id),
        const DeepCollectionEquality().hash(max_persons),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(date_from),
        const DeepCollectionEquality().hash(date_to),
        const DeepCollectionEquality().hash(start_time),
        const DeepCollectionEquality().hash(end_time),
        const DeepCollectionEquality().hash(color_code),
        const DeepCollectionEquality().hash(_period),
        const DeepCollectionEquality().hash(admin_id),
        const DeepCollectionEquality().hash(salle_id),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(created_at),
        const DeepCollectionEquality().hash(updated_at),
        const DeepCollectionEquality().hash(active_booking_count),
        const DeepCollectionEquality().hash(status_name),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_questions)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      __$$_CourseModelCopyWithImpl<_$_CourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseModelToJson(this);
  }
}

abstract class _CourseModel implements CourseModel {
  const factory _CourseModel(
      {final int? id,
      final String? name,
      final int? type_id,
      final int? level_id,
      final int? max_persons,
      final double? price,
      final DateTime? date_from,
      final DateTime? date_to,
      final String? start_time,
      final String? end_time,
      final String? color_code,
      final List<int>? period,
      final int? admin_id,
      final int? salle_id,
      final String? description,
      final int? status,
      final DateTime? created_at,
      final DateTime? updated_at,
      final int? active_booking_count,
      final String? status_name,
      final BrandModel? type,
      final List<String>? images,
      final List<String>? questions}) = _$_CourseModel;

  factory _CourseModel.fromJson(Map<String, dynamic> json) =
      _$_CourseModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get type_id => throw _privateConstructorUsedError;
  @override
  int? get level_id => throw _privateConstructorUsedError;
  @override // activity
  int? get max_persons => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  DateTime? get date_from => throw _privateConstructorUsedError;
  @override
  DateTime? get date_to => throw _privateConstructorUsedError;
  @override
  String? get start_time => throw _privateConstructorUsedError;
  @override
  String? get end_time => throw _privateConstructorUsedError;
  @override
  String? get color_code => throw _privateConstructorUsedError;
  @override
  List<int>? get period => throw _privateConstructorUsedError;
  @override
  int? get admin_id => throw _privateConstructorUsedError;
  @override
  int? get salle_id => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  int? get active_booking_count => throw _privateConstructorUsedError;
  @override
  String? get status_name => throw _privateConstructorUsedError;
  @override
  BrandModel? get type => throw _privateConstructorUsedError;
  @override
  List<String>? get images => throw _privateConstructorUsedError;
  @override
  List<String>? get questions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CourseModelCopyWith<_$_CourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
