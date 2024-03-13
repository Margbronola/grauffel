// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PagingModelCopyWithImpl<$Res, PagingModel>;
  @useResult
  $Res call(
      {int? current_page,
      String? first_page_url,
      String? next_page_url,
      String? prev_page_url,
      int? total});
}

/// @nodoc
class _$PagingModelCopyWithImpl<$Res, $Val extends PagingModel>
    implements $PagingModelCopyWith<$Res> {
  _$PagingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? first_page_url = freezed,
    Object? next_page_url = freezed,
    Object? prev_page_url = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      first_page_url: freezed == first_page_url
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      next_page_url: freezed == next_page_url
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      prev_page_url: freezed == prev_page_url
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingModelCopyWith<$Res>
    implements $PagingModelCopyWith<$Res> {
  factory _$$_PagingModelCopyWith(
          _$_PagingModel value, $Res Function(_$_PagingModel) then) =
      __$$_PagingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      String? first_page_url,
      String? next_page_url,
      String? prev_page_url,
      int? total});
}

/// @nodoc
class __$$_PagingModelCopyWithImpl<$Res>
    extends _$PagingModelCopyWithImpl<$Res, _$_PagingModel>
    implements _$$_PagingModelCopyWith<$Res> {
  __$$_PagingModelCopyWithImpl(
      _$_PagingModel _value, $Res Function(_$_PagingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? first_page_url = freezed,
    Object? next_page_url = freezed,
    Object? prev_page_url = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_PagingModel(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      first_page_url: freezed == first_page_url
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      next_page_url: freezed == next_page_url
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      prev_page_url: freezed == prev_page_url
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
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
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            (identical(other.first_page_url, first_page_url) ||
                other.first_page_url == first_page_url) &&
            (identical(other.next_page_url, next_page_url) ||
                other.next_page_url == next_page_url) &&
            (identical(other.prev_page_url, prev_page_url) ||
                other.prev_page_url == prev_page_url) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current_page, first_page_url,
      next_page_url, prev_page_url, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  int? get current_page;
  @override
  String? get first_page_url;
  @override
  String? get next_page_url;
  @override
  String? get prev_page_url;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_PagingModelCopyWith<_$_PagingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
