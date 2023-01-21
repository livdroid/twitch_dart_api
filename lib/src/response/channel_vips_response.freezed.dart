// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_vips_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChannelVipsResponse _$ChannelVipsResponseFromJson(Map<String, dynamic> json) {
  return _ChannelVipResponse.fromJson(json);
}

/// @nodoc
mixin _$ChannelVipsResponse {
  List<ChannelVipsResponseData>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelVipsResponseCopyWith<ChannelVipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelVipsResponseCopyWith<$Res> {
  factory $ChannelVipsResponseCopyWith(
          ChannelVipsResponse value, $Res Function(ChannelVipsResponse) then) =
      _$ChannelVipsResponseCopyWithImpl<$Res, ChannelVipsResponse>;
  @useResult
  $Res call({List<ChannelVipsResponseData>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ChannelVipsResponseCopyWithImpl<$Res, $Val extends ChannelVipsResponse>
    implements $ChannelVipsResponseCopyWith<$Res> {
  _$ChannelVipsResponseCopyWithImpl(this._value, this._then);

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
              as List<ChannelVipsResponseData>?,
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
abstract class _$$_ChannelVipResponseCopyWith<$Res>
    implements $ChannelVipsResponseCopyWith<$Res> {
  factory _$$_ChannelVipResponseCopyWith(_$_ChannelVipResponse value,
          $Res Function(_$_ChannelVipResponse) then) =
      __$$_ChannelVipResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChannelVipsResponseData>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_ChannelVipResponseCopyWithImpl<$Res>
    extends _$ChannelVipsResponseCopyWithImpl<$Res, _$_ChannelVipResponse>
    implements _$$_ChannelVipResponseCopyWith<$Res> {
  __$$_ChannelVipResponseCopyWithImpl(
      _$_ChannelVipResponse _value, $Res Function(_$_ChannelVipResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_ChannelVipResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChannelVipsResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelVipResponse implements _ChannelVipResponse {
  const _$_ChannelVipResponse(
      {final List<ChannelVipsResponseData>? data, this.pagination})
      : _data = data;

  factory _$_ChannelVipResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelVipResponseFromJson(json);

  final List<ChannelVipsResponseData>? _data;
  @override
  List<ChannelVipsResponseData>? get data {
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
    return 'ChannelVipsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelVipResponse &&
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
  _$$_ChannelVipResponseCopyWith<_$_ChannelVipResponse> get copyWith =>
      __$$_ChannelVipResponseCopyWithImpl<_$_ChannelVipResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelVipResponseToJson(
      this,
    );
  }
}

abstract class _ChannelVipResponse implements ChannelVipsResponse {
  const factory _ChannelVipResponse(
      {final List<ChannelVipsResponseData>? data,
      final Pagination? pagination}) = _$_ChannelVipResponse;

  factory _ChannelVipResponse.fromJson(Map<String, dynamic> json) =
      _$_ChannelVipResponse.fromJson;

  @override
  List<ChannelVipsResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelVipResponseCopyWith<_$_ChannelVipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelVipsResponseData _$ChannelVipsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ChannelVipsResponseData.fromJson(json);
}

/// @nodoc
mixin _$ChannelVipsResponseData {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelVipsResponseDataCopyWith<ChannelVipsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelVipsResponseDataCopyWith<$Res> {
  factory $ChannelVipsResponseDataCopyWith(ChannelVipsResponseData value,
          $Res Function(ChannelVipsResponseData) then) =
      _$ChannelVipsResponseDataCopyWithImpl<$Res, ChannelVipsResponseData>;
  @useResult
  $Res call({String? userId, String? userName, String? userLogin});
}

/// @nodoc
class _$ChannelVipsResponseDataCopyWithImpl<$Res,
        $Val extends ChannelVipsResponseData>
    implements $ChannelVipsResponseDataCopyWith<$Res> {
  _$ChannelVipsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelVipsResponseDataCopyWith<$Res>
    implements $ChannelVipsResponseDataCopyWith<$Res> {
  factory _$$_ChannelVipsResponseDataCopyWith(_$_ChannelVipsResponseData value,
          $Res Function(_$_ChannelVipsResponseData) then) =
      __$$_ChannelVipsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? userName, String? userLogin});
}

/// @nodoc
class __$$_ChannelVipsResponseDataCopyWithImpl<$Res>
    extends _$ChannelVipsResponseDataCopyWithImpl<$Res,
        _$_ChannelVipsResponseData>
    implements _$$_ChannelVipsResponseDataCopyWith<$Res> {
  __$$_ChannelVipsResponseDataCopyWithImpl(_$_ChannelVipsResponseData _value,
      $Res Function(_$_ChannelVipsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
  }) {
    return _then(_$_ChannelVipsResponseData(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelVipsResponseData implements _ChannelVipsResponseData {
  const _$_ChannelVipsResponseData(
      {this.userId, this.userName, this.userLogin});

  factory _$_ChannelVipsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelVipsResponseDataFromJson(json);

  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? userLogin;

  @override
  String toString() {
    return 'ChannelVipsResponseData(userId: $userId, userName: $userName, userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelVipsResponseData &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelVipsResponseDataCopyWith<_$_ChannelVipsResponseData>
      get copyWith =>
          __$$_ChannelVipsResponseDataCopyWithImpl<_$_ChannelVipsResponseData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelVipsResponseDataToJson(
      this,
    );
  }
}

abstract class _ChannelVipsResponseData implements ChannelVipsResponseData {
  const factory _ChannelVipsResponseData(
      {final String? userId,
      final String? userName,
      final String? userLogin}) = _$_ChannelVipsResponseData;

  factory _ChannelVipsResponseData.fromJson(Map<String, dynamic> json) =
      _$_ChannelVipsResponseData.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userLogin;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelVipsResponseDataCopyWith<_$_ChannelVipsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
