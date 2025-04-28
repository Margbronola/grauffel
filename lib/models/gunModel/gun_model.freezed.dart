// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  int? get reserve => throw _privateConstructorUsedError;
  int? get required_ammunition => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // DateTime? created_at,
// DateTime? updated_at,
  PivotModel? get pivot =>
      throw _privateConstructorUsedError; //available_ammunition {}
  bool? get reservable => throw _privateConstructorUsedError; // relatedAmmo []
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
      _$GunModelCopyWithImpl<$Res, GunModel>;
  @useResult
  $Res call(
      {int? id,
      String? model,
      int? brand_id,
      int? caliber_id,
      int? reserve,
      int? required_ammunition,
      double? price,
      String? description,
      PivotModel? pivot,
      bool? reservable,
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
class _$GunModelCopyWithImpl<$Res, $Val extends GunModel>
    implements $GunModelCopyWith<$Res> {
  _$GunModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? model = freezed,
    Object? brand_id = freezed,
    Object? caliber_id = freezed,
    Object? reserve = freezed,
    Object? required_ammunition = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? pivot = freezed,
    Object? reservable = freezed,
    Object? caliber = freezed,
    Object? brand = freezed,
    Object? quantity = freezed,
    Object? qty = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
    Object? ammunitions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      brand_id: freezed == brand_id
          ? _value.brand_id
          : brand_id // ignore: cast_nullable_to_non_nullable
              as int?,
      caliber_id: freezed == caliber_id
          ? _value.caliber_id
          : caliber_id // ignore: cast_nullable_to_non_nullable
              as int?,
      reserve: freezed == reserve
          ? _value.reserve
          : reserve // ignore: cast_nullable_to_non_nullable
              as int?,
      required_ammunition: freezed == required_ammunition
          ? _value.required_ammunition
          : required_ammunition // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
      reservable: freezed == reservable
          ? _value.reservable
          : reservable // ignore: cast_nullable_to_non_nullable
              as bool?,
      caliber: freezed == caliber
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
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
      ammunitions: freezed == ammunitions
          ? _value.ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
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
abstract class _$$_GunModelCopyWith<$Res> implements $GunModelCopyWith<$Res> {
  factory _$$_GunModelCopyWith(
          _$_GunModel value, $Res Function(_$_GunModel) then) =
      __$$_GunModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? model,
      int? brand_id,
      int? caliber_id,
      int? reserve,
      int? required_ammunition,
      double? price,
      String? description,
      PivotModel? pivot,
      bool? reservable,
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
class __$$_GunModelCopyWithImpl<$Res>
    extends _$GunModelCopyWithImpl<$Res, _$_GunModel>
    implements _$$_GunModelCopyWith<$Res> {
  __$$_GunModelCopyWithImpl(
      _$_GunModel _value, $Res Function(_$_GunModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? model = freezed,
    Object? brand_id = freezed,
    Object? caliber_id = freezed,
    Object? reserve = freezed,
    Object? required_ammunition = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? pivot = freezed,
    Object? reservable = freezed,
    Object? caliber = freezed,
    Object? brand = freezed,
    Object? quantity = freezed,
    Object? qty = freezed,
    Object? image_url = freezed,
    Object? image_thumb_url = freezed,
    Object? ammunitions = freezed,
  }) {
    return _then(_$_GunModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      brand_id: freezed == brand_id
          ? _value.brand_id
          : brand_id // ignore: cast_nullable_to_non_nullable
              as int?,
      caliber_id: freezed == caliber_id
          ? _value.caliber_id
          : caliber_id // ignore: cast_nullable_to_non_nullable
              as int?,
      reserve: freezed == reserve
          ? _value.reserve
          : reserve // ignore: cast_nullable_to_non_nullable
              as int?,
      required_ammunition: freezed == required_ammunition
          ? _value.required_ammunition
          : required_ammunition // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PivotModel?,
      reservable: freezed == reservable
          ? _value.reservable
          : reservable // ignore: cast_nullable_to_non_nullable
              as bool?,
      caliber: freezed == caliber
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
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
      ammunitions: freezed == ammunitions
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
      this.reserve,
      this.required_ammunition,
      this.price,
      this.description,
      this.pivot,
      this.reservable,
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
  @override
  final int? reserve;
  @override
  final int? required_ammunition;
  @override
  final double? price;
  @override
  final String? description;
// DateTime? created_at,
// DateTime? updated_at,
  @override
  final PivotModel? pivot;
//available_ammunition {}
  @override
  final bool? reservable;
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
    if (_ammunitions is EqualUnmodifiableListView) return _ammunitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GunModel(id: $id, model: $model, brand_id: $brand_id, caliber_id: $caliber_id, reserve: $reserve, required_ammunition: $required_ammunition, price: $price, description: $description, pivot: $pivot, reservable: $reservable, caliber: $caliber, brand: $brand, quantity: $quantity, qty: $qty, image_url: $image_url, image_thumb_url: $image_thumb_url, ammunitions: $ammunitions)';
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
      ..add(DiagnosticsProperty('reserve', reserve))
      ..add(DiagnosticsProperty('required_ammunition', required_ammunition))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('pivot', pivot))
      ..add(DiagnosticsProperty('reservable', reservable))
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.brand_id, brand_id) ||
                other.brand_id == brand_id) &&
            (identical(other.caliber_id, caliber_id) ||
                other.caliber_id == caliber_id) &&
            (identical(other.reserve, reserve) || other.reserve == reserve) &&
            (identical(other.required_ammunition, required_ammunition) ||
                other.required_ammunition == required_ammunition) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pivot, pivot) || other.pivot == pivot) &&
            (identical(other.reservable, reservable) ||
                other.reservable == reservable) &&
            (identical(other.caliber, caliber) || other.caliber == caliber) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.image_thumb_url, image_thumb_url) ||
                other.image_thumb_url == image_thumb_url) &&
            const DeepCollectionEquality()
                .equals(other._ammunitions, _ammunitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      model,
      brand_id,
      caliber_id,
      reserve,
      required_ammunition,
      price,
      description,
      pivot,
      reservable,
      caliber,
      brand,
      quantity,
      qty,
      image_url,
      image_thumb_url,
      const DeepCollectionEquality().hash(_ammunitions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final int? reserve,
      final int? required_ammunition,
      final double? price,
      final String? description,
      final PivotModel? pivot,
      final bool? reservable,
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
  int? get reserve;
  @override
  int? get required_ammunition;
  @override
  double? get price;
  @override
  String? get description;
  @override // DateTime? created_at,
// DateTime? updated_at,
  PivotModel? get pivot;
  @override //available_ammunition {}
  bool? get reservable;
  @override // relatedAmmo []
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
