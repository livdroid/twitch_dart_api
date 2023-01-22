// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banned_users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannedUsersResponse _$BannedUsersResponseFromJson(Map<String, dynamic> json) {
  return _BannedUsersResponse.fromJson(json);
}

/// @nodoc
mixin _$BannedUsersResponse {
  List<BannedUser>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannedUsersResponseCopyWith<BannedUsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedUsersResponseCopyWith<$Res> {
  factory $BannedUsersResponseCopyWith(
          BannedUsersResponse value, $Res Function(BannedUsersResponse) then) =
      _$BannedUsersResponseCopyWithImpl<$Res, BannedUsersResponse>;
  @useResult
  $Res call({List<BannedUser>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$BannedUsersResponseCopyWithImpl<$Res, $Val extends BannedUsersResponse>
    implements $BannedUsersResponseCopyWith<$Res> {
  _$BannedUsersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannedUser>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BannedUsersResponseCopyWith<$Res>
    implements $BannedUsersResponseCopyWith<$Res> {
  factory _$$_BannedUsersResponseCopyWith(_$_BannedUsersResponse value,
          $Res Function(_$_BannedUsersResponse) then) =
      __$$_BannedUsersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannedUser>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_BannedUsersResponseCopyWithImpl<$Res>
    extends _$BannedUsersResponseCopyWithImpl<$Res, _$_BannedUsersResponse>
    implements _$$_BannedUsersResponseCopyWith<$Res> {
  __$$_BannedUsersResponseCopyWithImpl(_$_BannedUsersResponse _value,
      $Res Function(_$_BannedUsersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_BannedUsersResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BannedUser>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannedUsersResponse implements _BannedUsersResponse {
  const _$_BannedUsersResponse({final List<BannedUser>? data, this.pagination})
      : _data = data;

  factory _$_BannedUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BannedUsersResponseFromJson(json);

  final List<BannedUser>? _data;
  @override
  List<BannedUser>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? pagination;

  @override
  String toString() {
    return 'BannedUsersResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannedUsersResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannedUsersResponseCopyWith<_$_BannedUsersResponse> get copyWith =>
      __$$_BannedUsersResponseCopyWithImpl<_$_BannedUsersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannedUsersResponseToJson(
      this,
    );
  }
}

abstract class _BannedUsersResponse implements BannedUsersResponse {
  const factory _BannedUsersResponse(
      {final List<BannedUser>? data,
      final Pagination? pagination}) = _$_BannedUsersResponse;

  factory _BannedUsersResponse.fromJson(Map<String, dynamic> json) =
      _$_BannedUsersResponse.fromJson;

  @override
  List<BannedUser>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_BannedUsersResponseCopyWith<_$_BannedUsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
