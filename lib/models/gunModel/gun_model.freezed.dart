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
  int? get caliber_id => throw _privateConstructorUsedError;
  int? get mags_capacity => throw _privateConstructorUsedError;
  int? get reserve => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at =>
      throw _privateConstructorUsedError; //available_ammunition {}
  bool? get reservable => throw _privateConstructorUsedError; // relatedAmmo []
// relatedEquipment []
  CaliberModel? get caliber => throw _privateConstructorUsedError;
  BrandModel? get brand => throw _privateConstructorUsedError;
  ImageModel? get image => throw _privateConstructorUsedError;
  List<dynamic>? get bookings => throw _privateConstructorUsedError;
  List<EquipmentModel>? get equipments => throw _privateConstructorUsedError;
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
      int? mags_capacity,
      int? reserve,
      double? price,
      String? description,
      DateTime? created_at,
      DateTime? updated_at,
      bool? reservable,
      CaliberModel? caliber,
      BrandModel? brand,
      ImageModel? image,
      List<dynamic>? bookings,
      List<EquipmentModel>? equipments,
      List<AmmunitionsModel>? ammunitions});

  $CaliberModelCopyWith<$Res>? get caliber;
  $BrandModelCopyWith<$Res>? get brand;
  $ImageModelCopyWith<$Res>? get image;
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
    Object? mags_capacity = freezed,
    Object? reserve = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? reservable = freezed,
    Object? caliber = freezed,
    Object? brand = freezed,
    Object? image = freezed,
    Object? bookings = freezed,
    Object? equipments = freezed,
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
      mags_capacity: mags_capacity == freezed
          ? _value.mags_capacity
          : mags_capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      reserve: reserve == freezed
          ? _value.reserve
          : reserve // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservable: reservable == freezed
          ? _value.reservable
          : reservable // ignore: cast_nullable_to_non_nullable
              as bool?,
      caliber: caliber == freezed
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      bookings: bookings == freezed
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      equipments: equipments == freezed
          ? _value.equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
      ammunitions: ammunitions == freezed
          ? _value.ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
    ));
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
      int? mags_capacity,
      int? reserve,
      double? price,
      String? description,
      DateTime? created_at,
      DateTime? updated_at,
      bool? reservable,
      CaliberModel? caliber,
      BrandModel? brand,
      ImageModel? image,
      List<dynamic>? bookings,
      List<EquipmentModel>? equipments,
      List<AmmunitionsModel>? ammunitions});

  @override
  $CaliberModelCopyWith<$Res>? get caliber;
  @override
  $BrandModelCopyWith<$Res>? get brand;
  @override
  $ImageModelCopyWith<$Res>? get image;
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
    Object? mags_capacity = freezed,
    Object? reserve = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? reservable = freezed,
    Object? caliber = freezed,
    Object? brand = freezed,
    Object? image = freezed,
    Object? bookings = freezed,
    Object? equipments = freezed,
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
      mags_capacity: mags_capacity == freezed
          ? _value.mags_capacity
          : mags_capacity // ignore: cast_nullable_to_non_nullable
              as int?,
      reserve: reserve == freezed
          ? _value.reserve
          : reserve // ignore: cast_nullable_to_non_nullable
              as int?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservable: reservable == freezed
          ? _value.reservable
          : reservable // ignore: cast_nullable_to_non_nullable
              as bool?,
      caliber: caliber == freezed
          ? _value.caliber
          : caliber // ignore: cast_nullable_to_non_nullable
              as CaliberModel?,
      brand: brand == freezed
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel?,
      bookings: bookings == freezed
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      equipments: equipments == freezed
          ? _value._equipments
          : equipments // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
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
      this.mags_capacity,
      this.reserve,
      this.price,
      this.description,
      this.created_at,
      this.updated_at,
      this.reservable,
      this.caliber,
      this.brand,
      this.image,
      final List<dynamic>? bookings,
      final List<EquipmentModel>? equipments,
      final List<AmmunitionsModel>? ammunitions})
      : _bookings = bookings,
        _equipments = equipments,
        _ammunitions = ammunitions;

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
  @override
  final int? mags_capacity;
  @override
  final int? reserve;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
//available_ammunition {}
  @override
  final bool? reservable;
// relatedAmmo []
// relatedEquipment []
  @override
  final CaliberModel? caliber;
  @override
  final BrandModel? brand;
  @override
  final ImageModel? image;
  final List<dynamic>? _bookings;
  @override
  List<dynamic>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentModel>? _equipments;
  @override
  List<EquipmentModel>? get equipments {
    final value = _equipments;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmmunitionsModel>? _ammunitions;
  @override
  List<AmmunitionsModel>? get ammunitions {
    final value = _ammunitions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GunModel(id: $id, model: $model, brand_id: $brand_id, caliber_id: $caliber_id, mags_capacity: $mags_capacity, reserve: $reserve, price: $price, description: $description, created_at: $created_at, updated_at: $updated_at, reservable: $reservable, caliber: $caliber, brand: $brand, image: $image, bookings: $bookings, equipments: $equipments, ammunitions: $ammunitions)';
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
      ..add(DiagnosticsProperty('mags_capacity', mags_capacity))
      ..add(DiagnosticsProperty('reserve', reserve))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('updated_at', updated_at))
      ..add(DiagnosticsProperty('reservable', reservable))
      ..add(DiagnosticsProperty('caliber', caliber))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('bookings', bookings))
      ..add(DiagnosticsProperty('equipments', equipments))
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
            const DeepCollectionEquality()
                .equals(other.mags_capacity, mags_capacity) &&
            const DeepCollectionEquality().equals(other.reserve, reserve) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.reservable, reservable) &&
            const DeepCollectionEquality().equals(other.caliber, caliber) &&
            const DeepCollectionEquality().equals(other.brand, brand) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality()
                .equals(other._equipments, _equipments) &&
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
      const DeepCollectionEquality().hash(mags_capacity),
      const DeepCollectionEquality().hash(reserve),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(reservable),
      const DeepCollectionEquality().hash(caliber),
      const DeepCollectionEquality().hash(brand),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_bookings),
      const DeepCollectionEquality().hash(_equipments),
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
      final int? mags_capacity,
      final int? reserve,
      final double? price,
      final String? description,
      final DateTime? created_at,
      final DateTime? updated_at,
      final bool? reservable,
      final CaliberModel? caliber,
      final BrandModel? brand,
      final ImageModel? image,
      final List<dynamic>? bookings,
      final List<EquipmentModel>? equipments,
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
  @override
  int? get mags_capacity;
  @override
  int? get reserve;
  @override
  double? get price;
  @override
  String? get description;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override //available_ammunition {}
  bool? get reservable;
  @override // relatedAmmo []
// relatedEquipment []
  CaliberModel? get caliber;
  @override
  BrandModel? get brand;
  @override
  ImageModel? get image;
  @override
  List<dynamic>? get bookings;
  @override
  List<EquipmentModel>? get equipments;
  @override
  List<AmmunitionsModel>? get ammunitions;
  @override
  @JsonKey(ignore: true)
  _$$_GunModelCopyWith<_$_GunModel> get copyWith =>
      throw _privateConstructorUsedError;
}
