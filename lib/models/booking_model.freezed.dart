// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  int? get id => throw _privateConstructorUsedError;
  int? get bookable_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get client_id => throw _privateConstructorUsedError;
  int? get activity_id => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  int? get cell_loc => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  double? get bookable_cost => throw _privateConstructorUsedError;
  double? get total_gun_cost => throw _privateConstructorUsedError;
  double? get total_ammunition_cost => throw _privateConstructorUsedError;
  double? get total_equipment_cost => throw _privateConstructorUsedError;
  double? get tax_included => throw _privateConstructorUsedError;
  double? get sub_total => throw _privateConstructorUsedError;
  double? get gun_discount => throw _privateConstructorUsedError;
  double? get ammunition_discount => throw _privateConstructorUsedError;
  double? get equipment_discount => throw _privateConstructorUsedError;
  double? get total_discount => throw _privateConstructorUsedError;
  double? get total_cost => throw _privateConstructorUsedError;
  String? get purchase_number => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  String? get status_name => throw _privateConstructorUsedError;
  String? get morph_class => throw _privateConstructorUsedError;
  List<AmmunitionsModel>? get ammunitions => throw _privateConstructorUsedError;
  List<GunModel>? get guns => throw _privateConstructorUsedError;
  List<EquipmentModel>? get equipements => throw _privateConstructorUsedError;
  BookableModel? get bookable => throw _privateConstructorUsedError;
  ActivityModel? get activity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      int? bookable_id,
      String? name,
      int? client_id,
      int? activity_id,
      DateTime? start,
      DateTime? end,
      int? cell_loc,
      int? status,
      int? duration,
      double? bookable_cost,
      double? total_gun_cost,
      double? total_ammunition_cost,
      double? total_equipment_cost,
      double? tax_included,
      double? sub_total,
      double? gun_discount,
      double? ammunition_discount,
      double? equipment_discount,
      double? total_discount,
      double? total_cost,
      String? purchase_number,
      DateTime? created_at,
      DateTime? updated_at,
      String? status_name,
      String? morph_class,
      List<AmmunitionsModel>? ammunitions,
      List<GunModel>? guns,
      List<EquipmentModel>? equipements,
      BookableModel? bookable,
      ActivityModel? activity});

  $BookableModelCopyWith<$Res>? get bookable;
  $ActivityModelCopyWith<$Res>? get activity;
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res> implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  final BookingModel _value;
  // ignore: unused_field
  final $Res Function(BookingModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bookable_id = freezed,
    Object? name = freezed,
    Object? client_id = freezed,
    Object? activity_id = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? cell_loc = freezed,
    Object? status = freezed,
    Object? duration = freezed,
    Object? bookable_cost = freezed,
    Object? total_gun_cost = freezed,
    Object? total_ammunition_cost = freezed,
    Object? total_equipment_cost = freezed,
    Object? tax_included = freezed,
    Object? sub_total = freezed,
    Object? gun_discount = freezed,
    Object? ammunition_discount = freezed,
    Object? equipment_discount = freezed,
    Object? total_discount = freezed,
    Object? total_cost = freezed,
    Object? purchase_number = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? status_name = freezed,
    Object? morph_class = freezed,
    Object? ammunitions = freezed,
    Object? guns = freezed,
    Object? equipements = freezed,
    Object? bookable = freezed,
    Object? activity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_id: bookable_id == freezed
          ? _value.bookable_id
          : bookable_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      activity_id: activity_id == freezed
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cell_loc: cell_loc == freezed
          ? _value.cell_loc
          : cell_loc // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_cost: bookable_cost == freezed
          ? _value.bookable_cost
          : bookable_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_gun_cost: total_gun_cost == freezed
          ? _value.total_gun_cost
          : total_gun_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_ammunition_cost: total_ammunition_cost == freezed
          ? _value.total_ammunition_cost
          : total_ammunition_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_equipment_cost: total_equipment_cost == freezed
          ? _value.total_equipment_cost
          : total_equipment_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      tax_included: tax_included == freezed
          ? _value.tax_included
          : tax_included // ignore: cast_nullable_to_non_nullable
              as double?,
      sub_total: sub_total == freezed
          ? _value.sub_total
          : sub_total // ignore: cast_nullable_to_non_nullable
              as double?,
      gun_discount: gun_discount == freezed
          ? _value.gun_discount
          : gun_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      ammunition_discount: ammunition_discount == freezed
          ? _value.ammunition_discount
          : ammunition_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      equipment_discount: equipment_discount == freezed
          ? _value.equipment_discount
          : equipment_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_discount: total_discount == freezed
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_cost: total_cost == freezed
          ? _value.total_cost
          : total_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      purchase_number: purchase_number == freezed
          ? _value.purchase_number
          : purchase_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: status_name == freezed
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      morph_class: morph_class == freezed
          ? _value.morph_class
          : morph_class // ignore: cast_nullable_to_non_nullable
              as String?,
      ammunitions: ammunitions == freezed
          ? _value.ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      guns: guns == freezed
          ? _value.guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      equipements: equipements == freezed
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
      bookable: bookable == freezed
          ? _value.bookable
          : bookable // ignore: cast_nullable_to_non_nullable
              as BookableModel?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
    ));
  }

  @override
  $BookableModelCopyWith<$Res>? get bookable {
    if (_value.bookable == null) {
      return null;
    }

    return $BookableModelCopyWith<$Res>(_value.bookable!, (value) {
      return _then(_value.copyWith(bookable: value));
    });
  }

  @override
  $ActivityModelCopyWith<$Res>? get activity {
    if (_value.activity == null) {
      return null;
    }

    return $ActivityModelCopyWith<$Res>(_value.activity!, (value) {
      return _then(_value.copyWith(activity: value));
    });
  }
}

/// @nodoc
abstract class _$$_BookingModelCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$_BookingModelCopyWith(
          _$_BookingModel value, $Res Function(_$_BookingModel) then) =
      __$$_BookingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      int? bookable_id,
      String? name,
      int? client_id,
      int? activity_id,
      DateTime? start,
      DateTime? end,
      int? cell_loc,
      int? status,
      int? duration,
      double? bookable_cost,
      double? total_gun_cost,
      double? total_ammunition_cost,
      double? total_equipment_cost,
      double? tax_included,
      double? sub_total,
      double? gun_discount,
      double? ammunition_discount,
      double? equipment_discount,
      double? total_discount,
      double? total_cost,
      String? purchase_number,
      DateTime? created_at,
      DateTime? updated_at,
      String? status_name,
      String? morph_class,
      List<AmmunitionsModel>? ammunitions,
      List<GunModel>? guns,
      List<EquipmentModel>? equipements,
      BookableModel? bookable,
      ActivityModel? activity});

  @override
  $BookableModelCopyWith<$Res>? get bookable;
  @override
  $ActivityModelCopyWith<$Res>? get activity;
}

/// @nodoc
class __$$_BookingModelCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res>
    implements _$$_BookingModelCopyWith<$Res> {
  __$$_BookingModelCopyWithImpl(
      _$_BookingModel _value, $Res Function(_$_BookingModel) _then)
      : super(_value, (v) => _then(v as _$_BookingModel));

  @override
  _$_BookingModel get _value => super._value as _$_BookingModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? bookable_id = freezed,
    Object? name = freezed,
    Object? client_id = freezed,
    Object? activity_id = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? cell_loc = freezed,
    Object? status = freezed,
    Object? duration = freezed,
    Object? bookable_cost = freezed,
    Object? total_gun_cost = freezed,
    Object? total_ammunition_cost = freezed,
    Object? total_equipment_cost = freezed,
    Object? tax_included = freezed,
    Object? sub_total = freezed,
    Object? gun_discount = freezed,
    Object? ammunition_discount = freezed,
    Object? equipment_discount = freezed,
    Object? total_discount = freezed,
    Object? total_cost = freezed,
    Object? purchase_number = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? status_name = freezed,
    Object? morph_class = freezed,
    Object? ammunitions = freezed,
    Object? guns = freezed,
    Object? equipements = freezed,
    Object? bookable = freezed,
    Object? activity = freezed,
  }) {
    return _then(_$_BookingModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_id: bookable_id == freezed
          ? _value.bookable_id
          : bookable_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: client_id == freezed
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      activity_id: activity_id == freezed
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cell_loc: cell_loc == freezed
          ? _value.cell_loc
          : cell_loc // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_cost: bookable_cost == freezed
          ? _value.bookable_cost
          : bookable_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_gun_cost: total_gun_cost == freezed
          ? _value.total_gun_cost
          : total_gun_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_ammunition_cost: total_ammunition_cost == freezed
          ? _value.total_ammunition_cost
          : total_ammunition_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_equipment_cost: total_equipment_cost == freezed
          ? _value.total_equipment_cost
          : total_equipment_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      tax_included: tax_included == freezed
          ? _value.tax_included
          : tax_included // ignore: cast_nullable_to_non_nullable
              as double?,
      sub_total: sub_total == freezed
          ? _value.sub_total
          : sub_total // ignore: cast_nullable_to_non_nullable
              as double?,
      gun_discount: gun_discount == freezed
          ? _value.gun_discount
          : gun_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      ammunition_discount: ammunition_discount == freezed
          ? _value.ammunition_discount
          : ammunition_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      equipment_discount: equipment_discount == freezed
          ? _value.equipment_discount
          : equipment_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_discount: total_discount == freezed
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_cost: total_cost == freezed
          ? _value.total_cost
          : total_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      purchase_number: purchase_number == freezed
          ? _value.purchase_number
          : purchase_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: updated_at == freezed
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: status_name == freezed
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      morph_class: morph_class == freezed
          ? _value.morph_class
          : morph_class // ignore: cast_nullable_to_non_nullable
              as String?,
      ammunitions: ammunitions == freezed
          ? _value._ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      guns: guns == freezed
          ? _value._guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      equipements: equipements == freezed
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
      bookable: bookable == freezed
          ? _value.bookable
          : bookable // ignore: cast_nullable_to_non_nullable
              as BookableModel?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingModel implements _BookingModel {
  const _$_BookingModel(
      {this.id,
      this.bookable_id,
      this.name,
      this.client_id,
      this.activity_id,
      this.start,
      this.end,
      this.cell_loc,
      this.status,
      this.duration,
      this.bookable_cost,
      this.total_gun_cost,
      this.total_ammunition_cost,
      this.total_equipment_cost,
      this.tax_included,
      this.sub_total,
      this.gun_discount,
      this.ammunition_discount,
      this.equipment_discount,
      this.total_discount,
      this.total_cost,
      this.purchase_number,
      this.created_at,
      this.updated_at,
      this.status_name,
      this.morph_class,
      final List<AmmunitionsModel>? ammunitions,
      final List<GunModel>? guns,
      final List<EquipmentModel>? equipements,
      this.bookable,
      this.activity})
      : _ammunitions = ammunitions,
        _guns = guns,
        _equipements = equipements;

  factory _$_BookingModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookingModelFromJson(json);

  @override
  final int? id;
  @override
  final int? bookable_id;
  @override
  final String? name;
  @override
  final int? client_id;
  @override
  final int? activity_id;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final int? cell_loc;
  @override
  final int? status;
  @override
  final int? duration;
  @override
  final double? bookable_cost;
  @override
  final double? total_gun_cost;
  @override
  final double? total_ammunition_cost;
  @override
  final double? total_equipment_cost;
  @override
  final double? tax_included;
  @override
  final double? sub_total;
  @override
  final double? gun_discount;
  @override
  final double? ammunition_discount;
  @override
  final double? equipment_discount;
  @override
  final double? total_discount;
  @override
  final double? total_cost;
  @override
  final String? purchase_number;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final String? status_name;
  @override
  final String? morph_class;
  final List<AmmunitionsModel>? _ammunitions;
  @override
  List<AmmunitionsModel>? get ammunitions {
    final value = _ammunitions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GunModel>? _guns;
  @override
  List<GunModel>? get guns {
    final value = _guns;
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
  final BookableModel? bookable;
  @override
  final ActivityModel? activity;

  @override
  String toString() {
    return 'BookingModel(id: $id, bookable_id: $bookable_id, name: $name, client_id: $client_id, activity_id: $activity_id, start: $start, end: $end, cell_loc: $cell_loc, status: $status, duration: $duration, bookable_cost: $bookable_cost, total_gun_cost: $total_gun_cost, total_ammunition_cost: $total_ammunition_cost, total_equipment_cost: $total_equipment_cost, tax_included: $tax_included, sub_total: $sub_total, gun_discount: $gun_discount, ammunition_discount: $ammunition_discount, equipment_discount: $equipment_discount, total_discount: $total_discount, total_cost: $total_cost, purchase_number: $purchase_number, created_at: $created_at, updated_at: $updated_at, status_name: $status_name, morph_class: $morph_class, ammunitions: $ammunitions, guns: $guns, equipements: $equipements, bookable: $bookable, activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.bookable_id, bookable_id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.client_id, client_id) &&
            const DeepCollectionEquality()
                .equals(other.activity_id, activity_id) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.cell_loc, cell_loc) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.bookable_cost, bookable_cost) &&
            const DeepCollectionEquality()
                .equals(other.total_gun_cost, total_gun_cost) &&
            const DeepCollectionEquality()
                .equals(other.total_ammunition_cost, total_ammunition_cost) &&
            const DeepCollectionEquality()
                .equals(other.total_equipment_cost, total_equipment_cost) &&
            const DeepCollectionEquality()
                .equals(other.tax_included, tax_included) &&
            const DeepCollectionEquality().equals(other.sub_total, sub_total) &&
            const DeepCollectionEquality()
                .equals(other.gun_discount, gun_discount) &&
            const DeepCollectionEquality()
                .equals(other.ammunition_discount, ammunition_discount) &&
            const DeepCollectionEquality()
                .equals(other.equipment_discount, equipment_discount) &&
            const DeepCollectionEquality()
                .equals(other.total_discount, total_discount) &&
            const DeepCollectionEquality()
                .equals(other.total_cost, total_cost) &&
            const DeepCollectionEquality()
                .equals(other.purchase_number, purchase_number) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality()
                .equals(other.status_name, status_name) &&
            const DeepCollectionEquality()
                .equals(other.morph_class, morph_class) &&
            const DeepCollectionEquality()
                .equals(other._ammunitions, _ammunitions) &&
            const DeepCollectionEquality().equals(other._guns, _guns) &&
            const DeepCollectionEquality()
                .equals(other._equipements, _equipements) &&
            const DeepCollectionEquality().equals(other.bookable, bookable) &&
            const DeepCollectionEquality().equals(other.activity, activity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(bookable_id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(client_id),
        const DeepCollectionEquality().hash(activity_id),
        const DeepCollectionEquality().hash(start),
        const DeepCollectionEquality().hash(end),
        const DeepCollectionEquality().hash(cell_loc),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(bookable_cost),
        const DeepCollectionEquality().hash(total_gun_cost),
        const DeepCollectionEquality().hash(total_ammunition_cost),
        const DeepCollectionEquality().hash(total_equipment_cost),
        const DeepCollectionEquality().hash(tax_included),
        const DeepCollectionEquality().hash(sub_total),
        const DeepCollectionEquality().hash(gun_discount),
        const DeepCollectionEquality().hash(ammunition_discount),
        const DeepCollectionEquality().hash(equipment_discount),
        const DeepCollectionEquality().hash(total_discount),
        const DeepCollectionEquality().hash(total_cost),
        const DeepCollectionEquality().hash(purchase_number),
        const DeepCollectionEquality().hash(created_at),
        const DeepCollectionEquality().hash(updated_at),
        const DeepCollectionEquality().hash(status_name),
        const DeepCollectionEquality().hash(morph_class),
        const DeepCollectionEquality().hash(_ammunitions),
        const DeepCollectionEquality().hash(_guns),
        const DeepCollectionEquality().hash(_equipements),
        const DeepCollectionEquality().hash(bookable),
        const DeepCollectionEquality().hash(activity)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_BookingModelCopyWith<_$_BookingModel> get copyWith =>
      __$$_BookingModelCopyWithImpl<_$_BookingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingModelToJson(
      this,
    );
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {final int? id,
      final int? bookable_id,
      final String? name,
      final int? client_id,
      final int? activity_id,
      final DateTime? start,
      final DateTime? end,
      final int? cell_loc,
      final int? status,
      final int? duration,
      final double? bookable_cost,
      final double? total_gun_cost,
      final double? total_ammunition_cost,
      final double? total_equipment_cost,
      final double? tax_included,
      final double? sub_total,
      final double? gun_discount,
      final double? ammunition_discount,
      final double? equipment_discount,
      final double? total_discount,
      final double? total_cost,
      final String? purchase_number,
      final DateTime? created_at,
      final DateTime? updated_at,
      final String? status_name,
      final String? morph_class,
      final List<AmmunitionsModel>? ammunitions,
      final List<GunModel>? guns,
      final List<EquipmentModel>? equipements,
      final BookableModel? bookable,
      final ActivityModel? activity}) = _$_BookingModel;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$_BookingModel.fromJson;

  @override
  int? get id;
  @override
  int? get bookable_id;
  @override
  String? get name;
  @override
  int? get client_id;
  @override
  int? get activity_id;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  int? get cell_loc;
  @override
  int? get status;
  @override
  int? get duration;
  @override
  double? get bookable_cost;
  @override
  double? get total_gun_cost;
  @override
  double? get total_ammunition_cost;
  @override
  double? get total_equipment_cost;
  @override
  double? get tax_included;
  @override
  double? get sub_total;
  @override
  double? get gun_discount;
  @override
  double? get ammunition_discount;
  @override
  double? get equipment_discount;
  @override
  double? get total_discount;
  @override
  double? get total_cost;
  @override
  String? get purchase_number;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  String? get status_name;
  @override
  String? get morph_class;
  @override
  List<AmmunitionsModel>? get ammunitions;
  @override
  List<GunModel>? get guns;
  @override
  List<EquipmentModel>? get equipements;
  @override
  BookableModel? get bookable;
  @override
  ActivityModel? get activity;
  @override
  @JsonKey(ignore: true)
  _$$_BookingModelCopyWith<_$_BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
