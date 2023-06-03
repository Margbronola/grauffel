// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pivot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PivotModel _$PivotModelFromJson(Map<String, dynamic> json) {
  return _PivotModel.fromJson(json);
}

/// @nodoc
mixin _$PivotModel {
  int? get booking_id => throw _privateConstructorUsedError;
  int? get equipement_id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get capacity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PivotModelCopyWith<PivotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PivotModelCopyWith<$Res> {
  factory $PivotModelCopyWith(
          PivotModel value, $Res Function(PivotModel) then) =
      _$PivotModelCopyWithImpl<$Res, PivotModel>;
  @useResult
  $Res call(
      {int? booking_id,
      int? equipement_id,
      int? quantity,
      int? capacity,
      double? price,
      double? total});
}

/// @nodoc
class _$PivotModelCopyWithImpl<$Res, $Val extends PivotModel>
    implements $PivotModelCopyWith<$Res> {
  _$PivotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking_id = freezed,
    Object? equipement_id = freezed,
    Object? quantity = freezed,
    Object? capacity = freezed,
    Object? price = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      booking_id: freezed == booking_id
          ? _value.booking_id
          : booking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      equipement_id: freezed == equipement_id
          ? _value.equipement_id
          : equipement_id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PivotModelCopyWith<$Res>
    implements $PivotModelCopyWith<$Res> {
  factory _$$_PivotModelCopyWith(
          _$_PivotModel value, $Res Function(_$_PivotModel) then) =
      __$$_PivotModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? booking_id,
      int? equipement_id,
      int? quantity,
      int? capacity,
      double? price,
      double? total});
}

/// @nodoc
class __$$_PivotModelCopyWithImpl<$Res>
    extends _$PivotModelCopyWithImpl<$Res, _$_PivotModel>
    implements _$$_PivotModelCopyWith<$Res> {
  __$$_PivotModelCopyWithImpl(
      _$_PivotModel _value, $Res Function(_$_PivotModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking_id = freezed,
    Object? equipement_id = freezed,
    Object? quantity = freezed,
    Object? capacity = freezed,
    Object? price = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_PivotModel(
      booking_id: freezed == booking_id
          ? _value.booking_id
          : booking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      equipement_id: freezed == equipement_id
          ? _value.equipement_id
          : equipement_id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PivotModel implements _PivotModel {
  const _$_PivotModel(
      {this.booking_id,
      this.equipement_id,
      this.quantity,
      this.capacity,
      this.price,
      this.total});

  factory _$_PivotModel.fromJson(Map<String, dynamic> json) =>
      _$$_PivotModelFromJson(json);

  @override
  final int? booking_id;
  @override
  final int? equipement_id;
  @override
  final int? quantity;
  @override
  final int? capacity;
  @override
  final double? price;
  @override
  final double? total;

  @override
  String toString() {
    return 'PivotModel(booking_id: $booking_id, equipement_id: $equipement_id, quantity: $quantity, capacity: $capacity, price: $price, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PivotModel &&
            (identical(other.booking_id, booking_id) ||
                other.booking_id == booking_id) &&
            (identical(other.equipement_id, equipement_id) ||
                other.equipement_id == equipement_id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, booking_id, equipement_id, quantity, capacity, price, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PivotModelCopyWith<_$_PivotModel> get copyWith =>
      __$$_PivotModelCopyWithImpl<_$_PivotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PivotModelToJson(
      this,
    );
  }
}

abstract class _PivotModel implements PivotModel {
  const factory _PivotModel(
      {final int? booking_id,
      final int? equipement_id,
      final int? quantity,
      final int? capacity,
      final double? price,
      final double? total}) = _$_PivotModel;

  factory _PivotModel.fromJson(Map<String, dynamic> json) =
      _$_PivotModel.fromJson;

  @override
  int? get booking_id;
  @override
  int? get equipement_id;
  @override
  int? get quantity;
  @override
  int? get capacity;
  @override
  double? get price;
  @override
  double? get total;
  @override
  @JsonKey(ignore: true)
  _$$_PivotModelCopyWith<_$_PivotModel> get copyWith =>
      throw _privateConstructorUsedError;
}
