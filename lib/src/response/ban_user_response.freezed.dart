// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ban_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BanUserResponse _$BanUserResponseFromJson(Map<String, dynamic> json) {
  return _BanUserResponse.fromJson(json);
}

/// @nodoc
mixin _$BanUserResponse {
  List<BanUserResponseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BanUserResponseCopyWith<BanUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanUserResponseCopyWith<$Res> {
  factory $BanUserResponseCopyWith(
          BanUserResponse value, $Res Function(BanUserResponse) then) =
      _$BanUserResponseCopyWithImpl<$Res, BanUserResponse>;
  @useResult
  $Res call({List<BanUserResponseData>? data});
}

/// @nodoc
class _$BanUserResponseCopyWithImpl<$Res, $Val extends BanUserResponse>
    implements $BanUserResponseCopyWith<$Res> {
  _$BanUserResponseCopyWithImpl(this._value, this._then);

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
              as List<BanUserResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BanUserResponseCopyWith<$Res>
    implements $BanUserResponseCopyWith<$Res> {
  factory _$$_BanUserResponseCopyWith(
          _$_BanUserResponse value, $Res Function(_$_BanUserResponse) then) =
      __$$_BanUserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BanUserResponseData>? data});
}

/// @nodoc
class __$$_BanUserResponseCopyWithImpl<$Res>
    extends _$BanUserResponseCopyWithImpl<$Res, _$_BanUserResponse>
    implements _$$_BanUserResponseCopyWith<$Res> {
  __$$_BanUserResponseCopyWithImpl(
      _$_BanUserResponse _value, $Res Function(_$_BanUserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_BanUserResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BanUserResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BanUserResponse implements _BanUserResponse {
  const _$_BanUserResponse({final List<BanUserResponseData>? data})
      : _data = data;

  factory _$_BanUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BanUserResponseFromJson(json);

  final List<BanUserResponseData>? _data;
  @override
  List<BanUserResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BanUserResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BanUserResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BanUserResponseCopyWith<_$_BanUserResponse> get copyWith =>
      __$$_BanUserResponseCopyWithImpl<_$_BanUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BanUserResponseToJson(
      this,
    );
  }
}

abstract class _BanUserResponse implements BanUserResponse {
  const factory _BanUserResponse({final List<BanUserResponseData>? data}) =
      _$_BanUserResponse;

  factory _BanUserResponse.fromJson(Map<String, dynamic> json) =
      _$_BanUserResponse.fromJson;

  @override
  List<BanUserResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BanUserResponseCopyWith<_$_BanUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BanUserResponseData _$BanUserResponseDataFromJson(Map<String, dynamic> json) {
  return _BanUserResponseData.fromJson(json);
}

/// @nodoc
mixin _$BanUserResponseData {
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BanUserResponseDataCopyWith<BanUserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanUserResponseDataCopyWith<$Res> {
  factory $BanUserResponseDataCopyWith(
          BanUserResponseData value, $Res Function(BanUserResponseData) then) =
      _$BanUserResponseDataCopyWithImpl<$Res, BanUserResponseData>;
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      String? userId,
      String? createdAt,
      String? endTime});
}

/// @nodoc
class _$BanUserResponseDataCopyWithImpl<$Res, $Val extends BanUserResponseData>
    implements $BanUserResponseDataCopyWith<$Res> {
  _$BanUserResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BanUserResponseDataCopyWith<$Res>
    implements $BanUserResponseDataCopyWith<$Res> {
  factory _$$_BanUserResponseDataCopyWith(_$_BanUserResponseData value,
          $Res Function(_$_BanUserResponseData) then) =
      __$$_BanUserResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      String? userId,
      String? createdAt,
      String? endTime});
}

/// @nodoc
class __$$_BanUserResponseDataCopyWithImpl<$Res>
    extends _$BanUserResponseDataCopyWithImpl<$Res, _$_BanUserResponseData>
    implements _$$_BanUserResponseDataCopyWith<$Res> {
  __$$_BanUserResponseDataCopyWithImpl(_$_BanUserResponseData _value,
      $Res Function(_$_BanUserResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$_BanUserResponseData(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BanUserResponseData implements _BanUserResponseData {
  const _$_BanUserResponseData(
      {this.broadcasterId,
      this.moderatorId,
      this.userId,
      this.createdAt,
      this.endTime});

  factory _$_BanUserResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_BanUserResponseDataFromJson(json);

  @override
  final String? broadcasterId;
  @override
  final String? moderatorId;
  @override
  final String? userId;
  @override
  final String? createdAt;
  @override
  final String? endTime;

  @override
  String toString() {
    return 'BanUserResponseData(broadcasterId: $broadcasterId, moderatorId: $moderatorId, userId: $userId, createdAt: $createdAt, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BanUserResponseData &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, broadcasterId, moderatorId, userId, createdAt, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BanUserResponseDataCopyWith<_$_BanUserResponseData> get copyWith =>
      __$$_BanUserResponseDataCopyWithImpl<_$_BanUserResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BanUserResponseDataToJson(
      this,
    );
  }
}

abstract class _BanUserResponseData implements BanUserResponseData {
  const factory _BanUserResponseData(
      {final String? broadcasterId,
      final String? moderatorId,
      final String? userId,
      final String? createdAt,
      final String? endTime}) = _$_BanUserResponseData;

  factory _BanUserResponseData.fromJson(Map<String, dynamic> json) =
      _$_BanUserResponseData.fromJson;

  @override
  String? get broadcasterId;
  @override
  String? get moderatorId;
  @override
  String? get userId;
  @override
  String? get createdAt;
  @override
  String? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_BanUserResponseDataCopyWith<_$_BanUserResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
