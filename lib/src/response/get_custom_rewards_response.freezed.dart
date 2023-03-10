// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_custom_rewards_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCustomRewardsResponse _$GetCustomRewardsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCustomRewardsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCustomRewardsResponse {
  List<GetCustomRewardsDataResponse>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomRewardsResponseCopyWith<GetCustomRewardsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomRewardsResponseCopyWith<$Res> {
  factory $GetCustomRewardsResponseCopyWith(GetCustomRewardsResponse value,
          $Res Function(GetCustomRewardsResponse) then) =
      _$GetCustomRewardsResponseCopyWithImpl<$Res, GetCustomRewardsResponse>;
  @useResult
  $Res call({List<GetCustomRewardsDataResponse>? data});
}

/// @nodoc
class _$GetCustomRewardsResponseCopyWithImpl<$Res,
        $Val extends GetCustomRewardsResponse>
    implements $GetCustomRewardsResponseCopyWith<$Res> {
  _$GetCustomRewardsResponseCopyWithImpl(this._value, this._then);

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
              as List<GetCustomRewardsDataResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCustomRewardsResponseCopyWith<$Res>
    implements $GetCustomRewardsResponseCopyWith<$Res> {
  factory _$$_GetCustomRewardsResponseCopyWith(
          _$_GetCustomRewardsResponse value,
          $Res Function(_$_GetCustomRewardsResponse) then) =
      __$$_GetCustomRewardsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetCustomRewardsDataResponse>? data});
}

/// @nodoc
class __$$_GetCustomRewardsResponseCopyWithImpl<$Res>
    extends _$GetCustomRewardsResponseCopyWithImpl<$Res,
        _$_GetCustomRewardsResponse>
    implements _$$_GetCustomRewardsResponseCopyWith<$Res> {
  __$$_GetCustomRewardsResponseCopyWithImpl(_$_GetCustomRewardsResponse _value,
      $Res Function(_$_GetCustomRewardsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetCustomRewardsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetCustomRewardsDataResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCustomRewardsResponse implements _GetCustomRewardsResponse {
  const _$_GetCustomRewardsResponse(
      {final List<GetCustomRewardsDataResponse>? data})
      : _data = data;

  factory _$_GetCustomRewardsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetCustomRewardsResponseFromJson(json);

  final List<GetCustomRewardsDataResponse>? _data;
  @override
  List<GetCustomRewardsDataResponse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCustomRewardsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomRewardsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomRewardsResponseCopyWith<_$_GetCustomRewardsResponse>
      get copyWith => __$$_GetCustomRewardsResponseCopyWithImpl<
          _$_GetCustomRewardsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCustomRewardsResponseToJson(
      this,
    );
  }
}

abstract class _GetCustomRewardsResponse implements GetCustomRewardsResponse {
  const factory _GetCustomRewardsResponse(
          {final List<GetCustomRewardsDataResponse>? data}) =
      _$_GetCustomRewardsResponse;

  factory _GetCustomRewardsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetCustomRewardsResponse.fromJson;

  @override
  List<GetCustomRewardsDataResponse>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomRewardsResponseCopyWith<_$_GetCustomRewardsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetCustomRewardsDataResponse _$GetCustomRewardsDataResponseFromJson(
    Map<String, dynamic> json) {
  return _GetCustomRewardsDataResponse.fromJson(json);
}

/// @nodoc
mixin _$GetCustomRewardsDataResponse {
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  DefaultImage? get image => throw _privateConstructorUsedError;
  String? get backgroundColor => throw _privateConstructorUsedError;
  bool? get isEnabled => throw _privateConstructorUsedError;
  int? get cost => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get prompt => throw _privateConstructorUsedError;
  bool? get isUserInputRequired => throw _privateConstructorUsedError;
  MaxPerStreamSetting? get maxPerStreamSetting =>
      throw _privateConstructorUsedError;
  MaxPerUserPerStreamSetting? get maxPerUserPerStreamSetting =>
      throw _privateConstructorUsedError;
  GlobalCooldownSetting? get globalCooldownSetting =>
      throw _privateConstructorUsedError;
  bool? get isPaused => throw _privateConstructorUsedError;
  bool? get isInStock => throw _privateConstructorUsedError;
  DefaultImage? get defaultImage => throw _privateConstructorUsedError;
  bool? get shouldRedemptionsSkipRequestQueue =>
      throw _privateConstructorUsedError;
  int? get redemptionsRedeemedCurrentStream =>
      throw _privateConstructorUsedError;
  String? get cooldownExpiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomRewardsDataResponseCopyWith<GetCustomRewardsDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomRewardsDataResponseCopyWith<$Res> {
  factory $GetCustomRewardsDataResponseCopyWith(
          GetCustomRewardsDataResponse value,
          $Res Function(GetCustomRewardsDataResponse) then) =
      _$GetCustomRewardsDataResponseCopyWithImpl<$Res,
          GetCustomRewardsDataResponse>;
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterId,
      String? id,
      DefaultImage? image,
      String? backgroundColor,
      bool? isEnabled,
      int? cost,
      String? title,
      String? prompt,
      bool? isUserInputRequired,
      MaxPerStreamSetting? maxPerStreamSetting,
      MaxPerUserPerStreamSetting? maxPerUserPerStreamSetting,
      GlobalCooldownSetting? globalCooldownSetting,
      bool? isPaused,
      bool? isInStock,
      DefaultImage? defaultImage,
      bool? shouldRedemptionsSkipRequestQueue,
      int? redemptionsRedeemedCurrentStream,
      String? cooldownExpiresAt});

  $DefaultImageCopyWith<$Res>? get image;
  $MaxPerStreamSettingCopyWith<$Res>? get maxPerStreamSetting;
  $MaxPerUserPerStreamSettingCopyWith<$Res>? get maxPerUserPerStreamSetting;
  $GlobalCooldownSettingCopyWith<$Res>? get globalCooldownSetting;
  $DefaultImageCopyWith<$Res>? get defaultImage;
}

/// @nodoc
class _$GetCustomRewardsDataResponseCopyWithImpl<$Res,
        $Val extends GetCustomRewardsDataResponse>
    implements $GetCustomRewardsDataResponseCopyWith<$Res> {
  _$GetCustomRewardsDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = freezed,
    Object? broadcasterId = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? backgroundColor = freezed,
    Object? isEnabled = freezed,
    Object? cost = freezed,
    Object? title = freezed,
    Object? prompt = freezed,
    Object? isUserInputRequired = freezed,
    Object? maxPerStreamSetting = freezed,
    Object? maxPerUserPerStreamSetting = freezed,
    Object? globalCooldownSetting = freezed,
    Object? isPaused = freezed,
    Object? isInStock = freezed,
    Object? defaultImage = freezed,
    Object? shouldRedemptionsSkipRequestQueue = freezed,
    Object? redemptionsRedeemedCurrentStream = freezed,
    Object? cooldownExpiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserInputRequired: freezed == isUserInputRequired
          ? _value.isUserInputRequired
          : isUserInputRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxPerStreamSetting: freezed == maxPerStreamSetting
          ? _value.maxPerStreamSetting
          : maxPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as MaxPerStreamSetting?,
      maxPerUserPerStreamSetting: freezed == maxPerUserPerStreamSetting
          ? _value.maxPerUserPerStreamSetting
          : maxPerUserPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as MaxPerUserPerStreamSetting?,
      globalCooldownSetting: freezed == globalCooldownSetting
          ? _value.globalCooldownSetting
          : globalCooldownSetting // ignore: cast_nullable_to_non_nullable
              as GlobalCooldownSetting?,
      isPaused: freezed == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInStock: freezed == isInStock
          ? _value.isInStock
          : isInStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
      shouldRedemptionsSkipRequestQueue: freezed ==
              shouldRedemptionsSkipRequestQueue
          ? _value.shouldRedemptionsSkipRequestQueue
          : shouldRedemptionsSkipRequestQueue // ignore: cast_nullable_to_non_nullable
              as bool?,
      redemptionsRedeemedCurrentStream: freezed ==
              redemptionsRedeemedCurrentStream
          ? _value.redemptionsRedeemedCurrentStream
          : redemptionsRedeemedCurrentStream // ignore: cast_nullable_to_non_nullable
              as int?,
      cooldownExpiresAt: freezed == cooldownExpiresAt
          ? _value.cooldownExpiresAt
          : cooldownExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $DefaultImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaxPerStreamSettingCopyWith<$Res>? get maxPerStreamSetting {
    if (_value.maxPerStreamSetting == null) {
      return null;
    }

    return $MaxPerStreamSettingCopyWith<$Res>(_value.maxPerStreamSetting!,
        (value) {
      return _then(_value.copyWith(maxPerStreamSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MaxPerUserPerStreamSettingCopyWith<$Res>? get maxPerUserPerStreamSetting {
    if (_value.maxPerUserPerStreamSetting == null) {
      return null;
    }

    return $MaxPerUserPerStreamSettingCopyWith<$Res>(
        _value.maxPerUserPerStreamSetting!, (value) {
      return _then(_value.copyWith(maxPerUserPerStreamSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalCooldownSettingCopyWith<$Res>? get globalCooldownSetting {
    if (_value.globalCooldownSetting == null) {
      return null;
    }

    return $GlobalCooldownSettingCopyWith<$Res>(_value.globalCooldownSetting!,
        (value) {
      return _then(_value.copyWith(globalCooldownSetting: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DefaultImageCopyWith<$Res>? get defaultImage {
    if (_value.defaultImage == null) {
      return null;
    }

    return $DefaultImageCopyWith<$Res>(_value.defaultImage!, (value) {
      return _then(_value.copyWith(defaultImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetCustomRewardsDataResponseCopyWith<$Res>
    implements $GetCustomRewardsDataResponseCopyWith<$Res> {
  factory _$$_GetCustomRewardsDataResponseCopyWith(
          _$_GetCustomRewardsDataResponse value,
          $Res Function(_$_GetCustomRewardsDataResponse) then) =
      __$$_GetCustomRewardsDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterId,
      String? id,
      DefaultImage? image,
      String? backgroundColor,
      bool? isEnabled,
      int? cost,
      String? title,
      String? prompt,
      bool? isUserInputRequired,
      MaxPerStreamSetting? maxPerStreamSetting,
      MaxPerUserPerStreamSetting? maxPerUserPerStreamSetting,
      GlobalCooldownSetting? globalCooldownSetting,
      bool? isPaused,
      bool? isInStock,
      DefaultImage? defaultImage,
      bool? shouldRedemptionsSkipRequestQueue,
      int? redemptionsRedeemedCurrentStream,
      String? cooldownExpiresAt});

  @override
  $DefaultImageCopyWith<$Res>? get image;
  @override
  $MaxPerStreamSettingCopyWith<$Res>? get maxPerStreamSetting;
  @override
  $MaxPerUserPerStreamSettingCopyWith<$Res>? get maxPerUserPerStreamSetting;
  @override
  $GlobalCooldownSettingCopyWith<$Res>? get globalCooldownSetting;
  @override
  $DefaultImageCopyWith<$Res>? get defaultImage;
}

/// @nodoc
class __$$_GetCustomRewardsDataResponseCopyWithImpl<$Res>
    extends _$GetCustomRewardsDataResponseCopyWithImpl<$Res,
        _$_GetCustomRewardsDataResponse>
    implements _$$_GetCustomRewardsDataResponseCopyWith<$Res> {
  __$$_GetCustomRewardsDataResponseCopyWithImpl(
      _$_GetCustomRewardsDataResponse _value,
      $Res Function(_$_GetCustomRewardsDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = freezed,
    Object? broadcasterId = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? backgroundColor = freezed,
    Object? isEnabled = freezed,
    Object? cost = freezed,
    Object? title = freezed,
    Object? prompt = freezed,
    Object? isUserInputRequired = freezed,
    Object? maxPerStreamSetting = freezed,
    Object? maxPerUserPerStreamSetting = freezed,
    Object? globalCooldownSetting = freezed,
    Object? isPaused = freezed,
    Object? isInStock = freezed,
    Object? defaultImage = freezed,
    Object? shouldRedemptionsSkipRequestQueue = freezed,
    Object? redemptionsRedeemedCurrentStream = freezed,
    Object? cooldownExpiresAt = freezed,
  }) {
    return _then(_$_GetCustomRewardsDataResponse(
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserInputRequired: freezed == isUserInputRequired
          ? _value.isUserInputRequired
          : isUserInputRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxPerStreamSetting: freezed == maxPerStreamSetting
          ? _value.maxPerStreamSetting
          : maxPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as MaxPerStreamSetting?,
      maxPerUserPerStreamSetting: freezed == maxPerUserPerStreamSetting
          ? _value.maxPerUserPerStreamSetting
          : maxPerUserPerStreamSetting // ignore: cast_nullable_to_non_nullable
              as MaxPerUserPerStreamSetting?,
      globalCooldownSetting: freezed == globalCooldownSetting
          ? _value.globalCooldownSetting
          : globalCooldownSetting // ignore: cast_nullable_to_non_nullable
              as GlobalCooldownSetting?,
      isPaused: freezed == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool?,
      isInStock: freezed == isInStock
          ? _value.isInStock
          : isInStock // ignore: cast_nullable_to_non_nullable
              as bool?,
      defaultImage: freezed == defaultImage
          ? _value.defaultImage
          : defaultImage // ignore: cast_nullable_to_non_nullable
              as DefaultImage?,
      shouldRedemptionsSkipRequestQueue: freezed ==
              shouldRedemptionsSkipRequestQueue
          ? _value.shouldRedemptionsSkipRequestQueue
          : shouldRedemptionsSkipRequestQueue // ignore: cast_nullable_to_non_nullable
              as bool?,
      redemptionsRedeemedCurrentStream: freezed ==
              redemptionsRedeemedCurrentStream
          ? _value.redemptionsRedeemedCurrentStream
          : redemptionsRedeemedCurrentStream // ignore: cast_nullable_to_non_nullable
              as int?,
      cooldownExpiresAt: freezed == cooldownExpiresAt
          ? _value.cooldownExpiresAt
          : cooldownExpiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCustomRewardsDataResponse implements _GetCustomRewardsDataResponse {
  const _$_GetCustomRewardsDataResponse(
      {this.broadcasterName,
      this.broadcasterId,
      this.id,
      this.image,
      this.backgroundColor,
      this.isEnabled,
      this.cost,
      this.title,
      this.prompt,
      this.isUserInputRequired,
      this.maxPerStreamSetting,
      this.maxPerUserPerStreamSetting,
      this.globalCooldownSetting,
      this.isPaused,
      this.isInStock,
      this.defaultImage,
      this.shouldRedemptionsSkipRequestQueue,
      this.redemptionsRedeemedCurrentStream,
      this.cooldownExpiresAt});

  factory _$_GetCustomRewardsDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetCustomRewardsDataResponseFromJson(json);

  @override
  final String? broadcasterName;
  @override
  final String? broadcasterId;
  @override
  final String? id;
  @override
  final DefaultImage? image;
  @override
  final String? backgroundColor;
  @override
  final bool? isEnabled;
  @override
  final int? cost;
  @override
  final String? title;
  @override
  final String? prompt;
  @override
  final bool? isUserInputRequired;
  @override
  final MaxPerStreamSetting? maxPerStreamSetting;
  @override
  final MaxPerUserPerStreamSetting? maxPerUserPerStreamSetting;
  @override
  final GlobalCooldownSetting? globalCooldownSetting;
  @override
  final bool? isPaused;
  @override
  final bool? isInStock;
  @override
  final DefaultImage? defaultImage;
  @override
  final bool? shouldRedemptionsSkipRequestQueue;
  @override
  final int? redemptionsRedeemedCurrentStream;
  @override
  final String? cooldownExpiresAt;

  @override
  String toString() {
    return 'GetCustomRewardsDataResponse(broadcasterName: $broadcasterName, broadcasterId: $broadcasterId, id: $id, image: $image, backgroundColor: $backgroundColor, isEnabled: $isEnabled, cost: $cost, title: $title, prompt: $prompt, isUserInputRequired: $isUserInputRequired, maxPerStreamSetting: $maxPerStreamSetting, maxPerUserPerStreamSetting: $maxPerUserPerStreamSetting, globalCooldownSetting: $globalCooldownSetting, isPaused: $isPaused, isInStock: $isInStock, defaultImage: $defaultImage, shouldRedemptionsSkipRequestQueue: $shouldRedemptionsSkipRequestQueue, redemptionsRedeemedCurrentStream: $redemptionsRedeemedCurrentStream, cooldownExpiresAt: $cooldownExpiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomRewardsDataResponse &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            (identical(other.isUserInputRequired, isUserInputRequired) ||
                other.isUserInputRequired == isUserInputRequired) &&
            (identical(other.maxPerStreamSetting, maxPerStreamSetting) ||
                other.maxPerStreamSetting == maxPerStreamSetting) &&
            (identical(other.maxPerUserPerStreamSetting,
                    maxPerUserPerStreamSetting) ||
                other.maxPerUserPerStreamSetting ==
                    maxPerUserPerStreamSetting) &&
            (identical(other.globalCooldownSetting, globalCooldownSetting) ||
                other.globalCooldownSetting == globalCooldownSetting) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.isInStock, isInStock) ||
                other.isInStock == isInStock) &&
            (identical(other.defaultImage, defaultImage) ||
                other.defaultImage == defaultImage) &&
            (identical(other.shouldRedemptionsSkipRequestQueue,
                    shouldRedemptionsSkipRequestQueue) ||
                other.shouldRedemptionsSkipRequestQueue ==
                    shouldRedemptionsSkipRequestQueue) &&
            (identical(other.redemptionsRedeemedCurrentStream,
                    redemptionsRedeemedCurrentStream) ||
                other.redemptionsRedeemedCurrentStream ==
                    redemptionsRedeemedCurrentStream) &&
            (identical(other.cooldownExpiresAt, cooldownExpiresAt) ||
                other.cooldownExpiresAt == cooldownExpiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        broadcasterName,
        broadcasterId,
        id,
        image,
        backgroundColor,
        isEnabled,
        cost,
        title,
        prompt,
        isUserInputRequired,
        maxPerStreamSetting,
        maxPerUserPerStreamSetting,
        globalCooldownSetting,
        isPaused,
        isInStock,
        defaultImage,
        shouldRedemptionsSkipRequestQueue,
        redemptionsRedeemedCurrentStream,
        cooldownExpiresAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomRewardsDataResponseCopyWith<_$_GetCustomRewardsDataResponse>
      get copyWith => __$$_GetCustomRewardsDataResponseCopyWithImpl<
          _$_GetCustomRewardsDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCustomRewardsDataResponseToJson(
      this,
    );
  }
}

abstract class _GetCustomRewardsDataResponse
    implements GetCustomRewardsDataResponse {
  const factory _GetCustomRewardsDataResponse(
      {final String? broadcasterName,
      final String? broadcasterId,
      final String? id,
      final DefaultImage? image,
      final String? backgroundColor,
      final bool? isEnabled,
      final int? cost,
      final String? title,
      final String? prompt,
      final bool? isUserInputRequired,
      final MaxPerStreamSetting? maxPerStreamSetting,
      final MaxPerUserPerStreamSetting? maxPerUserPerStreamSetting,
      final GlobalCooldownSetting? globalCooldownSetting,
      final bool? isPaused,
      final bool? isInStock,
      final DefaultImage? defaultImage,
      final bool? shouldRedemptionsSkipRequestQueue,
      final int? redemptionsRedeemedCurrentStream,
      final String? cooldownExpiresAt}) = _$_GetCustomRewardsDataResponse;

  factory _GetCustomRewardsDataResponse.fromJson(Map<String, dynamic> json) =
      _$_GetCustomRewardsDataResponse.fromJson;

  @override
  String? get broadcasterName;
  @override
  String? get broadcasterId;
  @override
  String? get id;
  @override
  DefaultImage? get image;
  @override
  String? get backgroundColor;
  @override
  bool? get isEnabled;
  @override
  int? get cost;
  @override
  String? get title;
  @override
  String? get prompt;
  @override
  bool? get isUserInputRequired;
  @override
  MaxPerStreamSetting? get maxPerStreamSetting;
  @override
  MaxPerUserPerStreamSetting? get maxPerUserPerStreamSetting;
  @override
  GlobalCooldownSetting? get globalCooldownSetting;
  @override
  bool? get isPaused;
  @override
  bool? get isInStock;
  @override
  DefaultImage? get defaultImage;
  @override
  bool? get shouldRedemptionsSkipRequestQueue;
  @override
  int? get redemptionsRedeemedCurrentStream;
  @override
  String? get cooldownExpiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomRewardsDataResponseCopyWith<_$_GetCustomRewardsDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
