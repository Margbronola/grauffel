// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentTypeModel _$DocumentTypeModelFromJson(Map<String, dynamic> json) {
  return _DocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  int? get ismandatory => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentTypeModelCopyWith<DocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentTypeModelCopyWith<$Res> {
  factory $DocumentTypeModelCopyWith(
          DocumentTypeModel value, $Res Function(DocumentTypeModel) then) =
      _$DocumentTypeModelCopyWithImpl<$Res, DocumentTypeModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? type,
      int? ismandatory,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class _$DocumentTypeModelCopyWithImpl<$Res, $Val extends DocumentTypeModel>
    implements $DocumentTypeModelCopyWith<$Res> {
  _$DocumentTypeModelCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? ismandatory = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      ismandatory: freezed == ismandatory
          ? _value.ismandatory
          : ismandatory // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_DocumentTypeModelCopyWith<$Res>
    implements $DocumentTypeModelCopyWith<$Res> {
  factory _$$_DocumentTypeModelCopyWith(_$_DocumentTypeModel value,
          $Res Function(_$_DocumentTypeModel) then) =
      __$$_DocumentTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      int? type,
      int? ismandatory,
      DateTime? created_at,
      DateTime? updated_at});
}

/// @nodoc
class __$$_DocumentTypeModelCopyWithImpl<$Res>
    extends _$DocumentTypeModelCopyWithImpl<$Res, _$_DocumentTypeModel>
    implements _$$_DocumentTypeModelCopyWith<$Res> {
  __$$_DocumentTypeModelCopyWithImpl(
      _$_DocumentTypeModel _value, $Res Function(_$_DocumentTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? ismandatory = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$_DocumentTypeModel(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      ismandatory: freezed == ismandatory
          ? _value.ismandatory
          : ismandatory // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$_DocumentTypeModel implements _DocumentTypeModel {
  const _$_DocumentTypeModel(
      {this.id,
      this.name,
      this.description,
      this.type,
      this.ismandatory,
      this.created_at,
      this.updated_at});

  factory _$_DocumentTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? type;
  @override
  final int? ismandatory;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;

  @override
  String toString() {
    return 'DocumentTypeModel(id: $id, name: $name, description: $description, type: $type, ismandatory: $ismandatory, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ismandatory, ismandatory) ||
                other.ismandatory == ismandatory) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, type,
      ismandatory, created_at, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentTypeModelCopyWith<_$_DocumentTypeModel> get copyWith =>
      __$$_DocumentTypeModelCopyWithImpl<_$_DocumentTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentTypeModelToJson(
      this,
    );
  }
}

abstract class _DocumentTypeModel implements DocumentTypeModel {
  const factory _DocumentTypeModel(
      {final int? id,
      final String? name,
      final String? description,
      final int? type,
      final int? ismandatory,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$_DocumentTypeModel;

  factory _DocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$_DocumentTypeModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get type;
  @override
  int? get ismandatory;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentTypeModelCopyWith<_$_DocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
