// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get client_id => throw _privateConstructorUsedError;
  int? get subscription_type_id => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  DateTime? get start_date => throw _privateConstructorUsedError;
  SubscriptionTypeModel? get subscription_type =>
      throw _privateConstructorUsedError;
  DateTime? get end_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionModelCopyWith<SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionModelCopyWith<$Res> {
  factory $SubscriptionModelCopyWith(
          SubscriptionModel value, $Res Function(SubscriptionModel) then) =
      _$SubscriptionModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? client_id,
      int? subscription_type_id,
      double? price,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      DateTime? start_date,
      SubscriptionTypeModel? subscription_type,
      DateTime? end_date});

  $SubscriptionTypeModelCopyWith<$Res>? get subscription_type;
}

/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._value, this._then);

  final SubscriptionModel _value;
  // ignore: unused_field
  final $Res Function(SubscriptionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? subscription_type_id = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? start_date = freezed,
    Object? subscription_type = freezed,
    Object? end_date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription_type_id: subscription_type_id == freezed
          ? _value.subscription_type_id
          : subscription_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
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
      start_date: start_date == freezed
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subscription_type: subscription_type == freezed
          ? _value.subscription_type
          : subscription_type // ignore: cast_nullable_to_non_nullable
              as SubscriptionTypeModel?,
      end_date: end_date == freezed
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  $SubscriptionTypeModelCopyWith<$Res>? get subscription_type {
    if (_value.subscription_type == null) {
      return null;
    }

    return $SubscriptionTypeModelCopyWith<$Res>(_value.subscription_type!,
        (value) {
      return _then(_value.copyWith(subscription_type: value));
    });
  }
}

/// @nodoc
abstract class _$$_SubscriptionModelCopyWith<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  factory _$$_SubscriptionModelCopyWith(_$_SubscriptionModel value,
          $Res Function(_$_SubscriptionModel) then) =
      __$$_SubscriptionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? client_id,
      int? subscription_type_id,
      double? price,
      int? status,
      DateTime? created_at,
      DateTime? updated_at,
      DateTime? start_date,
      SubscriptionTypeModel? subscription_type,
      DateTime? end_date});

  @override
  $SubscriptionTypeModelCopyWith<$Res>? get subscription_type;
}

/// @nodoc
class __$$_SubscriptionModelCopyWithImpl<$Res>
    extends _$SubscriptionModelCopyWithImpl<$Res>
    implements _$$_SubscriptionModelCopyWith<$Res> {
  __$$_SubscriptionModelCopyWithImpl(
      _$_SubscriptionModel _value, $Res Function(_$_SubscriptionModel) _then)
      : super(_value, (v) => _then(v as _$_SubscriptionModel));

  @override
  _$_SubscriptionModel get _value => super._value as _$_SubscriptionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? subscription_type_id = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? start_date = freezed,
    Object? subscription_type = freezed,
    Object? end_date = freezed,
  }) {
    return _then(_$_SubscriptionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription_type_id: subscription_type_id == freezed
          ? _value.subscription_type_id
          : subscription_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
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
      start_date: start_date == freezed
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subscription_type: subscription_type == freezed
          ? _value.subscription_type
          : subscription_type // ignore: cast_nullable_to_non_nullable
              as SubscriptionTypeModel?,
      end_date: end_date == freezed
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionModel implements _SubscriptionModel {
  const _$_SubscriptionModel(
      {this.id,
      this.client_id,
      this.subscription_type_id,
      this.price,
      this.status,
      this.created_at,
      this.updated_at,
      this.start_date,
      this.subscription_type,
      this.end_date});

  factory _$_SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? client_id;
  @override
  final int? subscription_type_id;
  @override
  final double? price;
  @override
  final int? status;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final DateTime? start_date;
  @override
  final SubscriptionTypeModel? subscription_type;
  @override
  final DateTime? end_date;

  @override
  String toString() {
    return 'SubscriptionModel(id: $id, client_id: $client_id, subscription_type_id: $subscription_type_id, price: $price, status: $status, created_at: $created_at, updated_at: $updated_at, start_date: $start_date, subscription_type: $subscription_type, end_date: $end_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.client_id, client_id) &&
            const DeepCollectionEquality()
                .equals(other.subscription_type_id, subscription_type_id) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.start_date, start_date) &&
            const DeepCollectionEquality()
                .equals(other.subscription_type, subscription_type) &&
            const DeepCollectionEquality().equals(other.end_date, end_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(client_id),
      const DeepCollectionEquality().hash(subscription_type_id),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(start_date),
      const DeepCollectionEquality().hash(subscription_type),
      const DeepCollectionEquality().hash(end_date));

  @JsonKey(ignore: true)
  @override
  _$$_SubscriptionModelCopyWith<_$_SubscriptionModel> get copyWith =>
      __$$_SubscriptionModelCopyWithImpl<_$_SubscriptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionModelToJson(this);
  }
}

abstract class _SubscriptionModel implements SubscriptionModel {
  const factory _SubscriptionModel(
      {final int? id,
      final int? client_id,
      final int? subscription_type_id,
      final double? price,
      final int? status,
      final DateTime? created_at,
      final DateTime? updated_at,
      final DateTime? start_date,
      final SubscriptionTypeModel? subscription_type,
      final DateTime? end_date}) = _$_SubscriptionModel;

  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  int? get client_id => throw _privateConstructorUsedError;
  @override
  int? get subscription_type_id => throw _privateConstructorUsedError;
  @override
  double? get price => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  DateTime? get created_at => throw _privateConstructorUsedError;
  @override
  DateTime? get updated_at => throw _privateConstructorUsedError;
  @override
  DateTime? get start_date => throw _privateConstructorUsedError;
  @override
  SubscriptionTypeModel? get subscription_type =>
      throw _privateConstructorUsedError;
  @override
  DateTime? get end_date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionModelCopyWith<_$_SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
