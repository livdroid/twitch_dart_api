// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_broadcaster_subscription_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBroadcasterSubscriptionResponse _$GetBroadcasterSubscriptionResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBroadcasterSubscriptionResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBroadcasterSubscriptionResponse {
  List<GetBroadcasterSubscriptionResponseData>? get data =>
      throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBroadcasterSubscriptionResponseCopyWith<
          GetBroadcasterSubscriptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBroadcasterSubscriptionResponseCopyWith<$Res> {
  factory $GetBroadcasterSubscriptionResponseCopyWith(
          GetBroadcasterSubscriptionResponse value,
          $Res Function(GetBroadcasterSubscriptionResponse) then) =
      _$GetBroadcasterSubscriptionResponseCopyWithImpl<$Res,
          GetBroadcasterSubscriptionResponse>;
  @useResult
  $Res call(
      {List<GetBroadcasterSubscriptionResponseData>? data,
      Pagination? pagination,
      int? total,
      int? points});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$GetBroadcasterSubscriptionResponseCopyWithImpl<$Res,
        $Val extends GetBroadcasterSubscriptionResponse>
    implements $GetBroadcasterSubscriptionResponseCopyWith<$Res> {
  _$GetBroadcasterSubscriptionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
    Object? total = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetBroadcasterSubscriptionResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$_GetBroadcasterSubscriptionResponseCopyWith<$Res>
    implements $GetBroadcasterSubscriptionResponseCopyWith<$Res> {
  factory _$$_GetBroadcasterSubscriptionResponseCopyWith(
          _$_GetBroadcasterSubscriptionResponse value,
          $Res Function(_$_GetBroadcasterSubscriptionResponse) then) =
      __$$_GetBroadcasterSubscriptionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GetBroadcasterSubscriptionResponseData>? data,
      Pagination? pagination,
      int? total,
      int? points});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_GetBroadcasterSubscriptionResponseCopyWithImpl<$Res>
    extends _$GetBroadcasterSubscriptionResponseCopyWithImpl<$Res,
        _$_GetBroadcasterSubscriptionResponse>
    implements _$$_GetBroadcasterSubscriptionResponseCopyWith<$Res> {
  __$$_GetBroadcasterSubscriptionResponseCopyWithImpl(
      _$_GetBroadcasterSubscriptionResponse _value,
      $Res Function(_$_GetBroadcasterSubscriptionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
    Object? total = freezed,
    Object? points = freezed,
  }) {
    return _then(_$_GetBroadcasterSubscriptionResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetBroadcasterSubscriptionResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBroadcasterSubscriptionResponse
    implements _GetBroadcasterSubscriptionResponse {
  const _$_GetBroadcasterSubscriptionResponse(
      {final List<GetBroadcasterSubscriptionResponseData>? data,
      this.pagination,
      this.total,
      this.points})
      : _data = data;

  factory _$_GetBroadcasterSubscriptionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetBroadcasterSubscriptionResponseFromJson(json);

  final List<GetBroadcasterSubscriptionResponseData>? _data;
  @override
  List<GetBroadcasterSubscriptionResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? pagination;
  @override
  final int? total;
  @override
  final int? points;

  @override
  String toString() {
    return 'GetBroadcasterSubscriptionResponse(data: $data, pagination: $pagination, total: $total, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBroadcasterSubscriptionResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.points, points) || other.points == points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), pagination, total, points);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBroadcasterSubscriptionResponseCopyWith<
          _$_GetBroadcasterSubscriptionResponse>
      get copyWith => __$$_GetBroadcasterSubscriptionResponseCopyWithImpl<
          _$_GetBroadcasterSubscriptionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBroadcasterSubscriptionResponseToJson(
      this,
    );
  }
}

abstract class _GetBroadcasterSubscriptionResponse
    implements GetBroadcasterSubscriptionResponse {
  const factory _GetBroadcasterSubscriptionResponse(
      {final List<GetBroadcasterSubscriptionResponseData>? data,
      final Pagination? pagination,
      final int? total,
      final int? points}) = _$_GetBroadcasterSubscriptionResponse;

  factory _GetBroadcasterSubscriptionResponse.fromJson(
          Map<String, dynamic> json) =
      _$_GetBroadcasterSubscriptionResponse.fromJson;

  @override
  List<GetBroadcasterSubscriptionResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  int? get total;
  @override
  int? get points;
  @override
  @JsonKey(ignore: true)
  _$$_GetBroadcasterSubscriptionResponseCopyWith<
          _$_GetBroadcasterSubscriptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetBroadcasterSubscriptionResponseData
    _$GetBroadcasterSubscriptionResponseDataFromJson(
        Map<String, dynamic> json) {
  return _GetBroadcasterSubscriptionResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetBroadcasterSubscriptionResponseData {
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get broadcasterLogin => throw _privateConstructorUsedError;
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get gifterId => throw _privateConstructorUsedError;
  String? get gifterLogin => throw _privateConstructorUsedError;
  String? get gifterName => throw _privateConstructorUsedError;
  bool? get isGift => throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;
  String? get planName => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBroadcasterSubscriptionResponseDataCopyWith<
          GetBroadcasterSubscriptionResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBroadcasterSubscriptionResponseDataCopyWith<$Res> {
  factory $GetBroadcasterSubscriptionResponseDataCopyWith(
          GetBroadcasterSubscriptionResponseData value,
          $Res Function(GetBroadcasterSubscriptionResponseData) then) =
      _$GetBroadcasterSubscriptionResponseDataCopyWithImpl<$Res,
          GetBroadcasterSubscriptionResponseData>;
  @useResult
  $Res call(
      {String? broadcasterId,
      String? broadcasterLogin,
      String? broadcasterName,
      String? gifterId,
      String? gifterLogin,
      String? gifterName,
      bool? isGift,
      String? tier,
      String? planName,
      String? userId,
      String? userName,
      String? userLogin});
}

/// @nodoc
class _$GetBroadcasterSubscriptionResponseDataCopyWithImpl<$Res,
        $Val extends GetBroadcasterSubscriptionResponseData>
    implements $GetBroadcasterSubscriptionResponseDataCopyWith<$Res> {
  _$GetBroadcasterSubscriptionResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? broadcasterLogin = freezed,
    Object? broadcasterName = freezed,
    Object? gifterId = freezed,
    Object? gifterLogin = freezed,
    Object? gifterName = freezed,
    Object? isGift = freezed,
    Object? tier = freezed,
    Object? planName = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      gifterId: freezed == gifterId
          ? _value.gifterId
          : gifterId // ignore: cast_nullable_to_non_nullable
              as String?,
      gifterLogin: freezed == gifterLogin
          ? _value.gifterLogin
          : gifterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      gifterName: freezed == gifterName
          ? _value.gifterName
          : gifterName // ignore: cast_nullable_to_non_nullable
              as String?,
      isGift: freezed == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool?,
      tier: freezed == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_GetBroadcasterSubscriptionResponseDataCopyWith<$Res>
    implements $GetBroadcasterSubscriptionResponseDataCopyWith<$Res> {
  factory _$$_GetBroadcasterSubscriptionResponseDataCopyWith(
          _$_GetBroadcasterSubscriptionResponseData value,
          $Res Function(_$_GetBroadcasterSubscriptionResponseData) then) =
      __$$_GetBroadcasterSubscriptionResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterId,
      String? broadcasterLogin,
      String? broadcasterName,
      String? gifterId,
      String? gifterLogin,
      String? gifterName,
      bool? isGift,
      String? tier,
      String? planName,
      String? userId,
      String? userName,
      String? userLogin});
}

/// @nodoc
class __$$_GetBroadcasterSubscriptionResponseDataCopyWithImpl<$Res>
    extends _$GetBroadcasterSubscriptionResponseDataCopyWithImpl<$Res,
        _$_GetBroadcasterSubscriptionResponseData>
    implements _$$_GetBroadcasterSubscriptionResponseDataCopyWith<$Res> {
  __$$_GetBroadcasterSubscriptionResponseDataCopyWithImpl(
      _$_GetBroadcasterSubscriptionResponseData _value,
      $Res Function(_$_GetBroadcasterSubscriptionResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? broadcasterLogin = freezed,
    Object? broadcasterName = freezed,
    Object? gifterId = freezed,
    Object? gifterLogin = freezed,
    Object? gifterName = freezed,
    Object? isGift = freezed,
    Object? tier = freezed,
    Object? planName = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
  }) {
    return _then(_$_GetBroadcasterSubscriptionResponseData(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      gifterId: freezed == gifterId
          ? _value.gifterId
          : gifterId // ignore: cast_nullable_to_non_nullable
              as String?,
      gifterLogin: freezed == gifterLogin
          ? _value.gifterLogin
          : gifterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      gifterName: freezed == gifterName
          ? _value.gifterName
          : gifterName // ignore: cast_nullable_to_non_nullable
              as String?,
      isGift: freezed == isGift
          ? _value.isGift
          : isGift // ignore: cast_nullable_to_non_nullable
              as bool?,
      tier: freezed == tier
          ? _value.tier
          : tier // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_GetBroadcasterSubscriptionResponseData
    implements _GetBroadcasterSubscriptionResponseData {
  const _$_GetBroadcasterSubscriptionResponseData(
      {this.broadcasterId,
      this.broadcasterLogin,
      this.broadcasterName,
      this.gifterId,
      this.gifterLogin,
      this.gifterName,
      this.isGift,
      this.tier,
      this.planName,
      this.userId,
      this.userName,
      this.userLogin});

  factory _$_GetBroadcasterSubscriptionResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetBroadcasterSubscriptionResponseDataFromJson(json);

  @override
  final String? broadcasterId;
  @override
  final String? broadcasterLogin;
  @override
  final String? broadcasterName;
  @override
  final String? gifterId;
  @override
  final String? gifterLogin;
  @override
  final String? gifterName;
  @override
  final bool? isGift;
  @override
  final String? tier;
  @override
  final String? planName;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? userLogin;

  @override
  String toString() {
    return 'GetBroadcasterSubscriptionResponseData(broadcasterId: $broadcasterId, broadcasterLogin: $broadcasterLogin, broadcasterName: $broadcasterName, gifterId: $gifterId, gifterLogin: $gifterLogin, gifterName: $gifterName, isGift: $isGift, tier: $tier, planName: $planName, userId: $userId, userName: $userName, userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBroadcasterSubscriptionResponseData &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.gifterId, gifterId) ||
                other.gifterId == gifterId) &&
            (identical(other.gifterLogin, gifterLogin) ||
                other.gifterLogin == gifterLogin) &&
            (identical(other.gifterName, gifterName) ||
                other.gifterName == gifterName) &&
            (identical(other.isGift, isGift) || other.isGift == isGift) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      broadcasterLogin,
      broadcasterName,
      gifterId,
      gifterLogin,
      gifterName,
      isGift,
      tier,
      planName,
      userId,
      userName,
      userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBroadcasterSubscriptionResponseDataCopyWith<
          _$_GetBroadcasterSubscriptionResponseData>
      get copyWith => __$$_GetBroadcasterSubscriptionResponseDataCopyWithImpl<
          _$_GetBroadcasterSubscriptionResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBroadcasterSubscriptionResponseDataToJson(
      this,
    );
  }
}

abstract class _GetBroadcasterSubscriptionResponseData
    implements GetBroadcasterSubscriptionResponseData {
  const factory _GetBroadcasterSubscriptionResponseData(
      {final String? broadcasterId,
      final String? broadcasterLogin,
      final String? broadcasterName,
      final String? gifterId,
      final String? gifterLogin,
      final String? gifterName,
      final bool? isGift,
      final String? tier,
      final String? planName,
      final String? userId,
      final String? userName,
      final String? userLogin}) = _$_GetBroadcasterSubscriptionResponseData;

  factory _GetBroadcasterSubscriptionResponseData.fromJson(
          Map<String, dynamic> json) =
      _$_GetBroadcasterSubscriptionResponseData.fromJson;

  @override
  String? get broadcasterId;
  @override
  String? get broadcasterLogin;
  @override
  String? get broadcasterName;
  @override
  String? get gifterId;
  @override
  String? get gifterLogin;
  @override
  String? get gifterName;
  @override
  bool? get isGift;
  @override
  String? get tier;
  @override
  String? get planName;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userLogin;
  @override
  @JsonKey(ignore: true)
  _$$_GetBroadcasterSubscriptionResponseDataCopyWith<
          _$_GetBroadcasterSubscriptionResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
