// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map<String, dynamic> json) =>
    _$_TransactionModel(
      id: json['id'] as int?,
      client_id: json['client_id'] as int?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      telephone: json['telephone'] as String?,
      zipcode: json['zipcode'] as String?,
      package_name: json['package_name'] as String?,
      purchase_token: json['purchase_token'] as String?,
      uuid: json['uuid'] as int?,
      transaction_id: json['transaction_id'] as int?,
      booking_id: json['booking_id'] as int?,
      client_subscription_id: json['client_subscription_id'] as int?,
      subscription_name: json['subscription_name'] as String?,
      ammunition_discount: (json['ammunition_discount'] as num?)?.toDouble(),
      equipment_discount: (json['equipment_discount'] as num?)?.toDouble(),
      gun_discount: (json['gun_discount'] as num?)?.toDouble(),
      price_per_hour: (json['price_per_hour'] as num?)?.toDouble(),
      ook_cost: (json['ook_cost'] as num?)?.toDouble(),
      total_gun_cost: (json['total_gun_cost'] as num?)?.toDouble(),
      total_ammunition_cost:
          (json['total_ammunition_cost'] as num?)?.toDouble(),
      total_equipment_cost: (json['total_equipment_cost'] as num?)?.toDouble(),
      sub_total: (json['sub_total'] as num?)?.toDouble(),
      total_discount: (json['total_discount'] as num?)?.toDouble(),
      purchase_number: json['purchase_number'] as String?,
      purchase_name: json['purchase_name'] as String?,
      status: json['status'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      tax_included: (json['tax_included'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      reference_number: json['reference_number'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client_id': instance.client_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'address': instance.address,
      'city': instance.city,
      'telephone': instance.telephone,
      'zipcode': instance.zipcode,
      'package_name': instance.package_name,
      'purchase_token': instance.purchase_token,
      'uuid': instance.uuid,
      'transaction_id': instance.transaction_id,
      'booking_id': instance.booking_id,
      'client_subscription_id': instance.client_subscription_id,
      'subscription_name': instance.subscription_name,
      'ammunition_discount': instance.ammunition_discount,
      'equipment_discount': instance.equipment_discount,
      'gun_discount': instance.gun_discount,
      'price_per_hour': instance.price_per_hour,
      'ook_cost': instance.ook_cost,
      'total_gun_cost': instance.total_gun_cost,
      'total_ammunition_cost': instance.total_ammunition_cost,
      'total_equipment_cost': instance.total_equipment_cost,
      'sub_total': instance.sub_total,
      'total_discount': instance.total_discount,
      'purchase_number': instance.purchase_number,
      'purchase_name': instance.purchase_name,
      'status': instance.status,
      'price': instance.price,
      'tax_included': instance.tax_included,
      'tax': instance.tax,
      'reference_number': instance.reference_number,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
    };
