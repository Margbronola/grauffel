// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  int? get type => throw _privateConstructorUsedError;
  int? get unlimited => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  String? get type_name => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      double? price,
      String? description,
      int? stocks,
      int? type,
      int? unlimited,
      DateTime? created_at,
      int quantity,
      DateTime? updated_at,
      BrandModel? brand,
      int? qty,
      String? type_name,
      ImageModel? image});

  $BrandModelCopyWith<$Res>? get brand;
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  final EquipmentModel _value;
  // ignore: unused_field
  final $Res Function(EquipmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? stocks = freezed,
    Object? type = freezed,
    Object? unlimited = freezed,
    Object? created_at = freezed,
    Object? quantity = freezed,
    Object? updated_at = freezed,
    Object? brand = freezed,
    Object? qty = freezed,
    Object? type_name = freezed,
    Object? image = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      unlimited: unlimited == freezed
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      type_name: type_name == freezed
          ? _value.type_name
          : type_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
    ));
  }

  @override
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }

  @override
  $ImageModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value));
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
  $Res call(
      {int? id,
      String? name,
      double? price,
      String? description,
      int? stocks,
      int? type,
      int? unlimited,
      DateTime? created_at,
      int quantity,
      DateTime? updated_at,
      BrandModel? brand,
      int? qty,
      String? type_name,
      ImageModel? image});

  @override
  $BrandModelCopyWith<$Res>? get brand;
  @override
  $ImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_EquipmentModelCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res>
    implements _$$_EquipmentModelCopyWith<$Res> {
  __$$_EquipmentModelCopyWithImpl(
      _$_EquipmentModel _value, $Res Function(_$_EquipmentModel) _then)
      : super(_value, (v) => _then(v as _$_EquipmentModel));

  @override
  _$_EquipmentModel get _value => super._value as _$_EquipmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? stocks = freezed,
    Object? type = freezed,
    Object? unlimited = freezed,
    Object? created_at = freezed,
    Object? quantity = freezed,
    Object? updated_at = freezed,
    Object? brand = freezed,
    Object? qty = freezed,
    Object? type_name = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_EquipmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stocks: stocks == freezed
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      unlimited: unlimited == freezed
          ? _value.unlimited
          : unlimited // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      type_name: type_name == freezed
          ? _value.type_name
          : type_name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
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
      this.unlimited,
      this.created_at,
      this.quantity = 1,
      this.updated_at,
      this.brand,
      this.qty = 1,
      this.type_name,
      this.image});

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
  @override
  final int? unlimited;
  @override
  final DateTime? created_at;
  @override
  @JsonKey()
  final int quantity;
  @override
  final DateTime? updated_at;
  @override
  final BrandModel? brand;
  @override
  @JsonKey()
  final int? qty;
  @override
  final String? type_name;
  @override
  final ImageModel? image;

  @override
  String toString() {
    return 'EquipmentModel(id: $id, name: $name, price: $price, description: $description, stocks: $stocks, type: $type, unlimited: $unlimited, created_at: $created_at, quantity: $quantity, updated_at: $updated_at, brand: $brand, qty: $qty, type_name: $type_name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.stocks, stocks) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.unlimited, unlimited) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.type_name, type_name) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(stocks),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(unlimited),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(type_name),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
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
      final int? unlimited,
      final DateTime? created_at,
      final int quantity,
      final DateTime? updated_at,
      final BrandModel? brand,
      final int? qty,
      final String? type_name,
      final ImageModel? image}) = _$_EquipmentModel;

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
  @override
  int? get unlimited;
  @override
  DateTime? get created_at;
  @override
  int get quantity;
  @override
  DateTime? get updated_at;
  @override
  BrandModel? get brand;
  @override
  int? get qty;
  @override
  String? get type_name;
  @override
  ImageModel? get image;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
