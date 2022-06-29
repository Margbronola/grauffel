// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandTypeModel _$BrandTypeModelFromJson(Map<String, dynamic> json) {
  return _BrandTypeModel.fromJson(json);
}

/// @nodoc
mixin _$BrandTypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandTypeModelCopyWith<BrandTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandTypeModelCopyWith<$Res> {
  factory $BrandTypeModelCopyWith(
          BrandTypeModel value, $Res Function(BrandTypeModel) then) =
      _$BrandTypeModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? slug,
      int? status,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$BrandTypeModelCopyWithImpl<$Res>
    implements $BrandTypeModelCopyWith<$Res> {
  _$BrandTypeModelCopyWithImpl(this._value, this._then);

  final BrandTypeModel _value;
  // ignore: unused_field
  final $Res Function(BrandTypeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BrandTypeModelCopyWith<$Res>
    implements $BrandTypeModelCopyWith<$Res> {
  factory _$$_BrandTypeModelCopyWith(
          _$_BrandTypeModel value, $Res Function(_$_BrandTypeModel) then) =
      __$$_BrandTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? slug,
      int? status,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_BrandTypeModelCopyWithImpl<$Res>
    extends _$BrandTypeModelCopyWithImpl<$Res>
    implements _$$_BrandTypeModelCopyWith<$Res> {
  __$$_BrandTypeModelCopyWithImpl(
      _$_BrandTypeModel _value, $Res Function(_$_BrandTypeModel) _then)
      : super(_value, (v) => _then(v as _$_BrandTypeModel));

  @override
  _$_BrandTypeModel get _value => super._value as _$_BrandTypeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_BrandTypeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandTypeModel
    with DiagnosticableTreeMixin
    implements _BrandTypeModel {
  const _$_BrandTypeModel(
      {this.id,
      this.name,
      this.slug,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory _$_BrandTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final int? status;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BrandTypeModel(id: $id, name: $name, slug: $slug, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BrandTypeModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('slug', slug))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandTypeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_BrandTypeModelCopyWith<_$_BrandTypeModel> get copyWith =>
      __$$_BrandTypeModelCopyWithImpl<_$_BrandTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandTypeModelToJson(this);
  }
}

abstract class _BrandTypeModel implements BrandTypeModel {
  const factory _BrandTypeModel(
      {final int? id,
      final String? name,
      final String? slug,
      final int? status,
      final String? createdAt,
      final String? updatedAt}) = _$_BrandTypeModel;

  factory _BrandTypeModel.fromJson(Map<String, dynamic> json) =
      _$_BrandTypeModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  String? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BrandTypeModelCopyWith<_$_BrandTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
