// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paging_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PagingModel {
  int? get current_page => throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagingModelCopyWith<PagingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingModelCopyWith<$Res> {
  factory $PagingModelCopyWith(
          PagingModel value, $Res Function(PagingModel) then) =
      _$PagingModelCopyWithImpl<$Res>;
  $Res call(
      {int? current_page,
      String? first_page_url,
      String? next_page_url,
      String? prev_page_url,
      int? total});
}

/// @nodoc
class _$PagingModelCopyWithImpl<$Res> implements $PagingModelCopyWith<$Res> {
  _$PagingModelCopyWithImpl(this._value, this._then);

  final PagingModel _value;
  // ignore: unused_field
  final $Res Function(PagingModel) _then;

  @override
  $Res call({
    Object? current_page = freezed,
    Object? first_page_url = freezed,
    Object? next_page_url = freezed,
    Object? prev_page_url = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: current_page == freezed
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      first_page_url: first_page_url == freezed
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      next_page_url: next_page_url == freezed
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      prev_page_url: prev_page_url == freezed
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PagingModelCopyWith<$Res>
    implements $PagingModelCopyWith<$Res> {
  factory _$$_PagingModelCopyWith(
          _$_PagingModel value, $Res Function(_$_PagingModel) then) =
      __$$_PagingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? current_page,
      String? first_page_url,
      String? next_page_url,
      String? prev_page_url,
      int? total});
}

/// @nodoc
class __$$_PagingModelCopyWithImpl<$Res> extends _$PagingModelCopyWithImpl<$Res>
    implements _$$_PagingModelCopyWith<$Res> {
  __$$_PagingModelCopyWithImpl(
      _$_PagingModel _value, $Res Function(_$_PagingModel) _then)
      : super(_value, (v) => _then(v as _$_PagingModel));

  @override
  _$_PagingModel get _value => super._value as _$_PagingModel;

  @override
  $Res call({
    Object? current_page = freezed,
    Object? first_page_url = freezed,
    Object? next_page_url = freezed,
    Object? prev_page_url = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_PagingModel(
      current_page: current_page == freezed
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      first_page_url: first_page_url == freezed
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      next_page_url: next_page_url == freezed
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      prev_page_url: prev_page_url == freezed
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_PagingModel implements _PagingModel {
  const _$_PagingModel(
      {this.current_page,
      this.first_page_url,
      this.next_page_url,
      this.prev_page_url,
      this.total});

  @override
  final int? current_page;
  @override
  final String? first_page_url;
  @override
  final String? next_page_url;
  @override
  final String? prev_page_url;
  @override
  final int? total;

  @override
  String toString() {
    return 'PagingModel(current_page: $current_page, first_page_url: $first_page_url, next_page_url: $next_page_url, prev_page_url: $prev_page_url, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagingModel &&
            const DeepCollectionEquality()
                .equals(other.current_page, current_page) &&
            const DeepCollectionEquality()
                .equals(other.first_page_url, first_page_url) &&
            const DeepCollectionEquality()
                .equals(other.next_page_url, next_page_url) &&
            const DeepCollectionEquality()
                .equals(other.prev_page_url, prev_page_url) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current_page),
      const DeepCollectionEquality().hash(first_page_url),
      const DeepCollectionEquality().hash(next_page_url),
      const DeepCollectionEquality().hash(prev_page_url),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_PagingModelCopyWith<_$_PagingModel> get copyWith =>
      __$$_PagingModelCopyWithImpl<_$_PagingModel>(this, _$identity);
}

abstract class _PagingModel implements PagingModel {
  const factory _PagingModel(
      {final int? current_page,
      final String? first_page_url,
      final String? next_page_url,
      final String? prev_page_url,
      final int? total}) = _$_PagingModel;

  @override
  int? get current_page => throw _privateConstructorUsedError;
  @override
  String? get first_page_url => throw _privateConstructorUsedError;
  @override
  String? get next_page_url => throw _privateConstructorUsedError;
  @override
  String? get prev_page_url => throw _privateConstructorUsedError;
  @override
  int? get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PagingModelCopyWith<_$_PagingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
