// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gun_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GunModel _$GunModelFromJson(Map<String, dynamic> json) {
  return _GunModel.fromJson(json);
}

/// @nodoc
mixin _$GunModel {
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GunModelCopyWith<GunModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GunModelCopyWith<$Res> {
  factory $GunModelCopyWith(GunModel value, $Res Function(GunModel) then) =
      _$GunModelCopyWithImpl<$Res>;
  $Res call({String image, String name, String description});
}

/// @nodoc
class _$GunModelCopyWithImpl<$Res> implements $GunModelCopyWith<$Res> {
  _$GunModelCopyWithImpl(this._value, this._then);

  final GunModel _value;
  // ignore: unused_field
  final $Res Function(GunModel) _then;

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
abstract class _$$_GunModelCopyWith<$Res> implements $GunModelCopyWith<$Res> {
  factory _$$_GunModelCopyWith(
          _$_GunModel value, $Res Function(_$_GunModel) then) =
      __$$_GunModelCopyWithImpl<$Res>;
  @override
  $Res call({String image, String name, String description});
}

/// @nodoc
class __$$_GunModelCopyWithImpl<$Res> extends _$GunModelCopyWithImpl<$Res>
    implements _$$_GunModelCopyWith<$Res> {
  __$$_GunModelCopyWithImpl(
      _$_GunModel _value, $Res Function(_$_GunModel) _then)
      : super(_value, (v) => _then(v as _$_GunModel));

  @override
  _$_GunModel get _value => super._value as _$_GunModel;

  @override
  $Res call({
    Object? image = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_GunModel(
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
class _$_GunModel with DiagnosticableTreeMixin implements _GunModel {
  const _$_GunModel(
      {required this.image, required this.name, required this.description});

  factory _$_GunModel.fromJson(Map<String, dynamic> json) =>
      _$$_GunModelFromJson(json);

  @override
  final String image;
  @override
  final String name;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GunModel(image: $image, name: $name, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GunModel'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GunModel &&
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
  _$$_GunModelCopyWith<_$_GunModel> get copyWith =>
      __$$_GunModelCopyWithImpl<_$_GunModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GunModelToJson(this);
  }
}

abstract class _GunModel implements GunModel {
  const factory _GunModel(
      {required final String image,
      required final String name,
      required final String description}) = _$_GunModel;

  factory _GunModel.fromJson(Map<String, dynamic> json) = _$_GunModel.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GunModelCopyWith<_$_GunModel> get copyWith =>
      throw _privateConstructorUsedError;
}
