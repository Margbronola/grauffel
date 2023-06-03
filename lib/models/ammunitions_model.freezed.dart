// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  BrandModel? get brand => throw _privateConstructorUsedError;
  CaliberModel? get caliber => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  PivotModel? get pivot => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  String? get image_thumb_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmmunitionsModelCopyWith<AmmunitionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmmunitionsModelCopyWith<$Res> {
  factory $AmmunitionsModelCopyWith(
          AmmunitionsModel value, $Res Function(AmmunitionsModel) then) =
      _$AmmunitionsModelCopyWithImpl<$Res, AmmunitionsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? price,
      int? stock,
      int? status,
      BrandModel? brand,
      CaliberModel? caliber,
      int quantity,
      int qty,
      PivotModel? pivot,
      String? image_url,
      String? image_thumb_url});

  $BrandModelCopyWith<$Res>? get brand;
  $CaliberModelCopyWith<$Res>? get caliber;
  $PivotModelCopyWith<$Res>? get pivot;
}

/// @nodoc
class _$AmmunitionsModelCopyWithImpl<$Res, $Val extends AmmunitionsModel>
    implements $AmmunitionsModelCopyWith<$Res> {
  _$AmmunitionsModelCopyWithImpl(this._value, this._then);

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
    Object? price = freezed,
    Object? stock = freezed,
    Object? status = freezed,
    Object? brand = freezed,
    Object? caliber = freezed,
    Object? quantity = null,
    Object? qty = null,
    Object? pivot = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      caliber: freezed == caliber
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
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
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CaliberModelCopyWith<$Res>? get caliber {
    if (_value.caliber == null) {
      return null;
    }

    return $CaliberModelCopyWith<$Res>(_value.caliber!, (value) {
      return _then(_value.copyWith(caliber: value) as $Val);
    });
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
}

/// @nodoc
abstract class _$$_AmmunitionsModelCopyWith<$Res>
    implements $AmmunitionsModelCopyWith<$Res> {
  factory _$$_AmmunitionsModelCopyWith(
          _$_AmmunitionsModel value, $Res Function(_$_AmmunitionsModel) then) =
      __$$_AmmunitionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? price,
      int? stock,
      int? status,
      BrandModel? brand,
      CaliberModel? caliber,
      int quantity,
      int qty,
      PivotModel? pivot,
      String? image_url,
      String? image_thumb_url});

  @override
  $BrandModelCopyWith<$Res>? get brand;
  @override
  $CaliberModelCopyWith<$Res>? get caliber;
  @override
  $PivotModelCopyWith<$Res>? get pivot;
}

/// @nodoc
class __$$_AmmunitionsModelCopyWithImpl<$Res>
    extends _$AmmunitionsModelCopyWithImpl<$Res, _$_AmmunitionsModel>
    implements _$$_AmmunitionsModelCopyWith<$Res> {
  __$$_AmmunitionsModelCopyWithImpl(
      _$_AmmunitionsModel _value, $Res Function(_$_AmmunitionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? stock = freezed,
    Object? status = freezed,
    Object? brand = freezed,
    Object? caliber = freezed,
    Object? quantity = null,
    Object? qty = null,
    Object? pivot = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
  }) {
    return _then(_$_AmmunitionsModel(
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
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      caliber: freezed == caliber
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
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
class _$_AmmunitionsModel implements _AmmunitionsModel {
  const _$_AmmunitionsModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stock,
      this.status,
      this.brand,
      this.caliber,
      this.quantity = 1,
      this.qty = 1,
      this.pivot,
      this.image_url,
      this.image_thumb_url});

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
  final BrandModel? brand;
  @override
  final CaliberModel? caliber;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final int qty;
  @override
  final PivotModel? pivot;
  @override
  final String? image_url;
  @override
  final String? image_thumb_url;

  @override
  String toString() {
    return 'AmmunitionsModel(id: $id, name: $name, description: $description, price: $price, stock: $stock, status: $status, brand: $brand, caliber: $caliber, quantity: $quantity, qty: $qty, pivot: $pivot, image_url: $image_url, image_thumb_url: $image_thumb_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmmunitionsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.caliber, caliber) || other.caliber == caliber) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.pivot, pivot) || other.pivot == pivot) &&
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
      description,
      price,
      stock,
      status,
      brand,
      caliber,
      quantity,
      qty,
      pivot,
      image_url,
      image_thumb_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final BrandModel? brand,
      final CaliberModel? caliber,
      final int quantity,
      final int qty,
      final PivotModel? pivot,
      final String? image_url,
      final String? image_thumb_url}) = _$_AmmunitionsModel;

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
  BrandModel? get brand;
  @override
  CaliberModel? get caliber;
  @override
  int get quantity;
  @override
  int get qty;
  @override
  PivotModel? get pivot;
  @override
  String? get image_url;
  @override
  String? get image_thumb_url;
  @override
  @JsonKey(ignore: true)
  _$$_AmmunitionsModelCopyWith<_$_AmmunitionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
