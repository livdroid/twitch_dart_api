// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_custom_reward_redemptions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCustomRewardRedemptionResponse _$GetCustomRewardRedemptionResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCustomRewardRedemptionResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCustomRewardRedemptionResponse {
  List<GetCustomRewardRedemptionResponseData>? get data =>
      throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomRewardRedemptionResponseCopyWith<GetCustomRewardRedemptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomRewardRedemptionResponseCopyWith<$Res> {
  factory $GetCustomRewardRedemptionResponseCopyWith(
          GetCustomRewardRedemptionResponse value,
          $Res Function(GetCustomRewardRedemptionResponse) then) =
      _$GetCustomRewardRedemptionResponseCopyWithImpl<$Res,
          GetCustomRewardRedemptionResponse>;
  @useResult
  $Res call(
      {List<GetCustomRewardRedemptionResponseData>? data,
      Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$GetCustomRewardRedemptionResponseCopyWithImpl<$Res,
        $Val extends GetCustomRewardRedemptionResponse>
    implements $GetCustomRewardRedemptionResponseCopyWith<$Res> {
  _$GetCustomRewardRedemptionResponseCopyWithImpl(this._value, this._then);

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
              as List<GetCustomRewardRedemptionResponseData>?,
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
abstract class _$$_GetCustomRewardRedemptionResponseCopyWith<$Res>
    implements $GetCustomRewardRedemptionResponseCopyWith<$Res> {
  factory _$$_GetCustomRewardRedemptionResponseCopyWith(
          _$_GetCustomRewardRedemptionResponse value,
          $Res Function(_$_GetCustomRewardRedemptionResponse) then) =
      __$$_GetCustomRewardRedemptionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GetCustomRewardRedemptionResponseData>? data,
      Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_GetCustomRewardRedemptionResponseCopyWithImpl<$Res>
    extends _$GetCustomRewardRedemptionResponseCopyWithImpl<$Res,
        _$_GetCustomRewardRedemptionResponse>
    implements _$$_GetCustomRewardRedemptionResponseCopyWith<$Res> {
  __$$_GetCustomRewardRedemptionResponseCopyWithImpl(
      _$_GetCustomRewardRedemptionResponse _value,
      $Res Function(_$_GetCustomRewardRedemptionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_GetCustomRewardRedemptionResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetCustomRewardRedemptionResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCustomRewardRedemptionResponse
    implements _GetCustomRewardRedemptionResponse {
  const _$_GetCustomRewardRedemptionResponse(
      {final List<GetCustomRewardRedemptionResponseData>? data,
      this.pagination})
      : _data = data;

  factory _$_GetCustomRewardRedemptionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetCustomRewardRedemptionResponseFromJson(json);

  final List<GetCustomRewardRedemptionResponseData>? _data;
  @override
  List<GetCustomRewardRedemptionResponseData>? get data {
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
    return 'GetCustomRewardRedemptionResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomRewardRedemptionResponse &&
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
  _$$_GetCustomRewardRedemptionResponseCopyWith<
          _$_GetCustomRewardRedemptionResponse>
      get copyWith => __$$_GetCustomRewardRedemptionResponseCopyWithImpl<
          _$_GetCustomRewardRedemptionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCustomRewardRedemptionResponseToJson(
      this,
    );
  }
}

abstract class _GetCustomRewardRedemptionResponse
    implements GetCustomRewardRedemptionResponse {
  const factory _GetCustomRewardRedemptionResponse(
      {final List<GetCustomRewardRedemptionResponseData>? data,
      final Pagination? pagination}) = _$_GetCustomRewardRedemptionResponse;

  factory _GetCustomRewardRedemptionResponse.fromJson(
          Map<String, dynamic> json) =
      _$_GetCustomRewardRedemptionResponse.fromJson;

  @override
  List<GetCustomRewardRedemptionResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomRewardRedemptionResponseCopyWith<
          _$_GetCustomRewardRedemptionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetCustomRewardRedemptionResponseData
    _$GetCustomRewardRedemptionResponseDataFromJson(Map<String, dynamic> json) {
  return _GetCustomRewardRedemptionResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetCustomRewardRedemptionResponseData {
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get broadcasterLogin => throw _privateConstructorUsedError;
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userInput => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get redeemedAt => throw _privateConstructorUsedError;
  Reward? get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomRewardRedemptionResponseDataCopyWith<
          GetCustomRewardRedemptionResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomRewardRedemptionResponseDataCopyWith<$Res> {
  factory $GetCustomRewardRedemptionResponseDataCopyWith(
          GetCustomRewardRedemptionResponseData value,
          $Res Function(GetCustomRewardRedemptionResponseData) then) =
      _$GetCustomRewardRedemptionResponseDataCopyWithImpl<$Res,
          GetCustomRewardRedemptionResponseData>;
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterLogin,
      String? broadcasterId,
      String? id,
      String? userLogin,
      String? userId,
      String? userName,
      String? userInput,
      String? status,
      DateTime? redeemedAt,
      Reward? reward});

  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class _$GetCustomRewardRedemptionResponseDataCopyWithImpl<$Res,
        $Val extends GetCustomRewardRedemptionResponseData>
    implements $GetCustomRewardRedemptionResponseDataCopyWith<$Res> {
  _$GetCustomRewardRedemptionResponseDataCopyWithImpl(this._value, this._then);

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
    Object? userLogin = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
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
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_GetCustomRewardRedemptionResponseDataCopyWith<$Res>
    implements $GetCustomRewardRedemptionResponseDataCopyWith<$Res> {
  factory _$$_GetCustomRewardRedemptionResponseDataCopyWith(
          _$_GetCustomRewardRedemptionResponseData value,
          $Res Function(_$_GetCustomRewardRedemptionResponseData) then) =
      __$$_GetCustomRewardRedemptionResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterLogin,
      String? broadcasterId,
      String? id,
      String? userLogin,
      String? userId,
      String? userName,
      String? userInput,
      String? status,
      DateTime? redeemedAt,
      Reward? reward});

  @override
  $RewardCopyWith<$Res>? get reward;
}

/// @nodoc
class __$$_GetCustomRewardRedemptionResponseDataCopyWithImpl<$Res>
    extends _$GetCustomRewardRedemptionResponseDataCopyWithImpl<$Res,
        _$_GetCustomRewardRedemptionResponseData>
    implements _$$_GetCustomRewardRedemptionResponseDataCopyWith<$Res> {
  __$$_GetCustomRewardRedemptionResponseDataCopyWithImpl(
      _$_GetCustomRewardRedemptionResponseData _value,
      $Res Function(_$_GetCustomRewardRedemptionResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = freezed,
    Object? broadcasterLogin = freezed,
    Object? broadcasterId = freezed,
    Object? id = freezed,
    Object? userLogin = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userInput = freezed,
    Object? status = freezed,
    Object? redeemedAt = freezed,
    Object? reward = freezed,
  }) {
    return _then(_$_GetCustomRewardRedemptionResponseData(
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
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
class _$_GetCustomRewardRedemptionResponseData
    implements _GetCustomRewardRedemptionResponseData {
  const _$_GetCustomRewardRedemptionResponseData(
      {this.broadcasterName,
      this.broadcasterLogin,
      this.broadcasterId,
      this.id,
      this.userLogin,
      this.userId,
      this.userName,
      this.userInput,
      this.status,
      this.redeemedAt,
      this.reward});

  factory _$_GetCustomRewardRedemptionResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetCustomRewardRedemptionResponseDataFromJson(json);

  @override
  final String? broadcasterName;
  @override
  final String? broadcasterLogin;
  @override
  final String? broadcasterId;
  @override
  final String? id;
  @override
  final String? userLogin;
  @override
  final String? userId;
  @override
  final String? userName;
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
    return 'GetCustomRewardRedemptionResponseData(broadcasterName: $broadcasterName, broadcasterLogin: $broadcasterLogin, broadcasterId: $broadcasterId, id: $id, userLogin: $userLogin, userId: $userId, userName: $userName, userInput: $userInput, status: $status, redeemedAt: $redeemedAt, reward: $reward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomRewardRedemptionResponseData &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
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
      userLogin,
      userId,
      userName,
      userInput,
      status,
      redeemedAt,
      reward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomRewardRedemptionResponseDataCopyWith<
          _$_GetCustomRewardRedemptionResponseData>
      get copyWith => __$$_GetCustomRewardRedemptionResponseDataCopyWithImpl<
          _$_GetCustomRewardRedemptionResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCustomRewardRedemptionResponseDataToJson(
      this,
    );
  }
}

abstract class _GetCustomRewardRedemptionResponseData
    implements GetCustomRewardRedemptionResponseData {
  const factory _GetCustomRewardRedemptionResponseData(
      {final String? broadcasterName,
      final String? broadcasterLogin,
      final String? broadcasterId,
      final String? id,
      final String? userLogin,
      final String? userId,
      final String? userName,
      final String? userInput,
      final String? status,
      final DateTime? redeemedAt,
      final Reward? reward}) = _$_GetCustomRewardRedemptionResponseData;

  factory _GetCustomRewardRedemptionResponseData.fromJson(
          Map<String, dynamic> json) =
      _$_GetCustomRewardRedemptionResponseData.fromJson;

  @override
  String? get broadcasterName;
  @override
  String? get broadcasterLogin;
  @override
  String? get broadcasterId;
  @override
  String? get id;
  @override
  String? get userLogin;
  @override
  String? get userId;
  @override
  String? get userName;
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
  _$$_GetCustomRewardRedemptionResponseDataCopyWith<
          _$_GetCustomRewardRedemptionResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get prompt => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call({String? id, String? title, String? prompt, int? cost});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? prompt = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$_RewardCopyWith(_$_Reward value, $Res Function(_$_Reward) then) =
      __$$_RewardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? prompt, int? cost});
}

/// @nodoc
class __$$_RewardCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$_Reward>
    implements _$$_RewardCopyWith<$Res> {
  __$$_RewardCopyWithImpl(_$_Reward _value, $Res Function(_$_Reward) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? prompt = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$_Reward(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reward implements _Reward {
  const _$_Reward({this.id, this.title, this.prompt, this.cost});

  factory _$_Reward.fromJson(Map<String, dynamic> json) =>
      _$$_RewardFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? prompt;
  @override
  final int? cost;

  @override
  String toString() {
    return 'Reward(id: $id, title: $title, prompt: $prompt, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reward &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, prompt, cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RewardCopyWith<_$_Reward> get copyWith =>
      __$$_RewardCopyWithImpl<_$_Reward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  const factory _Reward(
      {final String? id,
      final String? title,
      final String? prompt,
      final int? cost}) = _$_Reward;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$_Reward.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get prompt;
  @override
  int? get cost;
  @override
  @JsonKey(ignore: true)
  _$$_RewardCopyWith<_$_Reward> get copyWith =>
      throw _privateConstructorUsedError;
}
