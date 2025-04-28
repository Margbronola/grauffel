// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminModel _$AdminModelFromJson(Map<String, dynamic> json) {
  return _AdminModel.fromJson(json);
}

/// @nodoc
mixin _$AdminModel {
  int? get id => throw _privateConstructorUsedError;
  String? get first_name => throw _privateConstructorUsedError;
  String? get last_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get iscoach => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminModelCopyWith<AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminModelCopyWith<$Res> {
  factory $AdminModelCopyWith(
          AdminModel value, $Res Function(AdminModel) then) =
      _$AdminModelCopyWithImpl<$Res, AdminModel>;
  @useResult
  $Res call(
      {int? id,
      String? first_name,
      String? last_name,
      String? email,
      int? iscoach,
      String? fullname});
}

/// @nodoc
class _$AdminModelCopyWithImpl<$Res, $Val extends AdminModel>
    implements $AdminModelCopyWith<$Res> {
  _$AdminModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? iscoach = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      iscoach: freezed == iscoach
          ? _value.iscoach
          : iscoach // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminModelCopyWith<$Res>
    implements $AdminModelCopyWith<$Res> {
  factory _$$_AdminModelCopyWith(
          _$_AdminModel value, $Res Function(_$_AdminModel) then) =
      __$$_AdminModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? first_name,
      String? last_name,
      String? email,
      int? iscoach,
      String? fullname});
}

/// @nodoc
class __$$_AdminModelCopyWithImpl<$Res>
    extends _$AdminModelCopyWithImpl<$Res, _$_AdminModel>
    implements _$$_AdminModelCopyWith<$Res> {
  __$$_AdminModelCopyWithImpl(
      _$_AdminModel _value, $Res Function(_$_AdminModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? first_name = freezed,
    Object? last_name = freezed,
    Object? email = freezed,
    Object? iscoach = freezed,
    Object? fullname = freezed,
  }) {
    return _then(_$_AdminModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      iscoach: freezed == iscoach
          ? _value.iscoach
          : iscoach // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminModel implements _AdminModel {
  const _$_AdminModel(
      {this.id,
      this.first_name,
      this.last_name,
      this.email,
      this.iscoach,
      this.fullname});

  factory _$_AdminModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminModelFromJson(json);

  @override
  final int? id;
  @override
  final String? first_name;
  @override
  final String? last_name;
  @override
  final String? email;
  @override
  final int? iscoach;
  @override
  final String? fullname;

  @override
  String toString() {
    return 'AdminModel(id: $id, first_name: $first_name, last_name: $last_name, email: $email, iscoach: $iscoach, fullname: $fullname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.first_name, first_name) ||
                other.first_name == first_name) &&
            (identical(other.last_name, last_name) ||
                other.last_name == last_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.iscoach, iscoach) || other.iscoach == iscoach) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, first_name, last_name, email, iscoach, fullname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminModelCopyWith<_$_AdminModel> get copyWith =>
      __$$_AdminModelCopyWithImpl<_$_AdminModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminModelToJson(
      this,
    );
  }
}

abstract class _AdminModel implements AdminModel {
  const factory _AdminModel(
      {final int? id,
      final String? first_name,
      final String? last_name,
      final String? email,
      final int? iscoach,
      final String? fullname}) = _$_AdminModel;

  factory _AdminModel.fromJson(Map<String, dynamic> json) =
      _$_AdminModel.fromJson;

  @override
  int? get id;
  @override
  String? get first_name;
  @override
  String? get last_name;
  @override
  String? get email;
  @override
  int? get iscoach;
  @override
  String? get fullname;
  @override
  @JsonKey(ignore: true)
  _$$_AdminModelCopyWith<_$_AdminModel> get copyWith =>
      throw _privateConstructorUsedError;
}
