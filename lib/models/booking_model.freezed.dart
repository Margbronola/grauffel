// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String? get description => throw _privateConstructorUsedError;
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
  AdminModel? get admin => throw _privateConstructorUsedError;
  List<AmmunitionsModel>? get ammunitions => throw _privateConstructorUsedError;
  List<GunModel>? get guns => throw _privateConstructorUsedError;
  List<EquipmentModel>? get equipements => throw _privateConstructorUsedError;
  ActivityModel? get bookable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {int? id,
      int? bookable_id,
      String? name,
      int? client_id,
      int? activity_id,
      String? description,
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
      AdminModel? admin,
      List<AmmunitionsModel>? ammunitions,
      List<GunModel>? guns,
      List<EquipmentModel>? equipements,
      ActivityModel? bookable});

  $AdminModelCopyWith<$Res>? get admin;
  $ActivityModelCopyWith<$Res>? get bookable;
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookable_id = freezed,
    Object? name = freezed,
    Object? client_id = freezed,
    Object? activity_id = freezed,
    Object? description = freezed,
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
    Object? admin = freezed,
    Object? ammunitions = freezed,
    Object? guns = freezed,
    Object? equipements = freezed,
    Object? bookable = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_id: freezed == bookable_id
          ? _value.bookable_id
          : bookable_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      activity_id: freezed == activity_id
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cell_loc: freezed == cell_loc
          ? _value.cell_loc
          : cell_loc // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_cost: freezed == bookable_cost
          ? _value.bookable_cost
          : bookable_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_gun_cost: freezed == total_gun_cost
          ? _value.total_gun_cost
          : total_gun_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_ammunition_cost: freezed == total_ammunition_cost
          ? _value.total_ammunition_cost
          : total_ammunition_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_equipment_cost: freezed == total_equipment_cost
          ? _value.total_equipment_cost
          : total_equipment_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      tax_included: freezed == tax_included
          ? _value.tax_included
          : tax_included // ignore: cast_nullable_to_non_nullable
              as double?,
      sub_total: freezed == sub_total
          ? _value.sub_total
          : sub_total // ignore: cast_nullable_to_non_nullable
              as double?,
      gun_discount: freezed == gun_discount
          ? _value.gun_discount
          : gun_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      ammunition_discount: freezed == ammunition_discount
          ? _value.ammunition_discount
          : ammunition_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      equipment_discount: freezed == equipment_discount
          ? _value.equipment_discount
          : equipment_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_discount: freezed == total_discount
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_cost: freezed == total_cost
          ? _value.total_cost
          : total_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      purchase_number: freezed == purchase_number
          ? _value.purchase_number
          : purchase_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      morph_class: freezed == morph_class
          ? _value.morph_class
          : morph_class // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as AdminModel?,
      ammunitions: freezed == ammunitions
          ? _value.ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      guns: freezed == guns
          ? _value.guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      equipements: freezed == equipements
          ? _value.equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
      bookable: freezed == bookable
          ? _value.bookable
          : bookable // ignore: cast_nullable_to_non_nullable
              as ActivityModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminModelCopyWith<$Res>? get admin {
    if (_value.admin == null) {
      return null;
    }

    return $AdminModelCopyWith<$Res>(_value.admin!, (value) {
      return _then(_value.copyWith(admin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityModelCopyWith<$Res>? get bookable {
    if (_value.bookable == null) {
      return null;
    }

    return $ActivityModelCopyWith<$Res>(_value.bookable!, (value) {
      return _then(_value.copyWith(bookable: value) as $Val);
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
  @useResult
  $Res call(
      {int? id,
      int? bookable_id,
      String? name,
      int? client_id,
      int? activity_id,
      String? description,
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
      AdminModel? admin,
      List<AmmunitionsModel>? ammunitions,
      List<GunModel>? guns,
      List<EquipmentModel>? equipements,
      ActivityModel? bookable});

  @override
  $AdminModelCopyWith<$Res>? get admin;
  @override
  $ActivityModelCopyWith<$Res>? get bookable;
}

/// @nodoc
class __$$_BookingModelCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$_BookingModel>
    implements _$$_BookingModelCopyWith<$Res> {
  __$$_BookingModelCopyWithImpl(
      _$_BookingModel _value, $Res Function(_$_BookingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookable_id = freezed,
    Object? name = freezed,
    Object? client_id = freezed,
    Object? activity_id = freezed,
    Object? description = freezed,
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
    Object? admin = freezed,
    Object? ammunitions = freezed,
    Object? guns = freezed,
    Object? equipements = freezed,
    Object? bookable = freezed,
  }) {
    return _then(_$_BookingModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_id: freezed == bookable_id
          ? _value.bookable_id
          : bookable_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      activity_id: freezed == activity_id
          ? _value.activity_id
          : activity_id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cell_loc: freezed == cell_loc
          ? _value.cell_loc
          : cell_loc // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      bookable_cost: freezed == bookable_cost
          ? _value.bookable_cost
          : bookable_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_gun_cost: freezed == total_gun_cost
          ? _value.total_gun_cost
          : total_gun_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_ammunition_cost: freezed == total_ammunition_cost
          ? _value.total_ammunition_cost
          : total_ammunition_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      total_equipment_cost: freezed == total_equipment_cost
          ? _value.total_equipment_cost
          : total_equipment_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      tax_included: freezed == tax_included
          ? _value.tax_included
          : tax_included // ignore: cast_nullable_to_non_nullable
              as double?,
      sub_total: freezed == sub_total
          ? _value.sub_total
          : sub_total // ignore: cast_nullable_to_non_nullable
              as double?,
      gun_discount: freezed == gun_discount
          ? _value.gun_discount
          : gun_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      ammunition_discount: freezed == ammunition_discount
          ? _value.ammunition_discount
          : ammunition_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      equipment_discount: freezed == equipment_discount
          ? _value.equipment_discount
          : equipment_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_discount: freezed == total_discount
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total_cost: freezed == total_cost
          ? _value.total_cost
          : total_cost // ignore: cast_nullable_to_non_nullable
              as double?,
      purchase_number: freezed == purchase_number
          ? _value.purchase_number
          : purchase_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status_name: freezed == status_name
          ? _value.status_name
          : status_name // ignore: cast_nullable_to_non_nullable
              as String?,
      morph_class: freezed == morph_class
          ? _value.morph_class
          : morph_class // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as AdminModel?,
      ammunitions: freezed == ammunitions
          ? _value._ammunitions
          : ammunitions // ignore: cast_nullable_to_non_nullable
              as List<AmmunitionsModel>?,
      guns: freezed == guns
          ? _value._guns
          : guns // ignore: cast_nullable_to_non_nullable
              as List<GunModel>?,
      equipements: freezed == equipements
          ? _value._equipements
          : equipements // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>?,
      bookable: freezed == bookable
          ? _value.bookable
          : bookable // ignore: cast_nullable_to_non_nullable
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
      this.description,
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
      this.admin,
      final List<AmmunitionsModel>? ammunitions,
      final List<GunModel>? guns,
      final List<EquipmentModel>? equipements,
      this.bookable})
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
  final String? description;
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
  @override
  final AdminModel? admin;
  final List<AmmunitionsModel>? _ammunitions;
  @override
  List<AmmunitionsModel>? get ammunitions {
    final value = _ammunitions;
    if (value == null) return null;
    if (_ammunitions is EqualUnmodifiableListView) return _ammunitions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GunModel>? _guns;
  @override
  List<GunModel>? get guns {
    final value = _guns;
    if (value == null) return null;
    if (_guns is EqualUnmodifiableListView) return _guns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EquipmentModel>? _equipements;
  @override
  List<EquipmentModel>? get equipements {
    final value = _equipements;
    if (value == null) return null;
    if (_equipements is EqualUnmodifiableListView) return _equipements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ActivityModel? bookable;

  @override
  String toString() {
    return 'BookingModel(id: $id, bookable_id: $bookable_id, name: $name, client_id: $client_id, activity_id: $activity_id, description: $description, start: $start, end: $end, cell_loc: $cell_loc, status: $status, duration: $duration, bookable_cost: $bookable_cost, total_gun_cost: $total_gun_cost, total_ammunition_cost: $total_ammunition_cost, total_equipment_cost: $total_equipment_cost, tax_included: $tax_included, sub_total: $sub_total, gun_discount: $gun_discount, ammunition_discount: $ammunition_discount, equipment_discount: $equipment_discount, total_discount: $total_discount, total_cost: $total_cost, purchase_number: $purchase_number, created_at: $created_at, updated_at: $updated_at, status_name: $status_name, morph_class: $morph_class, admin: $admin, ammunitions: $ammunitions, guns: $guns, equipements: $equipements, bookable: $bookable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookable_id, bookable_id) ||
                other.bookable_id == bookable_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.activity_id, activity_id) ||
                other.activity_id == activity_id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.cell_loc, cell_loc) ||
                other.cell_loc == cell_loc) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.bookable_cost, bookable_cost) ||
                other.bookable_cost == bookable_cost) &&
            (identical(other.total_gun_cost, total_gun_cost) ||
                other.total_gun_cost == total_gun_cost) &&
            (identical(other.total_ammunition_cost, total_ammunition_cost) ||
                other.total_ammunition_cost == total_ammunition_cost) &&
            (identical(other.total_equipment_cost, total_equipment_cost) ||
                other.total_equipment_cost == total_equipment_cost) &&
            (identical(other.tax_included, tax_included) ||
                other.tax_included == tax_included) &&
            (identical(other.sub_total, sub_total) ||
                other.sub_total == sub_total) &&
            (identical(other.gun_discount, gun_discount) ||
                other.gun_discount == gun_discount) &&
            (identical(other.ammunition_discount, ammunition_discount) ||
                other.ammunition_discount == ammunition_discount) &&
            (identical(other.equipment_discount, equipment_discount) ||
                other.equipment_discount == equipment_discount) &&
            (identical(other.total_discount, total_discount) ||
                other.total_discount == total_discount) &&
            (identical(other.total_cost, total_cost) ||
                other.total_cost == total_cost) &&
            (identical(other.purchase_number, purchase_number) ||
                other.purchase_number == purchase_number) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.status_name, status_name) ||
                other.status_name == status_name) &&
            (identical(other.morph_class, morph_class) ||
                other.morph_class == morph_class) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            const DeepCollectionEquality()
                .equals(other._ammunitions, _ammunitions) &&
            const DeepCollectionEquality().equals(other._guns, _guns) &&
            const DeepCollectionEquality()
                .equals(other._equipements, _equipements) &&
            (identical(other.bookable, bookable) ||
                other.bookable == bookable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        bookable_id,
        name,
        client_id,
        activity_id,
        description,
        start,
        end,
        cell_loc,
        status,
        duration,
        bookable_cost,
        total_gun_cost,
        total_ammunition_cost,
        total_equipment_cost,
        tax_included,
        sub_total,
        gun_discount,
        ammunition_discount,
        equipment_discount,
        total_discount,
        total_cost,
        purchase_number,
        created_at,
        updated_at,
        status_name,
        morph_class,
        admin,
        const DeepCollectionEquality().hash(_ammunitions),
        const DeepCollectionEquality().hash(_guns),
        const DeepCollectionEquality().hash(_equipements),
        bookable
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final String? description,
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
      final AdminModel? admin,
      final List<AmmunitionsModel>? ammunitions,
      final List<GunModel>? guns,
      final List<EquipmentModel>? equipements,
      final ActivityModel? bookable}) = _$_BookingModel;

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
  String? get description;
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
  AdminModel? get admin;
  @override
  List<AmmunitionsModel>? get ammunitions;
  @override
  List<GunModel>? get guns;
  @override
  List<EquipmentModel>? get equipements;
  @override
  ActivityModel? get bookable;
  @override
  @JsonKey(ignore: true)
  _$$_BookingModelCopyWith<_$_BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
