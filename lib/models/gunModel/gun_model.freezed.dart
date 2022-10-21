// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gun_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GunModel _$GunModelFromJson(Map<String, dynamic> json) {
  return _GunModel.fromJson(json);
}

/// @nodoc
mixin _$GunModel {
  int? get id => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  int? get brand_id => throw _privateConstructorUsedError;
  int? get caliber_id =>
      throw _privateConstructorUsedError; // int? mags_capacity,
// int? reserve,
  double? get price => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // DateTime? created_at,
// DateTime? updated_at,
  PivotModel? get pivot =>
      throw _privateConstructorUsedError; //available_ammunition {}
// bool? reservable,
// relatedAmmo []
// relatedEquipment []
  CaliberModel? get caliber => throw _privateConstructorUsedError;
  BrandModel? get brand =>
      throw _privateConstructorUsedError; // ImageModel? image,
// List? bookings,
  int? get quantity => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  String? get image_thumb_url =>
      throw _privateConstructorUsedError; // List<EquipmentModel>? equipments,
  List<AmmunitionsModel>? get ammunitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GunModelCopyWith<GunModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GunModelCopyWith<$Res> {
  factory $GunModelCopyWith(GunModel value, $Res Function(GunModel) then) =
      _$GunModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? model,
      int? brand_id,
      int? caliber_id,
      double? price,
      String? description,
      PivotModel? pivot,
      CaliberModel? caliber,
      BrandModel? brand,
      int? quantity,
      int? qty,
      String? image_url,
      String? image_thumb_url,
      List<AmmunitionsModel>? ammunitions});

  $PivotModelCopyWith<$Res>? get pivot;
  $CaliberModelCopyWith<$Res>? get caliber;
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$GunModelCopyWithImpl<$Res> implements $GunModelCopyWith<$Res> {
  _$GunModelCopyWithImpl(this._value, this._then);

  final GunModel _value;
  // ignore: unused_field
  final $Res Function(GunModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? model = freezed,
    Object? brand_id = freezed,
    Object? caliber_id = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? pivot = freezed,
    Object? caliber = freezed,
    Object? brand = freezed,
    Object? quantity = freezed,
    Object? qty = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
    Object? ammunitions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      brand_id: brand_id == freezed
          ? _value.brand_id
          : brand_id // ignore: cast_nullable_to_non_nullable
              as int?,
      caliber_id: caliber_id == freezed
          ? _value.caliber_id
          : caliber_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: pivot == freezed
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
      caliber: caliber == freezed
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      image_url: image_url == freezed
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      image_thumb_url: image_thumb_url == freezed
          ? _value.image_thumb_url
          : image_thumb_url // ignore: cast_nullable_to_non_nullable
              as String?,
      ammunitions: ammunitions == freezed
          ? _value.ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
    ));
  }

  @override
  $PivotModelCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $PivotModelCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value));
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

  @override
  $BrandModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value));
    });
  }
}

/// @nodoc
abstract class _$$_GunModelCopyWith<$Res> implements $GunModelCopyWith<$Res> {
  factory _$$_GunModelCopyWith(
          _$_GunModel value, $Res Function(_$_GunModel) then) =
      __$$_GunModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? model,
      int? brand_id,
      int? caliber_id,
      double? price,
      String? description,
      PivotModel? pivot,
      CaliberModel? caliber,
      BrandModel? brand,
      int? quantity,
      int? qty,
      String? image_url,
      String? image_thumb_url,
      List<AmmunitionsModel>? ammunitions});

  @override
  $PivotModelCopyWith<$Res>? get pivot;
  @override
  $CaliberModelCopyWith<$Res>? get caliber;
  @override
  $BrandModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$_GunModelCopyWithImpl<$Res> extends _$GunModelCopyWithImpl<$Res>
    implements _$$_GunModelCopyWith<$Res> {
  __$$_GunModelCopyWithImpl(
      _$_GunModel _value, $Res Function(_$_GunModel) _then)
      : super(_value, (v) => _then(v as _$_GunModel));

  @override
  _$_GunModel get _value => super._value as _$_GunModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? model = freezed,
    Object? brand_id = freezed,
    Object? caliber_id = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? pivot = freezed,
    Object? caliber = freezed,
    Object? brand = freezed,
    Object? quantity = freezed,
    Object? qty = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
    Object? ammunitions = freezed,
  }) {
    return _then(_$_GunModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      brand_id: brand_id == freezed
          ? _value.brand_id
          : brand_id // ignore: cast_nullable_to_non_nullable
              as int?,
      caliber_id: caliber_id == freezed
          ? _value.caliber_id
          : caliber_id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: pivot == freezed
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
      caliber: caliber == freezed
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      image_url: image_url == freezed
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      image_thumb_url: image_thumb_url == freezed
          ? _value.image_thumb_url
          : image_thumb_url // ignore: cast_nullable_to_non_nullable
              as String?,
      ammunitions: ammunitions == freezed
          ? _value._ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GunModel with DiagnosticableTreeMixin implements _GunModel {
  const _$_GunModel(
      {this.id,
      this.model,
      this.brand_id,
      this.caliber_id,
      this.price,
      this.description,
      this.pivot,
      this.caliber,
      this.brand,
      this.quantity = 1,
      this.qty = 1,
      this.image_url,
      this.image_thumb_url,
      final List<AmmunitionsModel>? ammunitions})
      : _ammunitions = ammunitions;

  factory _$_GunModel.fromJson(Map<String, dynamic> json) =>
      _$$_GunModelFromJson(json);

  @override
  final int? id;
  @override
  final String? model;
  @override
  final int? brand_id;
  @override
  final int? caliber_id;
// int? mags_capacity,
// int? reserve,
  @override
  final double? price;
  @override
  final String? description;
// DateTime? created_at,
// DateTime? updated_at,
  @override
  final PivotModel? pivot;
//available_ammunition {}
// bool? reservable,
// relatedAmmo []
// relatedEquipment []
  @override
  final CaliberModel? caliber;
  @override
  final BrandModel? brand;
// ImageModel? image,
// List? bookings,
  @override
  @JsonKey()
  final int? quantity;
  @override
  @JsonKey()
  final int? qty;
  @override
  final String? image_url;
  @override
  final String? image_thumb_url;
// List<EquipmentModel>? equipments,
  final List<AmmunitionsModel>? _ammunitions;
// List<EquipmentModel>? equipments,
  @override
  List<AmmunitionsModel>? get ammunitions {
    final value = _ammunitions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GunModel(id: $id, model: $model, brand_id: $brand_id, caliber_id: $caliber_id, price: $price, description: $description, pivot: $pivot, caliber: $caliber, brand: $brand, quantity: $quantity, qty: $qty, image_url: $image_url, image_thumb_url: $image_thumb_url, ammunitions: $ammunitions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GunModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('brand_id', brand_id))
      ..add(DiagnosticsProperty('caliber_id', caliber_id))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pivot', pivot))
      ..add(DiagnosticsProperty('caliber', caliber))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('image_url', image_url))
      ..add(DiagnosticsProperty('image_thumb_url', image_thumb_url))
      ..add(DiagnosticsProperty('ammunitions', ammunitions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GunModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.brand_id, brand_id) &&
            const DeepCollectionEquality()
                .equals(other.caliber_id, caliber_id) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pivot, pivot) &&
            const DeepCollectionEquality().equals(other.caliber, caliber) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.image_url, image_url) &&
            const DeepCollectionEquality()
                .equals(other.image_thumb_url, image_thumb_url) &&
            const DeepCollectionEquality()
                .equals(other._ammunitions, _ammunitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(brand_id),
      const DeepCollectionEquality().hash(caliber_id),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pivot),
      const DeepCollectionEquality().hash(caliber),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(image_url),
      const DeepCollectionEquality().hash(image_thumb_url),
      const DeepCollectionEquality().hash(_ammunitions));

  @JsonKey(ignore: true)
  @override
  _$$_GunModelCopyWith<_$_GunModel> get copyWith =>
      __$$_GunModelCopyWithImpl<_$_GunModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GunModelToJson(
      this,
    );
  }
}

abstract class _GunModel implements GunModel {
  const factory _GunModel(
      {final int? id,
      final String? model,
      final int? brand_id,
      final int? caliber_id,
      final double? price,
      final String? description,
      final PivotModel? pivot,
      final CaliberModel? caliber,
      final BrandModel? brand,
      final int? quantity,
      final int? qty,
      final String? image_url,
      final String? image_thumb_url,
      final List<AmmunitionsModel>? ammunitions}) = _$_GunModel;

  factory _GunModel.fromJson(Map<String, dynamic> json) = _$_GunModel.fromJson;

  @override
  int? get id;
  @override
  String? get model;
  @override
  int? get brand_id;
  @override
  int? get caliber_id;
  @override // int? mags_capacity,
// int? reserve,
  double? get price;
  @override
  String? get description;
  @override // DateTime? created_at,
// DateTime? updated_at,
  PivotModel? get pivot;
  @override //available_ammunition {}
// bool? reservable,
// relatedAmmo []
// relatedEquipment []
  CaliberModel? get caliber;
  @override
  BrandModel? get brand;
  @override // ImageModel? image,
// List? bookings,
  int? get quantity;
  @override
  int? get qty;
  @override
  String? get image_url;
  @override
  String? get image_thumb_url;
  @override // List<EquipmentModel>? equipments,
  List<AmmunitionsModel>? get ammunitions;
  @override
  @JsonKey(ignore: true)
  _$$_GunModelCopyWith<_$_GunModel> get copyWith =>
      throw _privateConstructorUsedError;
}
