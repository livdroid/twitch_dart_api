// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_information_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  List<UserResponseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call({List<UserResponseData>? data});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

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
              as List<UserResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$_UserResponseCopyWith(
          _$_UserResponse value, $Res Function(_$_UserResponse) then) =
      __$$_UserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserResponseData>? data});
}

/// @nodoc
class __$$_UserResponseCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$_UserResponse>
    implements _$$_UserResponseCopyWith<$Res> {
  __$$_UserResponseCopyWithImpl(
      _$_UserResponse _value, $Res Function(_$_UserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UserResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse({final List<UserResponseData>? data}) : _data = data;

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseFromJson(json);

  final List<UserResponseData>? _data;
  @override
  List<UserResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      __$$_UserResponseCopyWithImpl<_$_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse({final List<UserResponseData>? data}) =
      _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  List<UserResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseCopyWith<_$_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponseData _$UserResponseDataFromJson(Map<String, dynamic> json) {
  return _UserResponseData.fromJson(json);
}

/// @nodoc
mixin _$UserResponseData {
  String? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get broadcasterType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get offlineImageUrl => throw _privateConstructorUsedError;
  int? get viewCount => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseDataCopyWith<UserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseDataCopyWith<$Res> {
  factory $UserResponseDataCopyWith(
          UserResponseData value, $Res Function(UserResponseData) then) =
      _$UserResponseDataCopyWithImpl<$Res, UserResponseData>;
  @useResult
  $Res call(
      {String? id,
      String? login,
      String? displayName,
      String? type,
      String? broadcasterType,
      String? description,
      String? profileImageUrl,
      String? offlineImageUrl,
      int? viewCount,
      String? email,
      String? createdAt});
}

/// @nodoc
class _$UserResponseDataCopyWithImpl<$Res, $Val extends UserResponseData>
    implements $UserResponseDataCopyWith<$Res> {
  _$UserResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? displayName = freezed,
    Object? type = freezed,
    Object? broadcasterType = freezed,
    Object? description = freezed,
    Object? profileImageUrl = freezed,
    Object? offlineImageUrl = freezed,
    Object? viewCount = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterType: freezed == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineImageUrl: freezed == offlineImageUrl
          ? _value.offlineImageUrl
          : offlineImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserResponseDataCopyWith<$Res>
    implements $UserResponseDataCopyWith<$Res> {
  factory _$$_UserResponseDataCopyWith(
          _$_UserResponseData value, $Res Function(_$_UserResponseData) then) =
      __$$_UserResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? login,
      String? displayName,
      String? type,
      String? broadcasterType,
      String? description,
      String? profileImageUrl,
      String? offlineImageUrl,
      int? viewCount,
      String? email,
      String? createdAt});
}

/// @nodoc
class __$$_UserResponseDataCopyWithImpl<$Res>
    extends _$UserResponseDataCopyWithImpl<$Res, _$_UserResponseData>
    implements _$$_UserResponseDataCopyWith<$Res> {
  __$$_UserResponseDataCopyWithImpl(
      _$_UserResponseData _value, $Res Function(_$_UserResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? displayName = freezed,
    Object? type = freezed,
    Object? broadcasterType = freezed,
    Object? description = freezed,
    Object? profileImageUrl = freezed,
    Object? offlineImageUrl = freezed,
    Object? viewCount = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_UserResponseData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterType: freezed == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineImageUrl: freezed == offlineImageUrl
          ? _value.offlineImageUrl
          : offlineImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseData implements _UserResponseData {
  const _$_UserResponseData(
      {this.id,
      this.login,
      this.displayName,
      this.type,
      this.broadcasterType,
      this.description,
      this.profileImageUrl,
      this.offlineImageUrl,
      this.viewCount,
      this.email,
      this.createdAt});

  factory _$_UserResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseDataFromJson(json);

  @override
  final String? id;
  @override
  final String? login;
  @override
  final String? displayName;
  @override
  final String? type;
  @override
  final String? broadcasterType;
  @override
  final String? description;
  @override
  final String? profileImageUrl;
  @override
  final String? offlineImageUrl;
  @override
  final int? viewCount;
  @override
  final String? email;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'UserResponseData(id: $id, login: $login, displayName: $displayName, type: $type, broadcasterType: $broadcasterType, description: $description, profileImageUrl: $profileImageUrl, offlineImageUrl: $offlineImageUrl, viewCount: $viewCount, email: $email, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponseData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.broadcasterType, broadcasterType) ||
                other.broadcasterType == broadcasterType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.offlineImageUrl, offlineImageUrl) ||
                other.offlineImageUrl == offlineImageUrl) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      login,
      displayName,
      type,
      broadcasterType,
      description,
      profileImageUrl,
      offlineImageUrl,
      viewCount,
      email,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseDataCopyWith<_$_UserResponseData> get copyWith =>
      __$$_UserResponseDataCopyWithImpl<_$_UserResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseDataToJson(
      this,
    );
  }
}

abstract class _UserResponseData implements UserResponseData {
  const factory _UserResponseData(
      {final String? id,
      final String? login,
      final String? displayName,
      final String? type,
      final String? broadcasterType,
      final String? description,
      final String? profileImageUrl,
      final String? offlineImageUrl,
      final int? viewCount,
      final String? email,
      final String? createdAt}) = _$_UserResponseData;

  factory _UserResponseData.fromJson(Map<String, dynamic> json) =
      _$_UserResponseData.fromJson;

  @override
  String? get id;
  @override
  String? get login;
  @override
  String? get displayName;
  @override
  String? get type;
  @override
  String? get broadcasterType;
  @override
  String? get description;
  @override
  String? get profileImageUrl;
  @override
  String? get offlineImageUrl;
  @override
  int? get viewCount;
  @override
  String? get email;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseDataCopyWith<_$_UserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
