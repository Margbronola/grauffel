// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ammunitions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AmmunitionsModel _$AmmunitionsModelFromJson(Map<String, dynamic> json) {
  return _AmmunitionsModel.fromJson(json);
}

/// @nodoc
mixin _$AmmunitionsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  CaliberModel? get caliber => throw _privateConstructorUsedError;
  int get perBox => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmmunitionsModelCopyWith<AmmunitionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmmunitionsModelCopyWith<$Res> {
  factory $AmmunitionsModelCopyWith(
          AmmunitionsModel value, $Res Function(AmmunitionsModel) then) =
      _$AmmunitionsModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? price,
      int? stock,
      int? status,
      ImageModel? image,
      BrandModel? brand,
      CaliberModel? caliber,
      int perBox,
      DateTime? created_at,
      DateTime? updated_at});

  $ImageModelCopyWith<$Res>? get image;
  $BrandModelCopyWith<$Res>? get brand;
  $CaliberModelCopyWith<$Res>? get caliber;
}

/// @nodoc
class _$AmmunitionsModelCopyWithImpl<$Res>
    implements $AmmunitionsModelCopyWith<$Res> {
  _$AmmunitionsModelCopyWithImpl(this._value, this._then);

  final AmmunitionsModel _value;
  // ignore: unused_field
  final $Res Function(AmmunitionsModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? brand = freezed,
    Object? caliber = freezed,
    Object? perBox = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      caliber: caliber == freezed
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      perBox: perBox == freezed
          ? _value.perBox
          : perBox // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
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
  $CaliberModelCopyWith<$Res>? get caliber {
    if (_value.caliber == null) {
      return null;
    }

    return $CaliberModelCopyWith<$Res>(_value.caliber!, (value) {
      return _then(_value.copyWith(caliber: value));
    });
  }
}

/// @nodoc
abstract class _$$_AmmunitionsModelCopyWith<$Res>
    implements $AmmunitionsModelCopyWith<$Res> {
  factory _$$_AmmunitionsModelCopyWith(
          _$_AmmunitionsModel value, $Res Function(_$_AmmunitionsModel) then) =
      __$$_AmmunitionsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? price,
      int? stock,
      int? status,
      ImageModel? image,
      BrandModel? brand,
      CaliberModel? caliber,
      int perBox,
      DateTime? created_at,
      DateTime? updated_at});

  @override
  $ImageModelCopyWith<$Res>? get image;
  @override
  $BrandModelCopyWith<$Res>? get brand;
  @override
  $CaliberModelCopyWith<$Res>? get caliber;
}

/// @nodoc
class __$$_AmmunitionsModelCopyWithImpl<$Res>
    extends _$AmmunitionsModelCopyWithImpl<$Res>
    implements _$$_AmmunitionsModelCopyWith<$Res> {
  __$$_AmmunitionsModelCopyWithImpl(
      _$_AmmunitionsModel _value, $Res Function(_$_AmmunitionsModel) _then)
      : super(_value, (v) => _then(v as _$_AmmunitionsModel));

  @override
  _$_AmmunitionsModel get _value => super._value as _$_AmmunitionsModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? status = freezed,
    Object? image = freezed,
    Object? brand = freezed,
    Object? caliber = freezed,
    Object? perBox = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_AmmunitionsModel(
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
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: stock == freezed
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      caliber: caliber == freezed
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      perBox: perBox == freezed
          ? _value.perBox
          : perBox // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmmunitionsModel implements _AmmunitionsModel {
  const _$_AmmunitionsModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stock,
      this.status,
      this.image,
      this.brand,
      this.caliber,
      this.perBox = 1,
      this.created_at,
      this.updated_at});

  factory _$_AmmunitionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AmmunitionsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final int? stock;
  @override
  final int? status;
  @override
  final ImageModel? image;
  @override
  final BrandModel? brand;
  @override
  final CaliberModel? caliber;
  @override
  @JsonKey()
  final int perBox;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'AmmunitionsModel(id: $id, name: $name, description: $description, price: $price, stock: $stock, status: $status, image: $image, brand: $brand, caliber: $caliber, perBox: $perBox, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmmunitionsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.stock, stock) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.caliber, caliber) &&
            const DeepCollectionEquality().equals(other.perBox, perBox) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(stock),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(caliber),
      const DeepCollectionEquality().hash(perBox),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at));

  @JsonKey(ignore: true)
  @override
  _$$_AmmunitionsModelCopyWith<_$_AmmunitionsModel> get copyWith =>
      __$$_AmmunitionsModelCopyWithImpl<_$_AmmunitionsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmmunitionsModelToJson(
      this,
    );
  }
}

abstract class _AmmunitionsModel implements AmmunitionsModel {
  const factory _AmmunitionsModel(
      {final int? id,
      final String? name,
      final String? description,
      final double? price,
      final int? stock,
      final int? status,
      final ImageModel? image,
      final BrandModel? brand,
      final CaliberModel? caliber,
      final int perBox,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$_AmmunitionsModel;

  factory _AmmunitionsModel.fromJson(Map<String, dynamic> json) =
      _$_AmmunitionsModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get price;
  @override
  int? get stock;
  @override
  int? get status;
  @override
  ImageModel? get image;
  @override
  BrandModel? get brand;
  @override
  CaliberModel? get caliber;
  @override
  int get perBox;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_AmmunitionsModelCopyWith<_$_AmmunitionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
