// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_block_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBlockListResponse _$UserBlockListResponseFromJson(
    Map<String, dynamic> json) {
  return _UserBlockListResponse.fromJson(json);
}

/// @nodoc
mixin _$UserBlockListResponse {
  List<UserBlockListResponseData>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBlockListResponseCopyWith<UserBlockListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockListResponseCopyWith<$Res> {
  factory $UserBlockListResponseCopyWith(UserBlockListResponse value,
          $Res Function(UserBlockListResponse) then) =
      _$UserBlockListResponseCopyWithImpl<$Res, UserBlockListResponse>;
  @useResult
  $Res call({List<UserBlockListResponseData>? data});
}

/// @nodoc
class _$UserBlockListResponseCopyWithImpl<$Res,
        $Val extends UserBlockListResponse>
    implements $UserBlockListResponseCopyWith<$Res> {
  _$UserBlockListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserBlockListResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserBlockListResponseCopyWith<$Res>
    implements $UserBlockListResponseCopyWith<$Res> {
  factory _$$_UserBlockListResponseCopyWith(_$_UserBlockListResponse value,
          $Res Function(_$_UserBlockListResponse) then) =
      __$$_UserBlockListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserBlockListResponseData>? data});
}

/// @nodoc
class __$$_UserBlockListResponseCopyWithImpl<$Res>
    extends _$UserBlockListResponseCopyWithImpl<$Res, _$_UserBlockListResponse>
    implements _$$_UserBlockListResponseCopyWith<$Res> {
  __$$_UserBlockListResponseCopyWithImpl(_$_UserBlockListResponse _value,
      $Res Function(_$_UserBlockListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UserBlockListResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserBlockListResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBlockListResponse implements _UserBlockListResponse {
  const _$_UserBlockListResponse({final List<UserBlockListResponseData>? data})
      : _data = data;

  factory _$_UserBlockListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserBlockListResponseFromJson(json);

  final List<UserBlockListResponseData>? _data;
  @override
  List<UserBlockListResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserBlockListResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBlockListResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBlockListResponseCopyWith<_$_UserBlockListResponse> get copyWith =>
      __$$_UserBlockListResponseCopyWithImpl<_$_UserBlockListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBlockListResponseToJson(
      this,
    );
  }
}

abstract class _UserBlockListResponse implements UserBlockListResponse {
  const factory _UserBlockListResponse(
      {final List<UserBlockListResponseData>? data}) = _$_UserBlockListResponse;

  factory _UserBlockListResponse.fromJson(Map<String, dynamic> json) =
      _$_UserBlockListResponse.fromJson;

  @override
  List<UserBlockListResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserBlockListResponseCopyWith<_$_UserBlockListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBlockListResponseData _$UserBlockListResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UserBlockListResponseData.fromJson(json);
}

/// @nodoc
mixin _$UserBlockListResponseData {
  String? get userId => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBlockListResponseDataCopyWith<UserBlockListResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockListResponseDataCopyWith<$Res> {
  factory $UserBlockListResponseDataCopyWith(UserBlockListResponseData value,
          $Res Function(UserBlockListResponseData) then) =
      _$UserBlockListResponseDataCopyWithImpl<$Res, UserBlockListResponseData>;
  @useResult
  $Res call({String? userId, String? userLogin, String? displayName});
}

/// @nodoc
class _$UserBlockListResponseDataCopyWithImpl<$Res,
        $Val extends UserBlockListResponseData>
    implements $UserBlockListResponseDataCopyWith<$Res> {
  _$UserBlockListResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserBlockListResponseDataCopyWith<$Res>
    implements $UserBlockListResponseDataCopyWith<$Res> {
  factory _$$_UserBlockListResponseDataCopyWith(
          _$_UserBlockListResponseData value,
          $Res Function(_$_UserBlockListResponseData) then) =
      __$$_UserBlockListResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? userLogin, String? displayName});
}

/// @nodoc
class __$$_UserBlockListResponseDataCopyWithImpl<$Res>
    extends _$UserBlockListResponseDataCopyWithImpl<$Res,
        _$_UserBlockListResponseData>
    implements _$$_UserBlockListResponseDataCopyWith<$Res> {
  __$$_UserBlockListResponseDataCopyWithImpl(
      _$_UserBlockListResponseData _value,
      $Res Function(_$_UserBlockListResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? displayName = freezed,
  }) {
    return _then(_$_UserBlockListResponseData(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserBlockListResponseData implements _UserBlockListResponseData {
  const _$_UserBlockListResponseData(
      {this.userId, this.userLogin, this.displayName});

  factory _$_UserBlockListResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_UserBlockListResponseDataFromJson(json);

  @override
  final String? userId;
  @override
  final String? userLogin;
  @override
  final String? displayName;

  @override
  String toString() {
    return 'UserBlockListResponseData(userId: $userId, userLogin: $userLogin, displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBlockListResponseData &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userLogin, displayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBlockListResponseDataCopyWith<_$_UserBlockListResponseData>
      get copyWith => __$$_UserBlockListResponseDataCopyWithImpl<
          _$_UserBlockListResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBlockListResponseDataToJson(
      this,
    );
  }
}

abstract class _UserBlockListResponseData implements UserBlockListResponseData {
  const factory _UserBlockListResponseData(
      {final String? userId,
      final String? userLogin,
      final String? displayName}) = _$_UserBlockListResponseData;

  factory _UserBlockListResponseData.fromJson(Map<String, dynamic> json) =
      _$_UserBlockListResponseData.fromJson;

  @override
  String? get userId;
  @override
  String? get userLogin;
  @override
  String? get displayName;
  @override
  @JsonKey(ignore: true)
  _$$_UserBlockListResponseDataCopyWith<_$_UserBlockListResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
