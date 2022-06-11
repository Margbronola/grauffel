// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reserve_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReserveModel _$ReserveModelFromJson(Map<String, dynamic> json) {
  return _ReserveModel.fromJson(json);
}

/// @nodoc
mixin _$ReserveModel {
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReserveModelCopyWith<ReserveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReserveModelCopyWith<$Res> {
  factory $ReserveModelCopyWith(
          ReserveModel value, $Res Function(ReserveModel) then) =
      _$ReserveModelCopyWithImpl<$Res>;
  $Res call({String image, String title, String description});
}

/// @nodoc
class _$ReserveModelCopyWithImpl<$Res> implements $ReserveModelCopyWith<$Res> {
  _$ReserveModelCopyWithImpl(this._value, this._then);

  final ReserveModel _value;
  // ignore: unused_field
  final $Res Function(ReserveModel) _then;

  @override
  $Res call({
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReserveModelCopyWith<$Res>
    implements $ReserveModelCopyWith<$Res> {
  factory _$$_ReserveModelCopyWith(
          _$_ReserveModel value, $Res Function(_$_ReserveModel) then) =
      __$$_ReserveModelCopyWithImpl<$Res>;
  @override
  $Res call({String image, String title, String description});
}

/// @nodoc
class __$$_ReserveModelCopyWithImpl<$Res>
    extends _$ReserveModelCopyWithImpl<$Res>
    implements _$$_ReserveModelCopyWith<$Res> {
  __$$_ReserveModelCopyWithImpl(
      _$_ReserveModel _value, $Res Function(_$_ReserveModel) _then)
      : super(_value, (v) => _then(v as _$_ReserveModel));

  @override
  _$_ReserveModel get _value => super._value as _$_ReserveModel;

  @override
  $Res call({
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_ReserveModel(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_ReserveModel with DiagnosticableTreeMixin implements _ReserveModel {
  const _$_ReserveModel(
      {required this.image, required this.title, required this.description});

  factory _$_ReserveModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReserveModelFromJson(json);

  @override
  final String image;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReserveModel(image: $image, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReserveModel'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReserveModel &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_ReserveModelCopyWith<_$_ReserveModel> get copyWith =>
      __$$_ReserveModelCopyWithImpl<_$_ReserveModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReserveModelToJson(this);
  }
}

abstract class _ReserveModel implements ReserveModel {
  const factory _ReserveModel(
      {required final String image,
      required final String title,
      required final String description}) = _$_ReserveModel;

  factory _ReserveModel.fromJson(Map<String, dynamic> json) =
      _$_ReserveModel.fromJson;

  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReserveModelCopyWith<_$_ReserveModel> get copyWith =>
      throw _privateConstructorUsedError;
}
