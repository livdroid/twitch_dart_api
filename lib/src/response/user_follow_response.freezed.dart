// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_follow_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFollowResponse _$UserFollowResponseFromJson(Map<String, dynamic> json) {
  return _UserFollowResponse.fromJson(json);
}

/// @nodoc
mixin _$UserFollowResponse {
  int? get total => throw _privateConstructorUsedError;
  List<UserFollowData>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFollowResponseCopyWith<UserFollowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFollowResponseCopyWith<$Res> {
  factory $UserFollowResponseCopyWith(
          UserFollowResponse value, $Res Function(UserFollowResponse) then) =
      _$UserFollowResponseCopyWithImpl<$Res, UserFollowResponse>;
  @useResult
  $Res call({int? total, List<UserFollowData>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$UserFollowResponseCopyWithImpl<$Res, $Val extends UserFollowResponse>
    implements $UserFollowResponseCopyWith<$Res> {
  _$UserFollowResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserFollowData>?,
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
abstract class _$$_UserFollowResponseCopyWith<$Res>
    implements $UserFollowResponseCopyWith<$Res> {
  factory _$$_UserFollowResponseCopyWith(_$_UserFollowResponse value,
          $Res Function(_$_UserFollowResponse) then) =
      __$$_UserFollowResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<UserFollowData>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_UserFollowResponseCopyWithImpl<$Res>
    extends _$UserFollowResponseCopyWithImpl<$Res, _$_UserFollowResponse>
    implements _$$_UserFollowResponseCopyWith<$Res> {
  __$$_UserFollowResponseCopyWithImpl(
      _$_UserFollowResponse _value, $Res Function(_$_UserFollowResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_UserFollowResponse(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserFollowData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFollowResponse implements _UserFollowResponse {
  const _$_UserFollowResponse(
      {this.total, final List<UserFollowData>? data, this.pagination})
      : _data = data;

  factory _$_UserFollowResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserFollowResponseFromJson(json);

  @override
  final int? total;
  final List<UserFollowData>? _data;
  @override
  List<UserFollowData>? get data {
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
    return 'UserFollowResponse(total: $total, data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFollowResponse &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total,
      const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFollowResponseCopyWith<_$_UserFollowResponse> get copyWith =>
      __$$_UserFollowResponseCopyWithImpl<_$_UserFollowResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFollowResponseToJson(
      this,
    );
  }
}

abstract class _UserFollowResponse implements UserFollowResponse {
  const factory _UserFollowResponse(
      {final int? total,
      final List<UserFollowData>? data,
      final Pagination? pagination}) = _$_UserFollowResponse;

  factory _UserFollowResponse.fromJson(Map<String, dynamic> json) =
      _$_UserFollowResponse.fromJson;

  @override
  int? get total;
  @override
  List<UserFollowData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_UserFollowResponseCopyWith<_$_UserFollowResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserFollowData _$UserFollowDataFromJson(Map<String, dynamic> json) {
  return _UserFollowData.fromJson(json);
}

/// @nodoc
mixin _$UserFollowData {
  String? get fromId => throw _privateConstructorUsedError;
  String? get fromLogin => throw _privateConstructorUsedError;
  String? get fromName => throw _privateConstructorUsedError;
  String? get toId => throw _privateConstructorUsedError;
  String? get toName => throw _privateConstructorUsedError;
  String? get followedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFollowDataCopyWith<UserFollowData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFollowDataCopyWith<$Res> {
  factory $UserFollowDataCopyWith(
          UserFollowData value, $Res Function(UserFollowData) then) =
      _$UserFollowDataCopyWithImpl<$Res, UserFollowData>;
  @useResult
  $Res call(
      {String? fromId,
      String? fromLogin,
      String? fromName,
      String? toId,
      String? toName,
      String? followedAt});
}

/// @nodoc
class _$UserFollowDataCopyWithImpl<$Res, $Val extends UserFollowData>
    implements $UserFollowDataCopyWith<$Res> {
  _$UserFollowDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromId = freezed,
    Object? fromLogin = freezed,
    Object? fromName = freezed,
    Object? toId = freezed,
    Object? toName = freezed,
    Object? followedAt = freezed,
  }) {
    return _then(_value.copyWith(
      fromId: freezed == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLogin: freezed == fromLogin
          ? _value.fromLogin
          : fromLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      fromName: freezed == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: freezed == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
      followedAt: freezed == followedAt
          ? _value.followedAt
          : followedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFollowDataCopyWith<$Res>
    implements $UserFollowDataCopyWith<$Res> {
  factory _$$_UserFollowDataCopyWith(
          _$_UserFollowData value, $Res Function(_$_UserFollowData) then) =
      __$$_UserFollowDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fromId,
      String? fromLogin,
      String? fromName,
      String? toId,
      String? toName,
      String? followedAt});
}

/// @nodoc
class __$$_UserFollowDataCopyWithImpl<$Res>
    extends _$UserFollowDataCopyWithImpl<$Res, _$_UserFollowData>
    implements _$$_UserFollowDataCopyWith<$Res> {
  __$$_UserFollowDataCopyWithImpl(
      _$_UserFollowData _value, $Res Function(_$_UserFollowData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromId = freezed,
    Object? fromLogin = freezed,
    Object? fromName = freezed,
    Object? toId = freezed,
    Object? toName = freezed,
    Object? followedAt = freezed,
  }) {
    return _then(_$_UserFollowData(
      fromId: freezed == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String?,
      fromLogin: freezed == fromLogin
          ? _value.fromLogin
          : fromLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      fromName: freezed == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String?,
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      toName: freezed == toName
          ? _value.toName
          : toName // ignore: cast_nullable_to_non_nullable
              as String?,
      followedAt: freezed == followedAt
          ? _value.followedAt
          : followedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFollowData implements _UserFollowData {
  const _$_UserFollowData(
      {this.fromId,
      this.fromLogin,
      this.fromName,
      this.toId,
      this.toName,
      this.followedAt});

  factory _$_UserFollowData.fromJson(Map<String, dynamic> json) =>
      _$$_UserFollowDataFromJson(json);

  @override
  final String? fromId;
  @override
  final String? fromLogin;
  @override
  final String? fromName;
  @override
  final String? toId;
  @override
  final String? toName;
  @override
  final String? followedAt;

  @override
  String toString() {
    return 'UserFollowData(fromId: $fromId, fromLogin: $fromLogin, fromName: $fromName, toId: $toId, toName: $toName, followedAt: $followedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFollowData &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.fromLogin, fromLogin) ||
                other.fromLogin == fromLogin) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.toName, toName) || other.toName == toName) &&
            (identical(other.followedAt, followedAt) ||
                other.followedAt == followedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fromId, fromLogin, fromName, toId, toName, followedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFollowDataCopyWith<_$_UserFollowData> get copyWith =>
      __$$_UserFollowDataCopyWithImpl<_$_UserFollowData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFollowDataToJson(
      this,
    );
  }
}

abstract class _UserFollowData implements UserFollowData {
  const factory _UserFollowData(
      {final String? fromId,
      final String? fromLogin,
      final String? fromName,
      final String? toId,
      final String? toName,
      final String? followedAt}) = _$_UserFollowData;

  factory _UserFollowData.fromJson(Map<String, dynamic> json) =
      _$_UserFollowData.fromJson;

  @override
  String? get fromId;
  @override
  String? get fromLogin;
  @override
  String? get fromName;
  @override
  String? get toId;
  @override
  String? get toName;
  @override
  String? get followedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserFollowDataCopyWith<_$_UserFollowData> get copyWith =>
      throw _privateConstructorUsedError;
}
