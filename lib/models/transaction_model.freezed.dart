// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionModel {
  int? get id => throw _privateConstructorUsedError;
  int? get client_id => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get telephone => throw _privateConstructorUsedError;
  String? get zipcode => throw _privateConstructorUsedError;
  String? get package_name => throw _privateConstructorUsedError;
  String? get purchase_token => throw _privateConstructorUsedError;
  int? get uuid => throw _privateConstructorUsedError;
  int? get transaction_id => throw _privateConstructorUsedError;
  int? get booking_id => throw _privateConstructorUsedError;
  int? get client_subscription_id => throw _privateConstructorUsedError;
  String? get subscription_name => throw _privateConstructorUsedError;
  double? get ammunition_discount => throw _privateConstructorUsedError;
  double? get equipment_discount => throw _privateConstructorUsedError;
  double? get gun_discount => throw _privateConstructorUsedError;
  double? get price_per_hour => throw _privateConstructorUsedError;
  double? get ook_cost => throw _privateConstructorUsedError;
  double? get total_gun_cost => throw _privateConstructorUsedError;
  double? get total_ammunition_cost => throw _privateConstructorUsedError;
  double? get total_equipment_cost => throw _privateConstructorUsedError;
  double? get sub_total => throw _privateConstructorUsedError;
  double? get total_discount => throw _privateConstructorUsedError;
  String? get purchase_number => throw _privateConstructorUsedError;
  String? get purchase_name =>
      throw _privateConstructorUsedError; // payment_method
// payment_method_type
  int? get status => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get tax_included => throw _privateConstructorUsedError;
  double? get tax => throw _privateConstructorUsedError; // payment_status
  String? get reference_number => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res, TransactionModel>;
  @useResult
  $Res call(
      {int? id,
      int? client_id,
      String? first_name,
      String? last_name,
      String? email,
      String? address,
      String? city,
      String? telephone,
      String? zipcode,
      String? package_name,
      String? purchase_token,
      int? uuid,
      int? transaction_id,
      int? booking_id,
      int? client_subscription_id,
      String? subscription_name,
      double? ammunition_discount,
      double? equipment_discount,
      double? gun_discount,
      double? price_per_hour,
      double? ook_cost,
      double? total_gun_cost,
      double? total_ammunition_cost,
      double? total_equipment_cost,
      double? sub_total,
      double? total_discount,
      String? purchase_number,
      String? purchase_name,
      int? status,
      double? price,
      double? tax_included,
      double? tax,
      String? reference_number,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res, $Val extends TransactionModel>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? telephone = freezed,
    Object? zipcode = freezed,
    Object? package_name = freezed,
    Object? purchase_token = freezed,
    Object? uuid = freezed,
    Object? transaction_id = freezed,
    Object? booking_id = freezed,
    Object? client_subscription_id = freezed,
    Object? subscription_name = freezed,
    Object? ammunition_discount = freezed,
    Object? equipment_discount = freezed,
    Object? gun_discount = freezed,
    Object? price_per_hour = freezed,
    Object? ook_cost = freezed,
    Object? total_gun_cost = freezed,
    Object? total_ammunition_cost = freezed,
    Object? total_equipment_cost = freezed,
    Object? sub_total = freezed,
    Object? total_discount = freezed,
    Object? purchase_number = freezed,
    Object? purchase_name = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? tax_included = freezed,
    Object? tax = freezed,
    Object? reference_number = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      package_name: freezed == package_name
          ? _value.package_name
          : package_name // ignore: cast_nullable_to_non_nullable
              as String?,
      purchase_token: freezed == purchase_token
          ? _value.purchase_token
          : purchase_token // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_id: freezed == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as int?,
      booking_id: freezed == booking_id
          ? _value.booking_id
          : booking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_subscription_id: freezed == client_subscription_id
          ? _value.client_subscription_id
          : client_subscription_id // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription_name: freezed == subscription_name
          ? _value.subscription_name
          : subscription_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ammunition_discount: freezed == ammunition_discount
          ? _value.ammunition_discount
          : ammunition_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      equipment_discount: freezed == equipment_discount
          ? _value.equipment_discount
          : equipment_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      gun_discount: freezed == gun_discount
          ? _value.gun_discount
          : gun_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      price_per_hour: freezed == price_per_hour
          ? _value.price_per_hour
          : price_per_hour // ignore: cast_nullable_to_non_nullable
              as double?,
      ook_cost: freezed == ook_cost
          ? _value.ook_cost
          : ook_cost // ignore: cast_nullable_to_non_nullable
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
      sub_total: freezed == sub_total
          ? _value.sub_total
          : sub_total // ignore: cast_nullable_to_non_nullable
              as double?,
      total_discount: freezed == total_discount
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      purchase_number: freezed == purchase_number
          ? _value.purchase_number
          : purchase_number // ignore: cast_nullable_to_non_nullable
              as String?,
      purchase_name: freezed == purchase_name
          ? _value.purchase_name
          : purchase_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      tax_included: freezed == tax_included
          ? _value.tax_included
          : tax_included // ignore: cast_nullable_to_non_nullable
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      reference_number: freezed == reference_number
          ? _value.reference_number
          : reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$$_TransactionModelCopyWith(
          _$_TransactionModel value, $Res Function(_$_TransactionModel) then) =
      __$$_TransactionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? client_id,
      String? first_name,
      String? last_name,
      String? email,
      String? address,
      String? city,
      String? telephone,
      String? zipcode,
      String? package_name,
      String? purchase_token,
      int? uuid,
      int? transaction_id,
      int? booking_id,
      int? client_subscription_id,
      String? subscription_name,
      double? ammunition_discount,
      double? equipment_discount,
      double? gun_discount,
      double? price_per_hour,
      double? ook_cost,
      double? total_gun_cost,
      double? total_ammunition_cost,
      double? total_equipment_cost,
      double? sub_total,
      double? total_discount,
      String? purchase_number,
      String? purchase_name,
      int? status,
      double? price,
      double? tax_included,
      double? tax,
      String? reference_number,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class __$$_TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res, _$_TransactionModel>
    implements _$$_TransactionModelCopyWith<$Res> {
  __$$_TransactionModelCopyWithImpl(
      _$_TransactionModel _value, $Res Function(_$_TransactionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? telephone = freezed,
    Object? zipcode = freezed,
    Object? package_name = freezed,
    Object? purchase_token = freezed,
    Object? uuid = freezed,
    Object? transaction_id = freezed,
    Object? booking_id = freezed,
    Object? client_subscription_id = freezed,
    Object? subscription_name = freezed,
    Object? ammunition_discount = freezed,
    Object? equipment_discount = freezed,
    Object? gun_discount = freezed,
    Object? price_per_hour = freezed,
    Object? ook_cost = freezed,
    Object? total_gun_cost = freezed,
    Object? total_ammunition_cost = freezed,
    Object? total_equipment_cost = freezed,
    Object? sub_total = freezed,
    Object? total_discount = freezed,
    Object? purchase_number = freezed,
    Object? purchase_name = freezed,
    Object? status = freezed,
    Object? price = freezed,
    Object? tax_included = freezed,
    Object? tax = freezed,
    Object? reference_number = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_TransactionModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      first_name: freezed == first_name
          ? _value.first_name
          : first_name // ignore: cast_nullable_to_non_nullable
              as String?,
      last_name: freezed == last_name
          ? _value.last_name
          : last_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      telephone: freezed == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      package_name: freezed == package_name
          ? _value.package_name
          : package_name // ignore: cast_nullable_to_non_nullable
              as String?,
      purchase_token: freezed == purchase_token
          ? _value.purchase_token
          : purchase_token // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
      transaction_id: freezed == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as int?,
      booking_id: freezed == booking_id
          ? _value.booking_id
          : booking_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_subscription_id: freezed == client_subscription_id
          ? _value.client_subscription_id
          : client_subscription_id // ignore: cast_nullable_to_non_nullable
              as int?,
      subscription_name: freezed == subscription_name
          ? _value.subscription_name
          : subscription_name // ignore: cast_nullable_to_non_nullable
              as String?,
      ammunition_discount: freezed == ammunition_discount
          ? _value.ammunition_discount
          : ammunition_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      equipment_discount: freezed == equipment_discount
          ? _value.equipment_discount
          : equipment_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      gun_discount: freezed == gun_discount
          ? _value.gun_discount
          : gun_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      price_per_hour: freezed == price_per_hour
          ? _value.price_per_hour
          : price_per_hour // ignore: cast_nullable_to_non_nullable
              as double?,
      ook_cost: freezed == ook_cost
          ? _value.ook_cost
          : ook_cost // ignore: cast_nullable_to_non_nullable
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
      sub_total: freezed == sub_total
          ? _value.sub_total
          : sub_total // ignore: cast_nullable_to_non_nullable
              as double?,
      total_discount: freezed == total_discount
          ? _value.total_discount
          : total_discount // ignore: cast_nullable_to_non_nullable
              as double?,
      purchase_number: freezed == purchase_number
          ? _value.purchase_number
          : purchase_number // ignore: cast_nullable_to_non_nullable
              as String?,
      purchase_name: freezed == purchase_name
          ? _value.purchase_name
          : purchase_name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      tax_included: freezed == tax_included
          ? _value.tax_included
          : tax_included // ignore: cast_nullable_to_non_nullable
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      reference_number: freezed == reference_number
          ? _value.reference_number
          : reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel implements _TransactionModel {
  const _$_TransactionModel(
      {this.id,
      this.client_id,
      this.first_name,
      this.last_name,
      this.email,
      this.address,
      this.city,
      this.telephone,
      this.zipcode,
      this.package_name,
      this.purchase_token,
      this.uuid,
      this.transaction_id,
      this.booking_id,
      this.client_subscription_id,
      this.subscription_name,
      this.ammunition_discount,
      this.equipment_discount,
      this.gun_discount,
      this.price_per_hour,
      this.ook_cost,
      this.total_gun_cost,
      this.total_ammunition_cost,
      this.total_equipment_cost,
      this.sub_total,
      this.total_discount,
      this.purchase_number,
      this.purchase_name,
      this.status,
      this.price,
      this.tax_included,
      this.tax,
      this.reference_number,
      this.created_at,
      this.updated_at});

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  final int? id;
  @override
  final int? client_id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? telephone;
  @override
  final String? zipcode;
  @override
  final String? package_name;
  @override
  final String? purchase_token;
  @override
  final int? uuid;
  @override
  final int? transaction_id;
  @override
  final int? booking_id;
  @override
  final int? client_subscription_id;
  @override
  final String? subscription_name;
  @override
  final double? ammunition_discount;
  @override
  final double? equipment_discount;
  @override
  final double? gun_discount;
  @override
  final double? price_per_hour;
  @override
  final double? ook_cost;
  @override
  final double? total_gun_cost;
  @override
  final double? total_ammunition_cost;
  @override
  final double? total_equipment_cost;
  @override
  final double? sub_total;
  @override
  final double? total_discount;
  @override
  final String? purchase_number;
  @override
  final String? purchase_name;
// payment_method
// payment_method_type
  @override
  final int? status;
  @override
  final double? price;
  @override
  final double? tax_included;
  @override
  final double? tax;
// payment_status
  @override
  final String? reference_number;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'TransactionModel(id: $id, client_id: $client_id, first_name: $first_name, last_name: $last_name, email: $email, address: $address, city: $city, telephone: $telephone, zipcode: $zipcode, package_name: $package_name, purchase_token: $purchase_token, uuid: $uuid, transaction_id: $transaction_id, booking_id: $booking_id, client_subscription_id: $client_subscription_id, subscription_name: $subscription_name, ammunition_discount: $ammunition_discount, equipment_discount: $equipment_discount, gun_discount: $gun_discount, price_per_hour: $price_per_hour, ook_cost: $ook_cost, total_gun_cost: $total_gun_cost, total_ammunition_cost: $total_ammunition_cost, total_equipment_cost: $total_equipment_cost, sub_total: $sub_total, total_discount: $total_discount, purchase_number: $purchase_number, purchase_name: $purchase_name, status: $status, price: $price, tax_included: $tax_included, tax: $tax, reference_number: $reference_number, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.package_name, package_name) ||
                other.package_name == package_name) &&
            (identical(other.purchase_token, purchase_token) ||
                other.purchase_token == purchase_token) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id) &&
            (identical(other.booking_id, booking_id) ||
                other.booking_id == booking_id) &&
            (identical(other.client_subscription_id, client_subscription_id) ||
                other.client_subscription_id == client_subscription_id) &&
            (identical(other.subscription_name, subscription_name) ||
                other.subscription_name == subscription_name) &&
            (identical(other.ammunition_discount, ammunition_discount) ||
                other.ammunition_discount == ammunition_discount) &&
            (identical(other.equipment_discount, equipment_discount) ||
                other.equipment_discount == equipment_discount) &&
            (identical(other.gun_discount, gun_discount) ||
                other.gun_discount == gun_discount) &&
            (identical(other.price_per_hour, price_per_hour) ||
                other.price_per_hour == price_per_hour) &&
            (identical(other.ook_cost, ook_cost) ||
                other.ook_cost == ook_cost) &&
            (identical(other.total_gun_cost, total_gun_cost) ||
                other.total_gun_cost == total_gun_cost) &&
            (identical(other.total_ammunition_cost, total_ammunition_cost) ||
                other.total_ammunition_cost == total_ammunition_cost) &&
            (identical(other.total_equipment_cost, total_equipment_cost) ||
                other.total_equipment_cost == total_equipment_cost) &&
            (identical(other.sub_total, sub_total) ||
                other.sub_total == sub_total) &&
            (identical(other.total_discount, total_discount) ||
                other.total_discount == total_discount) &&
            (identical(other.purchase_number, purchase_number) ||
                other.purchase_number == purchase_number) &&
            (identical(other.purchase_name, purchase_name) ||
                other.purchase_name == purchase_name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax_included, tax_included) ||
                other.tax_included == tax_included) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.reference_number, reference_number) ||
                other.reference_number == reference_number) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        client_id,
        first_name,
        last_name,
        email,
        address,
        city,
        telephone,
        zipcode,
        package_name,
        purchase_token,
        uuid,
        transaction_id,
        booking_id,
        client_subscription_id,
        subscription_name,
        ammunition_discount,
        equipment_discount,
        gun_discount,
        price_per_hour,
        ook_cost,
        total_gun_cost,
        total_ammunition_cost,
        total_equipment_cost,
        sub_total,
        total_discount,
        purchase_number,
        purchase_name,
        status,
        price,
        tax_included,
        tax,
        reference_number,
        created_at,
        updated_at
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      __$$_TransactionModelCopyWithImpl<_$_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(
      this,
    );
  }
}

abstract class _TransactionModel implements TransactionModel {
  const factory _TransactionModel(
      {final int? id,
      final int? client_id,
      final String? first_name,
      final String? last_name,
      final String? email,
      final String? address,
      final String? city,
      final String? telephone,
      final String? zipcode,
      final String? package_name,
      final String? purchase_token,
      final int? uuid,
      final int? transaction_id,
      final int? booking_id,
      final int? client_subscription_id,
      final String? subscription_name,
      final double? ammunition_discount,
      final double? equipment_discount,
      final double? gun_discount,
      final double? price_per_hour,
      final double? ook_cost,
      final double? total_gun_cost,
      final double? total_ammunition_cost,
      final double? total_equipment_cost,
      final double? sub_total,
      final double? total_discount,
      final String? purchase_number,
      final String? purchase_name,
      final int? status,
      final double? price,
      final double? tax_included,
      final double? tax,
      final String? reference_number,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$_TransactionModel;

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  int? get id;
  @override
  int? get client_id;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get email;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get telephone;
  @override
  String? get zipcode;
  @override
  String? get package_name;
  @override
  String? get purchase_token;
  @override
  int? get uuid;
  @override
  int? get transaction_id;
  @override
  int? get booking_id;
  @override
  int? get client_subscription_id;
  @override
  String? get subscription_name;
  @override
  double? get ammunition_discount;
  @override
  double? get equipment_discount;
  @override
  double? get gun_discount;
  @override
  double? get price_per_hour;
  @override
  double? get ook_cost;
  @override
  double? get total_gun_cost;
  @override
  double? get total_ammunition_cost;
  @override
  double? get total_equipment_cost;
  @override
  double? get sub_total;
  @override
  double? get total_discount;
  @override
  String? get purchase_number;
  @override
  String? get purchase_name;
  @override // payment_method
// payment_method_type
  int? get status;
  @override
  double? get price;
  @override
  double? get tax_included;
  @override
  double? get tax;
  @override // payment_status
  String? get reference_number;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionModelCopyWith<_$_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
