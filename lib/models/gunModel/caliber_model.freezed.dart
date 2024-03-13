// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CaliberModelCopyWithImpl<$Res, CaliberModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? metric,
      String? typicalBulletDiameter,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$CaliberModelCopyWithImpl<$Res, $Val extends CaliberModel>
    implements $CaliberModelCopyWith<$Res> {
  _$CaliberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String?,
      typicalBulletDiameter: freezed == typicalBulletDiameter
          ? _value.typicalBulletDiameter
          : typicalBulletDiameter // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaliberModelCopyWith<$Res>
    implements $CaliberModelCopyWith<$Res> {
  factory _$$_CaliberModelCopyWith(
          _$_CaliberModel value, $Res Function(_$_CaliberModel) then) =
      __$$_CaliberModelCopyWithImpl<$Res>;
  @override
  @useResult
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
    extends _$CaliberModelCopyWithImpl<$Res, _$_CaliberModel>
    implements _$$_CaliberModelCopyWith<$Res> {
  __$$_CaliberModelCopyWithImpl(
      _$_CaliberModel _value, $Res Function(_$_CaliberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      metric: freezed == metric
          ? _value.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as String?,
      typicalBulletDiameter: freezed == typicalBulletDiameter
          ? _value.typicalBulletDiameter
          : typicalBulletDiameter // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
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
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.metric, metric) || other.metric == metric) &&
            (identical(other.typicalBulletDiameter, typicalBulletDiameter) ||
                other.typicalBulletDiameter == typicalBulletDiameter) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, metric,
      typicalBulletDiameter, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaliberModelCopyWith<_$_CaliberModel> get copyWith =>
      __$$_CaliberModelCopyWithImpl<_$_CaliberModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaliberModelToJson(
      this,
    );
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
  int? get id;
  @override
  String? get name;
  @override
  String? get metric;
  @override
  String? get typicalBulletDiameter;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CaliberModelCopyWith<_$_CaliberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
