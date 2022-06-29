// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'caliber_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaliberModel _$CaliberModelFromJson(Map<String, dynamic> json) {
  return _CaliberModel.fromJson(json);
}

/// @nodoc
mixin _$CaliberModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get metric => throw _privateConstructorUsedError;
  String? get typicalBulletDiameter => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaliberModelCopyWith<CaliberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaliberModelCopyWith<$Res> {
  factory $CaliberModelCopyWith(
          CaliberModel value, $Res Function(CaliberModel) then) =
      _$CaliberModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? name,
      String? metric,
      String? typicalBulletDiameter,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$CaliberModelCopyWithImpl<$Res> implements $CaliberModelCopyWith<$Res> {
  _$CaliberModelCopyWithImpl(this._value, this._then);

  final CaliberModel _value;
  // ignore: unused_field
  final $Res Function(CaliberModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? metric = freezed,
    Object? typicalBulletDiameter = freezed,
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
      metric: metric == freezed
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String?,
      typicalBulletDiameter: typicalBulletDiameter == freezed
          ? _value.typicalBulletDiameter
          : typicalBulletDiameter // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_CaliberModelCopyWith<$Res>
    implements $CaliberModelCopyWith<$Res> {
  factory _$$_CaliberModelCopyWith(
          _$_CaliberModel value, $Res Function(_$_CaliberModel) then) =
      __$$_CaliberModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? name,
      String? metric,
      String? typicalBulletDiameter,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_CaliberModelCopyWithImpl<$Res>
    extends _$CaliberModelCopyWithImpl<$Res>
    implements _$$_CaliberModelCopyWith<$Res> {
  __$$_CaliberModelCopyWithImpl(
      _$_CaliberModel _value, $Res Function(_$_CaliberModel) _then)
      : super(_value, (v) => _then(v as _$_CaliberModel));

  @override
  _$_CaliberModel get _value => super._value as _$_CaliberModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? metric = freezed,
    Object? typicalBulletDiameter = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_CaliberModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      metric: metric == freezed
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String?,
      typicalBulletDiameter: typicalBulletDiameter == freezed
          ? _value.typicalBulletDiameter
          : typicalBulletDiameter // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_CaliberModel with DiagnosticableTreeMixin implements _CaliberModel {
  const _$_CaliberModel(
      {this.id,
      this.name,
      this.metric,
      this.typicalBulletDiameter,
      this.createdAt,
      this.updatedAt});

  factory _$_CaliberModel.fromJson(Map<String, dynamic> json) =>
      _$$_CaliberModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? metric;
  @override
  final String? typicalBulletDiameter;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CaliberModel(id: $id, name: $name, metric: $metric, typicalBulletDiameter: $typicalBulletDiameter, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CaliberModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('metric', metric))
      ..add(DiagnosticsProperty('typicalBulletDiameter', typicalBulletDiameter))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaliberModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.metric, metric) &&
            const DeepCollectionEquality()
                .equals(other.typicalBulletDiameter, typicalBulletDiameter) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(metric),
      const DeepCollectionEquality().hash(typicalBulletDiameter),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$$_CaliberModelCopyWith<_$_CaliberModel> get copyWith =>
      __$$_CaliberModelCopyWithImpl<_$_CaliberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaliberModelToJson(this);
  }
}

abstract class _CaliberModel implements CaliberModel {
  const factory _CaliberModel(
      {final int? id,
      final String? name,
      final String? metric,
      final String? typicalBulletDiameter,
      final String? createdAt,
      final String? updatedAt}) = _$_CaliberModel;

  factory _CaliberModel.fromJson(Map<String, dynamic> json) =
      _$_CaliberModel.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get metric => throw _privateConstructorUsedError;
  @override
  String? get typicalBulletDiameter => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  String? get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CaliberModelCopyWith<_$_CaliberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
