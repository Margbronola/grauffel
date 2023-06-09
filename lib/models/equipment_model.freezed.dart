// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) {
  return _EquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get stocks => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError; // int? unlimited,
  PivotModel? get pivot => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError; // String? type_name,
// ImageModel? image,
  String? get image_url => throw _privateConstructorUsedError;
  String? get image_thumb_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res, EquipmentModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      double? price,
      String? description,
      int? stocks,
      int? type,
      PivotModel? pivot,
      DateTime? created_at,
      DateTime? updated_at,
      BrandModel? brand,
      int quantity,
      int? qty,
      String? image_url,
      String? image_thumb_url});

  $PivotModelCopyWith<$Res>? get pivot;
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res, $Val extends EquipmentModel>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? stocks = freezed,
    Object? type = freezed,
    Object? pivot = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? brand = freezed,
    Object? quantity = null,
    Object? qty = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      image_thumb_url: freezed == image_thumb_url
          ? _value.image_thumb_url
          : image_thumb_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PivotModelCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $PivotModelCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EquipmentModelCopyWith<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  factory _$$_EquipmentModelCopyWith(
          _$_EquipmentModel value, $Res Function(_$_EquipmentModel) then) =
      __$$_EquipmentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      double? price,
      String? description,
      int? stocks,
      int? type,
      PivotModel? pivot,
      DateTime? created_at,
      DateTime? updated_at,
      BrandModel? brand,
      int quantity,
      int? qty,
      String? image_url,
      String? image_thumb_url});

  @override
  $PivotModelCopyWith<$Res>? get pivot;
  @override
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$_EquipmentModelCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res, _$_EquipmentModel>
    implements _$$_EquipmentModelCopyWith<$Res> {
  __$$_EquipmentModelCopyWithImpl(
      _$_EquipmentModel _value, $Res Function(_$_EquipmentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? stocks = freezed,
    Object? type = freezed,
    Object? pivot = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? brand = freezed,
    Object? quantity = null,
    Object? qty = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
  }) {
    return _then(_$_EquipmentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stocks: freezed == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      image_thumb_url: freezed == image_thumb_url
          ? _value.image_thumb_url
          : image_thumb_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EquipmentModel implements _EquipmentModel {
  const _$_EquipmentModel(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.stocks,
      this.type,
      this.pivot,
      this.created_at,
      this.updated_at,
      this.brand,
      this.quantity = 1,
      this.qty = 1,
      this.image_url,
      this.image_thumb_url});

  factory _$_EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final int? stocks;
  @override
  final int? type;
// int? unlimited,
  @override
  final PivotModel? pivot;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final BrandModel? brand;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final int? qty;
// String? type_name,
// ImageModel? image,
  @override
  final String? image_url;
  @override
  final String? image_thumb_url;

  @override
  String toString() {
    return 'EquipmentModel(id: $id, name: $name, price: $price, description: $description, stocks: $stocks, type: $type, pivot: $pivot, created_at: $created_at, updated_at: $updated_at, brand: $brand, quantity: $quantity, qty: $qty, image_url: $image_url, image_thumb_url: $image_thumb_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stocks, stocks) || other.stocks == stocks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pivot, pivot) || other.pivot == pivot) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.image_thumb_url, image_thumb_url) ||
                other.image_thumb_url == image_thumb_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      description,
      stocks,
      type,
      pivot,
      created_at,
      updated_at,
      brand,
      quantity,
      qty,
      image_url,
      image_thumb_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      __$$_EquipmentModelCopyWithImpl<_$_EquipmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentModelToJson(
      this,
    );
  }
}

abstract class _EquipmentModel implements EquipmentModel {
  const factory _EquipmentModel(
      {final int? id,
      final String? name,
      final double? price,
      final String? description,
      final int? stocks,
      final int? type,
      final PivotModel? pivot,
      final DateTime? created_at,
      final DateTime? updated_at,
      final BrandModel? brand,
      final int quantity,
      final int? qty,
      final String? image_url,
      final String? image_thumb_url}) = _$_EquipmentModel;

  factory _EquipmentModel.fromJson(Map<String, dynamic> json) =
      _$_EquipmentModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  double? get price;
  @override
  String? get description;
  @override
  int? get stocks;
  @override
  int? get type;
  @override // int? unlimited,
  PivotModel? get pivot;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  BrandModel? get brand;
  @override
  int get quantity;
  @override
  int? get qty;
  @override // String? type_name,
// ImageModel? image,
  String? get image_url;
  @override
  String? get image_thumb_url;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
