// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  int? get id => throw _privateConstructorUsedError;
  int? get client_id => throw _privateConstructorUsedError;
  int? get client_document_type_id => throw _privateConstructorUsedError;
  String? get image_base64_front => throw _privateConstructorUsedError;
  String? get image_base64_back => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get path2 => throw _privateConstructorUsedError;
  String? get expiration => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  int? get is_valid => throw _privateConstructorUsedError;
  int? get is_new => throw _privateConstructorUsedError;
  int? get is_viewed => throw _privateConstructorUsedError;
  ClientDocumentsTypesModel? get client_document_types =>
      throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
          DocumentModel value, $Res Function(DocumentModel) then) =
      _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call(
      {int? id,
      int? client_id,
      int? client_document_type_id,
      String? image_base64_front,
      String? image_base64_back,
      String? path,
      String? path2,
      String? expiration,
      DateTime? created_at,
      int? is_valid,
      int? is_new,
      int? is_viewed,
      ClientDocumentsTypesModel? client_document_types,
      DateTime? updated_at});

  $ClientDocumentsTypesModelCopyWith<$Res>? get client_document_types;
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? client_document_type_id = freezed,
    Object? image_base64_front = freezed,
    Object? image_base64_back = freezed,
    Object? path = freezed,
    Object? path2 = freezed,
    Object? expiration = freezed,
    Object? created_at = freezed,
    Object? is_valid = freezed,
    Object? is_new = freezed,
    Object? is_viewed = freezed,
    Object? client_document_types = freezed,
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
      client_document_type_id: freezed == client_document_type_id
          ? _value.client_document_type_id
          : client_document_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      image_base64_front: freezed == image_base64_front
          ? _value.image_base64_front
          : image_base64_front // ignore: cast_nullable_to_non_nullable
              as String?,
      image_base64_back: freezed == image_base64_back
          ? _value.image_base64_back
          : image_base64_back // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      path2: freezed == path2
          ? _value.path2
          : path2 // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      is_valid: freezed == is_valid
          ? _value.is_valid
          : is_valid // ignore: cast_nullable_to_non_nullable
              as int?,
      is_new: freezed == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as int?,
      is_viewed: freezed == is_viewed
          ? _value.is_viewed
          : is_viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      client_document_types: freezed == client_document_types
          ? _value.client_document_types
          : client_document_types // ignore: cast_nullable_to_non_nullable
              as ClientDocumentsTypesModel?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClientDocumentsTypesModelCopyWith<$Res>? get client_document_types {
    if (_value.client_document_types == null) {
      return null;
    }

    return $ClientDocumentsTypesModelCopyWith<$Res>(
        _value.client_document_types!, (value) {
      return _then(_value.copyWith(client_document_types: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentModelCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$_DocumentModelCopyWith(
          _$_DocumentModel value, $Res Function(_$_DocumentModel) then) =
      __$$_DocumentModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? client_id,
      int? client_document_type_id,
      String? image_base64_front,
      String? image_base64_back,
      String? path,
      String? path2,
      String? expiration,
      DateTime? created_at,
      int? is_valid,
      int? is_new,
      int? is_viewed,
      ClientDocumentsTypesModel? client_document_types,
      DateTime? updated_at});

  @override
  $ClientDocumentsTypesModelCopyWith<$Res>? get client_document_types;
}

/// @nodoc
class __$$_DocumentModelCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$_DocumentModel>
    implements _$$_DocumentModelCopyWith<$Res> {
  __$$_DocumentModelCopyWithImpl(
      _$_DocumentModel _value, $Res Function(_$_DocumentModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? client_id = freezed,
    Object? client_document_type_id = freezed,
    Object? image_base64_front = freezed,
    Object? image_base64_back = freezed,
    Object? path = freezed,
    Object? path2 = freezed,
    Object? expiration = freezed,
    Object? created_at = freezed,
    Object? is_valid = freezed,
    Object? is_new = freezed,
    Object? is_viewed = freezed,
    Object? client_document_types = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_DocumentModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_id: freezed == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as int?,
      client_document_type_id: freezed == client_document_type_id
          ? _value.client_document_type_id
          : client_document_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      image_base64_front: freezed == image_base64_front
          ? _value.image_base64_front
          : image_base64_front // ignore: cast_nullable_to_non_nullable
              as String?,
      image_base64_back: freezed == image_base64_back
          ? _value.image_base64_back
          : image_base64_back // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      path2: freezed == path2
          ? _value.path2
          : path2 // ignore: cast_nullable_to_non_nullable
              as String?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      is_valid: freezed == is_valid
          ? _value.is_valid
          : is_valid // ignore: cast_nullable_to_non_nullable
              as int?,
      is_new: freezed == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as int?,
      is_viewed: freezed == is_viewed
          ? _value.is_viewed
          : is_viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      client_document_types: freezed == client_document_types
          ? _value.client_document_types
          : client_document_types // ignore: cast_nullable_to_non_nullable
              as ClientDocumentsTypesModel?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentModel implements _DocumentModel {
  const _$_DocumentModel(
      {this.id,
      this.client_id,
      this.client_document_type_id,
      this.image_base64_front,
      this.image_base64_back,
      this.path,
      this.path2,
      this.expiration,
      this.created_at,
      this.is_valid,
      this.is_new,
      this.is_viewed,
      this.client_document_types,
      this.updated_at});

  factory _$_DocumentModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentModelFromJson(json);

  @override
  final int? id;
  @override
  final int? client_id;
  @override
  final int? client_document_type_id;
  @override
  final String? image_base64_front;
  @override
  final String? image_base64_back;
  @override
  final String? path;
  @override
  final String? path2;
  @override
  final String? expiration;
  @override
  final DateTime? created_at;
  @override
  final int? is_valid;
  @override
  final int? is_new;
  @override
  final int? is_viewed;
  @override
  final ClientDocumentsTypesModel? client_document_types;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'DocumentModel(id: $id, client_id: $client_id, client_document_type_id: $client_document_type_id, image_base64_front: $image_base64_front, image_base64_back: $image_base64_back, path: $path, path2: $path2, expiration: $expiration, created_at: $created_at, is_valid: $is_valid, is_new: $is_new, is_viewed: $is_viewed, client_document_types: $client_document_types, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(
                    other.client_document_type_id, client_document_type_id) ||
                other.client_document_type_id == client_document_type_id) &&
            (identical(other.image_base64_front, image_base64_front) ||
                other.image_base64_front == image_base64_front) &&
            (identical(other.image_base64_back, image_base64_back) ||
                other.image_base64_back == image_base64_back) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.path2, path2) || other.path2 == path2) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.is_valid, is_valid) ||
                other.is_valid == is_valid) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.is_viewed, is_viewed) ||
                other.is_viewed == is_viewed) &&
            (identical(other.client_document_types, client_document_types) ||
                other.client_document_types == client_document_types) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      client_id,
      client_document_type_id,
      image_base64_front,
      image_base64_back,
      path,
      path2,
      expiration,
      created_at,
      is_valid,
      is_new,
      is_viewed,
      client_document_types,
      updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentModelCopyWith<_$_DocumentModel> get copyWith =>
      __$$_DocumentModelCopyWithImpl<_$_DocumentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentModelToJson(
      this,
    );
  }
}

abstract class _DocumentModel implements DocumentModel {
  const factory _DocumentModel(
      {final int? id,
      final int? client_id,
      final int? client_document_type_id,
      final String? image_base64_front,
      final String? image_base64_back,
      final String? path,
      final String? path2,
      final String? expiration,
      final DateTime? created_at,
      final int? is_valid,
      final int? is_new,
      final int? is_viewed,
      final ClientDocumentsTypesModel? client_document_types,
      final DateTime? updated_at}) = _$_DocumentModel;

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentModel.fromJson;

  @override
  int? get id;
  @override
  int? get client_id;
  @override
  int? get client_document_type_id;
  @override
  String? get image_base64_front;
  @override
  String? get image_base64_back;
  @override
  String? get path;
  @override
  String? get path2;
  @override
  String? get expiration;
  @override
  DateTime? get created_at;
  @override
  int? get is_valid;
  @override
  int? get is_new;
  @override
  int? get is_viewed;
  @override
  ClientDocumentsTypesModel? get client_document_types;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentModelCopyWith<_$_DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
