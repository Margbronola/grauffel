// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookCourseModel _$BookCourseModelFromJson(Map<String, dynamic> json) {
  return _BookCourseModel.fromJson(json);
}

/// @nodoc
mixin _$BookCourseModel {
  int? get course_id => throw _privateConstructorUsedError;
  List<GunModel>? get guns => throw _privateConstructorUsedError;
  List<AmmunitionsModel>? get ammunitions => throw _privateConstructorUsedError;
  List<EquipmentModel>? get equipments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCourseModelCopyWith<BookCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCourseModelCopyWith<$Res> {
  factory $BookCourseModelCopyWith(
          BookCourseModel value, $Res Function(BookCourseModel) then) =
      _$BookCourseModelCopyWithImpl<$Res, BookCourseModel>;
  @useResult
  $Res call(
      {int? course_id,
      List<GunModel>? guns,
      List<AmmunitionsModel>? ammunitions,
      List<EquipmentModel>? equipments});
}

/// @nodoc
class _$BookCourseModelCopyWithImpl<$Res, $Val extends BookCourseModel>
    implements $BookCourseModelCopyWith<$Res> {
  _$BookCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course_id = freezed,
    Object? guns = freezed,
    Object? ammunitions = freezed,
    Object? equipments = freezed,
  }) {
    return _then(_value.copyWith(
      course_id: freezed == course_id
          ? _value.course_id
          : course_id // ignore: cast_nullable_to_non_nullable
              as int?,
      guns: freezed == guns
          ? _value.guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      ammunitions: freezed == ammunitions
          ? _value.ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      equipments: freezed == equipments
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookCourseModelCopyWith<$Res>
    implements $BookCourseModelCopyWith<$Res> {
  factory _$$_BookCourseModelCopyWith(
          _$_BookCourseModel value, $Res Function(_$_BookCourseModel) then) =
      __$$_BookCourseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? course_id,
      List<GunModel>? guns,
      List<AmmunitionsModel>? ammunitions,
      List<EquipmentModel>? equipments});
}

/// @nodoc
class __$$_BookCourseModelCopyWithImpl<$Res>
    extends _$BookCourseModelCopyWithImpl<$Res, _$_BookCourseModel>
    implements _$$_BookCourseModelCopyWith<$Res> {
  __$$_BookCourseModelCopyWithImpl(
      _$_BookCourseModel _value, $Res Function(_$_BookCourseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course_id = freezed,
    Object? guns = freezed,
    Object? ammunitions = freezed,
    Object? equipments = freezed,
  }) {
    return _then(_$_BookCourseModel(
      course_id: freezed == course_id
          ? _value.course_id
          : course_id // ignore: cast_nullable_to_non_nullable
              as int?,
      guns: freezed == guns
          ? _value._guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      ammunitions: freezed == ammunitions
          ? _value._ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      equipments: freezed == equipments
          ? _value._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookCourseModel implements _BookCourseModel {
  const _$_BookCourseModel(
      {this.course_id,
      final List<GunModel>? guns,
      final List<AmmunitionsModel>? ammunitions,
      final List<EquipmentModel>? equipments})
      : _guns = guns,
        _ammunitions = ammunitions,
        _equipments = equipments;

  factory _$_BookCourseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookCourseModelFromJson(json);

  @override
  final int? course_id;
  final List<GunModel>? _guns;
  @override
  List<GunModel>? get guns {
    final value = _guns;
    if (value == null) return null;
    if (_guns is EqualUnmodifiableListView) return _guns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmmunitionsModel>? _ammunitions;
  @override
  List<AmmunitionsModel>? get ammunitions {
    final value = _ammunitions;
    if (value == null) return null;
    if (_ammunitions is EqualUnmodifiableListView) return _ammunitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentModel>? _equipments;
  @override
  List<EquipmentModel>? get equipments {
    final value = _equipments;
    if (value == null) return null;
    if (_equipments is EqualUnmodifiableListView) return _equipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookCourseModel(course_id: $course_id, guns: $guns, ammunitions: $ammunitions, equipments: $equipments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookCourseModel &&
            (identical(other.course_id, course_id) ||
                other.course_id == course_id) &&
            const DeepCollectionEquality().equals(other._guns, _guns) &&
            const DeepCollectionEquality()
                .equals(other._ammunitions, _ammunitions) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      course_id,
      const DeepCollectionEquality().hash(_guns),
      const DeepCollectionEquality().hash(_ammunitions),
      const DeepCollectionEquality().hash(_equipments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookCourseModelCopyWith<_$_BookCourseModel> get copyWith =>
      __$$_BookCourseModelCopyWithImpl<_$_BookCourseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookCourseModelToJson(
      this,
    );
  }
}

abstract class _BookCourseModel implements BookCourseModel {
  const factory _BookCourseModel(
      {final int? course_id,
      final List<GunModel>? guns,
      final List<AmmunitionsModel>? ammunitions,
      final List<EquipmentModel>? equipments}) = _$_BookCourseModel;

  factory _BookCourseModel.fromJson(Map<String, dynamic> json) =
      _$_BookCourseModel.fromJson;

  @override
  int? get course_id;
  @override
  List<GunModel>? get guns;
  @override
  List<AmmunitionsModel>? get ammunitions;
  @override
  List<EquipmentModel>? get equipments;
  @override
  @JsonKey(ignore: true)
  _$$_BookCourseModelCopyWith<_$_BookCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
