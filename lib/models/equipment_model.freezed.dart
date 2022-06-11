// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'equipment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentModel _$EquipmentModelFromJson(Map<String, dynamic> json) {
  return _EquipmentModel.fromJson(json);
}

/// @nodoc
mixin _$EquipmentModel {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentModelCopyWith<EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentModelCopyWith<$Res> {
  factory $EquipmentModelCopyWith(
          EquipmentModel value, $Res Function(EquipmentModel) then) =
      _$EquipmentModelCopyWithImpl<$Res>;
  $Res call({String image, String name, String description});
}

/// @nodoc
class _$EquipmentModelCopyWithImpl<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  _$EquipmentModelCopyWithImpl(this._value, this._then);

  final EquipmentModel _value;
  // ignore: unused_field
  final $Res Function(EquipmentModel) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EquipmentModelCopyWith<$Res>
    implements $EquipmentModelCopyWith<$Res> {
  factory _$$_EquipmentModelCopyWith(
          _$_EquipmentModel value, $Res Function(_$_EquipmentModel) then) =
      __$$_EquipmentModelCopyWithImpl<$Res>;
  @override
  $Res call({String image, String name, String description});
}

/// @nodoc
class __$$_EquipmentModelCopyWithImpl<$Res>
    extends _$EquipmentModelCopyWithImpl<$Res>
    implements _$$_EquipmentModelCopyWith<$Res> {
  __$$_EquipmentModelCopyWithImpl(
      _$_EquipmentModel _value, $Res Function(_$_EquipmentModel) _then)
      : super(_value, (v) => _then(v as _$_EquipmentModel));

  @override
  _$_EquipmentModel get _value => super._value as _$_EquipmentModel;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_EquipmentModel(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EquipmentModel
    with DiagnosticableTreeMixin
    implements _EquipmentModel {
  const _$_EquipmentModel(
      {required this.image, required this.name, required this.description});

  factory _$_EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentModelFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EquipmentModel(image: $image, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EquipmentModel'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EquipmentModel &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      __$$_EquipmentModelCopyWithImpl<_$_EquipmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentModelToJson(this);
  }
}

abstract class _EquipmentModel implements EquipmentModel {
  const factory _EquipmentModel(
      {required final String image,
      required final String name,
      required final String description}) = _$_EquipmentModel;

  factory _EquipmentModel.fromJson(Map<String, dynamic> json) =
      _$_EquipmentModel.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentModelCopyWith<_$_EquipmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
