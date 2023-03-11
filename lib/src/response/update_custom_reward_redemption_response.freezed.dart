// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_custom_reward_redemption_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCustomRewardRedemptionResponse
    _$UpdateCustomRewardRedemptionResponseFromJson(Map<String, dynamic> json) {
  return _UpdateCustomRewardRedemptionResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateCustomRewardRedemptionResponse {
  List<UpdateCustomRewardRedemption>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCustomRewardRedemptionResponseCopyWith<
          UpdateCustomRewardRedemptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCustomRewardRedemptionResponseCopyWith<$Res> {
  factory $UpdateCustomRewardRedemptionResponseCopyWith(
          UpdateCustomRewardRedemptionResponse value,
          $Res Function(UpdateCustomRewardRedemptionResponse) then) =
      _$UpdateCustomRewardRedemptionResponseCopyWithImpl<$Res,
          UpdateCustomRewardRedemptionResponse>;
  @useResult
  $Res call({List<UpdateCustomRewardRedemption>? data});
}

/// @nodoc
class _$UpdateCustomRewardRedemptionResponseCopyWithImpl<$Res,
        $Val extends UpdateCustomRewardRedemptionResponse>
    implements $UpdateCustomRewardRedemptionResponseCopyWith<$Res> {
  _$UpdateCustomRewardRedemptionResponseCopyWithImpl(this._value, this._then);

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
              as List<UpdateCustomRewardRedemption>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCustomRewardRedemptionResponseCopyWith<$Res>
    implements $UpdateCustomRewardRedemptionResponseCopyWith<$Res> {
  factory _$$_UpdateCustomRewardRedemptionResponseCopyWith(
          _$_UpdateCustomRewardRedemptionResponse value,
          $Res Function(_$_UpdateCustomRewardRedemptionResponse) then) =
      __$$_UpdateCustomRewardRedemptionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UpdateCustomRewardRedemption>? data});
}

/// @nodoc
class __$$_UpdateCustomRewardRedemptionResponseCopyWithImpl<$Res>
    extends _$UpdateCustomRewardRedemptionResponseCopyWithImpl<$Res,
        _$_UpdateCustomRewardRedemptionResponse>
    implements _$$_UpdateCustomRewardRedemptionResponseCopyWith<$Res> {
  __$$_UpdateCustomRewardRedemptionResponseCopyWithImpl(
      _$_UpdateCustomRewardRedemptionResponse _value,
      $Res Function(_$_UpdateCustomRewardRedemptionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UpdateCustomRewardRedemptionResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UpdateCustomRewardRedemption>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCustomRewardRedemptionResponse
    implements _UpdateCustomRewardRedemptionResponse {
  const _$_UpdateCustomRewardRedemptionResponse(
      {final List<UpdateCustomRewardRedemption>? data})
      : _data = data;

  factory _$_UpdateCustomRewardRedemptionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateCustomRewardRedemptionResponseFromJson(json);

  final List<UpdateCustomRewardRedemption>? _data;
  @override
  List<UpdateCustomRewardRedemption>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateCustomRewardRedemptionResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomRewardRedemptionResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCustomRewardRedemptionResponseCopyWith<
          _$_UpdateCustomRewardRedemptionResponse>
      get copyWith => __$$_UpdateCustomRewardRedemptionResponseCopyWithImpl<
          _$_UpdateCustomRewardRedemptionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCustomRewardRedemptionResponseToJson(
      this,
    );
  }
}

abstract class _UpdateCustomRewardRedemptionResponse
    implements UpdateCustomRewardRedemptionResponse {
  const factory _UpdateCustomRewardRedemptionResponse(
          {final List<UpdateCustomRewardRedemption>? data}) =
      _$_UpdateCustomRewardRedemptionResponse;

  factory _UpdateCustomRewardRedemptionResponse.fromJson(
          Map<String, dynamic> json) =
      _$_UpdateCustomRewardRedemptionResponse.fromJson;

  @override
  List<UpdateCustomRewardRedemption>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCustomRewardRedemptionResponseCopyWith<
          _$_UpdateCustomRewardRedemptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCustomRewardRedemption _$UpdateCustomRewardRedemptionFromJson(
    Map<String, dynamic> json) {
  return _UpdateCustomRewardRedemption.fromJson(json);
}

/// @nodoc
mixin _$UpdateCustomRewardRedemption {
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get broadcasterLogin => throw _privateConstructorUsedError;
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get userInput => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get redeemedAt => throw _privateConstructorUsedError;
  Reward? get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCustomRewardRedemptionCopyWith<UpdateCustomRewardRedemption>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCustomRewardRedemptionCopyWith<$Res> {
  factory $UpdateCustomRewardRedemptionCopyWith(
          UpdateCustomRewardRedemption value,
          $Res Function(UpdateCustomRewardRedemption) then) =
      _$UpdateCustomRewardRedemptionCopyWithImpl<$Res,
          UpdateCustomRewardRedemption>;
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterLogin,
      String? broadcasterId,
      String? id,
      String? userId,
      String? userName,
      String? userLogin,
      String? userInput,
      String? status,
      DateTime? redeemedAt,
      Reward? reward});

  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class _$UpdateCustomRewardRedemptionCopyWithImpl<$Res,
        $Val extends UpdateCustomRewardRedemption>
    implements $UpdateCustomRewardRedemptionCopyWith<$Res> {
  _$UpdateCustomRewardRedemptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = freezed,
    Object? broadcasterLogin = freezed,
    Object? broadcasterId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
    Object? userInput = freezed,
    Object? status = freezed,
    Object? redeemedAt = freezed,
    Object? reward = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      userInput: freezed == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemedAt: freezed == redeemedAt
          ? _value.redeemedAt
          : redeemedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res>? get reward {
    if (_value.reward == null) {
      return null;
    }

    return $RewardCopyWith<$Res>(_value.reward!, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateCustomRewardRedemptionCopyWith<$Res>
    implements $UpdateCustomRewardRedemptionCopyWith<$Res> {
  factory _$$_UpdateCustomRewardRedemptionCopyWith(
          _$_UpdateCustomRewardRedemption value,
          $Res Function(_$_UpdateCustomRewardRedemption) then) =
      __$$_UpdateCustomRewardRedemptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterLogin,
      String? broadcasterId,
      String? id,
      String? userId,
      String? userName,
      String? userLogin,
      String? userInput,
      String? status,
      DateTime? redeemedAt,
      Reward? reward});

  @override
  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class __$$_UpdateCustomRewardRedemptionCopyWithImpl<$Res>
    extends _$UpdateCustomRewardRedemptionCopyWithImpl<$Res,
        _$_UpdateCustomRewardRedemption>
    implements _$$_UpdateCustomRewardRedemptionCopyWith<$Res> {
  __$$_UpdateCustomRewardRedemptionCopyWithImpl(
      _$_UpdateCustomRewardRedemption _value,
      $Res Function(_$_UpdateCustomRewardRedemption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = freezed,
    Object? broadcasterLogin = freezed,
    Object? broadcasterId = freezed,
    Object? id = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userLogin = freezed,
    Object? userInput = freezed,
    Object? status = freezed,
    Object? redeemedAt = freezed,
    Object? reward = freezed,
  }) {
    return _then(_$_UpdateCustomRewardRedemption(
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      userInput: freezed == userInput
          ? _value.userInput
          : userInput // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemedAt: freezed == redeemedAt
          ? _value.redeemedAt
          : redeemedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCustomRewardRedemption implements _UpdateCustomRewardRedemption {
  const _$_UpdateCustomRewardRedemption(
      {this.broadcasterName,
      this.broadcasterLogin,
      this.broadcasterId,
      this.id,
      this.userId,
      this.userName,
      this.userLogin,
      this.userInput,
      this.status,
      this.redeemedAt,
      this.reward});

  factory _$_UpdateCustomRewardRedemption.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCustomRewardRedemptionFromJson(json);

  @override
  final String? broadcasterName;
  @override
  final String? broadcasterLogin;
  @override
  final String? broadcasterId;
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? userLogin;
  @override
  final String? userInput;
  @override
  final String? status;
  @override
  final DateTime? redeemedAt;
  @override
  final Reward? reward;

  @override
  String toString() {
    return 'UpdateCustomRewardRedemption(broadcasterName: $broadcasterName, broadcasterLogin: $broadcasterLogin, broadcasterId: $broadcasterId, id: $id, userId: $userId, userName: $userName, userLogin: $userLogin, userInput: $userInput, status: $status, redeemedAt: $redeemedAt, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomRewardRedemption &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userInput, userInput) ||
                other.userInput == userInput) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.redeemedAt, redeemedAt) ||
                other.redeemedAt == redeemedAt) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterName,
      broadcasterLogin,
      broadcasterId,
      id,
      userId,
      userName,
      userLogin,
      userInput,
      status,
      redeemedAt,
      reward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCustomRewardRedemptionCopyWith<_$_UpdateCustomRewardRedemption>
      get copyWith => __$$_UpdateCustomRewardRedemptionCopyWithImpl<
          _$_UpdateCustomRewardRedemption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCustomRewardRedemptionToJson(
      this,
    );
  }
}

abstract class _UpdateCustomRewardRedemption
    implements UpdateCustomRewardRedemption {
  const factory _UpdateCustomRewardRedemption(
      {final String? broadcasterName,
      final String? broadcasterLogin,
      final String? broadcasterId,
      final String? id,
      final String? userId,
      final String? userName,
      final String? userLogin,
      final String? userInput,
      final String? status,
      final DateTime? redeemedAt,
      final Reward? reward}) = _$_UpdateCustomRewardRedemption;

  factory _UpdateCustomRewardRedemption.fromJson(Map<String, dynamic> json) =
      _$_UpdateCustomRewardRedemption.fromJson;

  @override
  String? get broadcasterName;
  @override
  String? get broadcasterLogin;
  @override
  String? get broadcasterId;
  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get userLogin;
  @override
  String? get userInput;
  @override
  String? get status;
  @override
  DateTime? get redeemedAt;
  @override
  Reward? get reward;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCustomRewardRedemptionCopyWith<_$_UpdateCustomRewardRedemption>
      get copyWith => throw _privateConstructorUsedError;
}
