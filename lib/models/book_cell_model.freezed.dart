// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_cell_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookCellModel _$BookCellModelFromJson(Map<String, dynamic> json) {
  return _BookCellModel.fromJson(json);
}

/// @nodoc
mixin _$BookCellModel {
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get activity_id => throw _privateConstructorUsedError;
  List<GunModel>? get guns => throw _privateConstructorUsedError;
  List<AmmunitionsModel>? get ammunition => throw _privateConstructorUsedError;
  List<EquipmentModel>? get equipements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCellModelCopyWith<BookCellModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCellModelCopyWith<$Res> {
  factory $BookCellModelCopyWith(
          BookCellModel value, $Res Function(BookCellModel) then) =
      _$BookCellModelCopyWithImpl<$Res>;
  $Res call(
      {String? date,
      String? time,
      int? activity_id,
      List<GunModel>? guns,
      List<AmmunitionsModel>? ammunition,
      List<EquipmentModel>? equipements});
}

/// @nodoc
class _$BookCellModelCopyWithImpl<$Res>
    implements $BookCellModelCopyWith<$Res> {
  _$BookCellModelCopyWithImpl(this._value, this._then);

  final BookCellModel _value;
  // ignore: unused_field
  final $Res Function(BookCellModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? activity_id = freezed,
    Object? guns = freezed,
    Object? ammunition = freezed,
    Object? equipements = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      activity_id: activity_id == freezed
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      guns: guns == freezed
          ? _value.guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      ammunition: ammunition == freezed
          ? _value.ammunition
          : ammunition // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      equipements: equipements == freezed
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookCellModelCopyWith<$Res>
    implements $BookCellModelCopyWith<$Res> {
  factory _$$_BookCellModelCopyWith(
          _$_BookCellModel value, $Res Function(_$_BookCellModel) then) =
      __$$_BookCellModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? date,
      String? time,
      int? activity_id,
      List<GunModel>? guns,
      List<AmmunitionsModel>? ammunition,
      List<EquipmentModel>? equipements});
}

/// @nodoc
class __$$_BookCellModelCopyWithImpl<$Res>
    extends _$BookCellModelCopyWithImpl<$Res>
    implements _$$_BookCellModelCopyWith<$Res> {
  __$$_BookCellModelCopyWithImpl(
      _$_BookCellModel _value, $Res Function(_$_BookCellModel) _then)
      : super(_value, (v) => _then(v as _$_BookCellModel));

  @override
  _$_BookCellModel get _value => super._value as _$_BookCellModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? activity_id = freezed,
    Object? guns = freezed,
    Object? ammunition = freezed,
    Object? equipements = freezed,
  }) {
    return _then(_$_BookCellModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      activity_id: activity_id == freezed
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      guns: guns == freezed
          ? _value._guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      ammunition: ammunition == freezed
          ? _value._ammunition
          : ammunition // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      equipements: equipements == freezed
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookCellModel implements _BookCellModel {
  const _$_BookCellModel(
      {this.date,
      this.time,
      this.activity_id,
      final List<GunModel>? guns,
      final List<AmmunitionsModel>? ammunition,
      final List<EquipmentModel>? equipements})
      : _guns = guns,
        _ammunition = ammunition,
        _equipements = equipements;

  factory _$_BookCellModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookCellModelFromJson(json);

  @override
  final String? date;
  @override
  final String? time;
  @override
  final int? activity_id;
  final List<GunModel>? _guns;
  @override
  List<GunModel>? get guns {
    final value = _guns;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmmunitionsModel>? _ammunition;
  @override
  List<AmmunitionsModel>? get ammunition {
    final value = _ammunition;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentModel>? _equipements;
  @override
  List<EquipmentModel>? get equipements {
    final value = _equipements;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookCellModel(date: $date, time: $time, activity_id: $activity_id, guns: $guns, ammunition: $ammunition, equipements: $equipements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookCellModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.activity_id, activity_id) &&
            const DeepCollectionEquality().equals(other._guns, _guns) &&
            const DeepCollectionEquality()
                .equals(other._ammunition, _ammunition) &&
            const DeepCollectionEquality()
                .equals(other._equipements, _equipements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(activity_id),
      const DeepCollectionEquality().hash(_guns),
      const DeepCollectionEquality().hash(_ammunition),
      const DeepCollectionEquality().hash(_equipements));

  @JsonKey(ignore: true)
  @override
  _$$_BookCellModelCopyWith<_$_BookCellModel> get copyWith =>
      __$$_BookCellModelCopyWithImpl<_$_BookCellModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookCellModelToJson(
      this,
    );
  }
}

abstract class _BookCellModel implements BookCellModel {
  const factory _BookCellModel(
      {final String? date,
      final String? time,
      final int? activity_id,
      final List<GunModel>? guns,
      final List<AmmunitionsModel>? ammunition,
      final List<EquipmentModel>? equipements}) = _$_BookCellModel;

  factory _BookCellModel.fromJson(Map<String, dynamic> json) =
      _$_BookCellModel.fromJson;

  @override
  String? get date;
  @override
  String? get time;
  @override
  int? get activity_id;
  @override
  List<GunModel>? get guns;
  @override
  List<AmmunitionsModel>? get ammunition;
  @override
  List<EquipmentModel>? get equipements;
  @override
  @JsonKey(ignore: true)
  _$$_BookCellModelCopyWith<_$_BookCellModel> get copyWith =>
      throw _privateConstructorUsedError;
}
