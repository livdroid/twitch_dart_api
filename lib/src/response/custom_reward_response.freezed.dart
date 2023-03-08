// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_reward_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomRewardResponse _$CustomRewardResponseFromJson(Map<String, dynamic> json) {
  return _CustomRewardResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomRewardResponse {
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomRewardResponseCopyWith<CustomRewardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomRewardResponseCopyWith<$Res> {
  factory $CustomRewardResponseCopyWith(CustomRewardResponse value,
          $Res Function(CustomRewardResponse) then) =
      _$CustomRewardResponseCopyWithImpl<$Res, CustomRewardResponse>;
  @useResult
  $Res call({List<Datum>? data});
}

/// @nodoc
class _$CustomRewardResponseCopyWithImpl<$Res,
        $Val extends CustomRewardResponse>
    implements $CustomRewardResponseCopyWith<$Res> {
  _$CustomRewardResponseCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomRewardResponseCopyWith<$Res>
    implements $CustomRewardResponseCopyWith<$Res> {
  factory _$$_CustomRewardResponseCopyWith(_$_CustomRewardResponse value,
          $Res Function(_$_CustomRewardResponse) then) =
      __$$_CustomRewardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum>? data});
}

/// @nodoc
class __$$_CustomRewardResponseCopyWithImpl<$Res>
    extends _$CustomRewardResponseCopyWithImpl<$Res, _$_CustomRewardResponse>
    implements _$$_CustomRewardResponseCopyWith<$Res> {
  __$$_CustomRewardResponseCopyWithImpl(_$_CustomRewardResponse _value,
      $Res Function(_$_CustomRewardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CustomRewardResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomRewardResponse implements _CustomRewardResponse {
  const _$_CustomRewardResponse({final List<Datum>? data}) : _data = data;

  factory _$_CustomRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CustomRewardResponseFromJson(json);

  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomRewardResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomRewardResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomRewardResponseCopyWith<_$_CustomRewardResponse> get copyWith =>
      __$$_CustomRewardResponseCopyWithImpl<_$_CustomRewardResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomRewardResponseToJson(
      this,
    );
  }
}

abstract class _CustomRewardResponse implements CustomRewardResponse {
  const factory _CustomRewardResponse({final List<Datum>? data}) =
      _$_CustomRewardResponse;

  factory _CustomRewardResponse.fromJson(Map<String, dynamic> json) =
      _$_CustomRewardResponse.fromJson;

  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CustomRewardResponseCopyWith<_$_CustomRewardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get broadcasterLogin => throw _privateConstructorUsedError;
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  dynamic? get image => throw _privateConstructorUsedError;
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
  dynamic? get redemptionsRedeemedCurrentStream =>
      throw _privateConstructorUsedError;
  dynamic? get cooldownExpiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterLogin,
      String? broadcasterId,
      String? id,
      dynamic? image,
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
      dynamic? redemptionsRedeemedCurrentStream,
      dynamic? cooldownExpiresAt});

  $MaxPerStreamSettingCopyWith<$Res>? get maxPerStreamSetting;
  $MaxPerUserPerStreamSettingCopyWith<$Res>? get maxPerUserPerStreamSetting;
  $GlobalCooldownSettingCopyWith<$Res>? get globalCooldownSetting;
  $DefaultImageCopyWith<$Res>? get defaultImage;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic?,
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
              as dynamic?,
      cooldownExpiresAt: freezed == cooldownExpiresAt
          ? _value.cooldownExpiresAt
          : cooldownExpiresAt // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ) as $Val);
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
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterName,
      String? broadcasterLogin,
      String? broadcasterId,
      String? id,
      dynamic? image,
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
      dynamic? redemptionsRedeemedCurrentStream,
      dynamic? cooldownExpiresAt});

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
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterName = freezed,
    Object? broadcasterLogin = freezed,
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
    return _then(_$_Datum(
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic?,
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
              as dynamic?,
      cooldownExpiresAt: freezed == cooldownExpiresAt
          ? _value.cooldownExpiresAt
          : cooldownExpiresAt // ignore: cast_nullable_to_non_nullable
              as dynamic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.broadcasterName,
      this.broadcasterLogin,
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

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final String? broadcasterName;
  @override
  final String? broadcasterLogin;
  @override
  final String? broadcasterId;
  @override
  final String? id;
  @override
  final dynamic? image;
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
  final dynamic? redemptionsRedeemedCurrentStream;
  @override
  final dynamic? cooldownExpiresAt;

  @override
  String toString() {
    return 'Datum(broadcasterName: $broadcasterName, broadcasterLogin: $broadcasterLogin, broadcasterId: $broadcasterId, id: $id, image: $image, backgroundColor: $backgroundColor, isEnabled: $isEnabled, cost: $cost, title: $title, prompt: $prompt, isUserInputRequired: $isUserInputRequired, maxPerStreamSetting: $maxPerStreamSetting, maxPerUserPerStreamSetting: $maxPerUserPerStreamSetting, globalCooldownSetting: $globalCooldownSetting, isPaused: $isPaused, isInStock: $isInStock, defaultImage: $defaultImage, shouldRedemptionsSkipRequestQueue: $shouldRedemptionsSkipRequestQueue, redemptionsRedeemedCurrentStream: $redemptionsRedeemedCurrentStream, cooldownExpiresAt: $cooldownExpiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
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
            const DeepCollectionEquality().equals(
                other.redemptionsRedeemedCurrentStream,
                redemptionsRedeemedCurrentStream) &&
            const DeepCollectionEquality()
                .equals(other.cooldownExpiresAt, cooldownExpiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        broadcasterName,
        broadcasterLogin,
        broadcasterId,
        id,
        const DeepCollectionEquality().hash(image),
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
        const DeepCollectionEquality().hash(redemptionsRedeemedCurrentStream),
        const DeepCollectionEquality().hash(cooldownExpiresAt)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final String? broadcasterName,
      final String? broadcasterLogin,
      final String? broadcasterId,
      final String? id,
      final dynamic? image,
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
      final dynamic? redemptionsRedeemedCurrentStream,
      final dynamic? cooldownExpiresAt}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  String? get broadcasterName;
  @override
  String? get broadcasterLogin;
  @override
  String? get broadcasterId;
  @override
  String? get id;
  @override
  dynamic? get image;
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
  dynamic? get redemptionsRedeemedCurrentStream;
  @override
  dynamic? get cooldownExpiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultImage _$DefaultImageFromJson(Map<String, dynamic> json) {
  return _DefaultImage.fromJson(json);
}

/// @nodoc
mixin _$DefaultImage {
  String? get url1X => throw _privateConstructorUsedError;
  String? get url2X => throw _privateConstructorUsedError;
  String? get url4X => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultImageCopyWith<DefaultImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultImageCopyWith<$Res> {
  factory $DefaultImageCopyWith(
          DefaultImage value, $Res Function(DefaultImage) then) =
      _$DefaultImageCopyWithImpl<$Res, DefaultImage>;
  @useResult
  $Res call({String? url1X, String? url2X, String? url4X});
}

/// @nodoc
class _$DefaultImageCopyWithImpl<$Res, $Val extends DefaultImage>
    implements $DefaultImageCopyWith<$Res> {
  _$DefaultImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url1X = freezed,
    Object? url2X = freezed,
    Object? url4X = freezed,
  }) {
    return _then(_value.copyWith(
      url1X: freezed == url1X
          ? _value.url1X
          : url1X // ignore: cast_nullable_to_non_nullable
              as String?,
      url2X: freezed == url2X
          ? _value.url2X
          : url2X // ignore: cast_nullable_to_non_nullable
              as String?,
      url4X: freezed == url4X
          ? _value.url4X
          : url4X // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DefaultImageCopyWith<$Res>
    implements $DefaultImageCopyWith<$Res> {
  factory _$$_DefaultImageCopyWith(
          _$_DefaultImage value, $Res Function(_$_DefaultImage) then) =
      __$$_DefaultImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url1X, String? url2X, String? url4X});
}

/// @nodoc
class __$$_DefaultImageCopyWithImpl<$Res>
    extends _$DefaultImageCopyWithImpl<$Res, _$_DefaultImage>
    implements _$$_DefaultImageCopyWith<$Res> {
  __$$_DefaultImageCopyWithImpl(
      _$_DefaultImage _value, $Res Function(_$_DefaultImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url1X = freezed,
    Object? url2X = freezed,
    Object? url4X = freezed,
  }) {
    return _then(_$_DefaultImage(
      url1X: freezed == url1X
          ? _value.url1X
          : url1X // ignore: cast_nullable_to_non_nullable
              as String?,
      url2X: freezed == url2X
          ? _value.url2X
          : url2X // ignore: cast_nullable_to_non_nullable
              as String?,
      url4X: freezed == url4X
          ? _value.url4X
          : url4X // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultImage implements _DefaultImage {
  const _$_DefaultImage({this.url1X, this.url2X, this.url4X});

  factory _$_DefaultImage.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultImageFromJson(json);

  @override
  final String? url1X;
  @override
  final String? url2X;
  @override
  final String? url4X;

  @override
  String toString() {
    return 'DefaultImage(url1X: $url1X, url2X: $url2X, url4X: $url4X)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultImage &&
            (identical(other.url1X, url1X) || other.url1X == url1X) &&
            (identical(other.url2X, url2X) || other.url2X == url2X) &&
            (identical(other.url4X, url4X) || other.url4X == url4X));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url1X, url2X, url4X);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultImageCopyWith<_$_DefaultImage> get copyWith =>
      __$$_DefaultImageCopyWithImpl<_$_DefaultImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultImageToJson(
      this,
    );
  }
}

abstract class _DefaultImage implements DefaultImage {
  const factory _DefaultImage(
      {final String? url1X,
      final String? url2X,
      final String? url4X}) = _$_DefaultImage;

  factory _DefaultImage.fromJson(Map<String, dynamic> json) =
      _$_DefaultImage.fromJson;

  @override
  String? get url1X;
  @override
  String? get url2X;
  @override
  String? get url4X;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultImageCopyWith<_$_DefaultImage> get copyWith =>
      throw _privateConstructorUsedError;
}

GlobalCooldownSetting _$GlobalCooldownSettingFromJson(
    Map<String, dynamic> json) {
  return _GlobalCooldownSetting.fromJson(json);
}

/// @nodoc
mixin _$GlobalCooldownSetting {
  bool? get isEnabled => throw _privateConstructorUsedError;
  int? get globalCooldownSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GlobalCooldownSettingCopyWith<GlobalCooldownSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalCooldownSettingCopyWith<$Res> {
  factory $GlobalCooldownSettingCopyWith(GlobalCooldownSetting value,
          $Res Function(GlobalCooldownSetting) then) =
      _$GlobalCooldownSettingCopyWithImpl<$Res, GlobalCooldownSetting>;
  @useResult
  $Res call({bool? isEnabled, int? globalCooldownSeconds});
}

/// @nodoc
class _$GlobalCooldownSettingCopyWithImpl<$Res,
        $Val extends GlobalCooldownSetting>
    implements $GlobalCooldownSettingCopyWith<$Res> {
  _$GlobalCooldownSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? globalCooldownSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      globalCooldownSeconds: freezed == globalCooldownSeconds
          ? _value.globalCooldownSeconds
          : globalCooldownSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GlobalCooldownSettingCopyWith<$Res>
    implements $GlobalCooldownSettingCopyWith<$Res> {
  factory _$$_GlobalCooldownSettingCopyWith(_$_GlobalCooldownSetting value,
          $Res Function(_$_GlobalCooldownSetting) then) =
      __$$_GlobalCooldownSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isEnabled, int? globalCooldownSeconds});
}

/// @nodoc
class __$$_GlobalCooldownSettingCopyWithImpl<$Res>
    extends _$GlobalCooldownSettingCopyWithImpl<$Res, _$_GlobalCooldownSetting>
    implements _$$_GlobalCooldownSettingCopyWith<$Res> {
  __$$_GlobalCooldownSettingCopyWithImpl(_$_GlobalCooldownSetting _value,
      $Res Function(_$_GlobalCooldownSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? globalCooldownSeconds = freezed,
  }) {
    return _then(_$_GlobalCooldownSetting(
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      globalCooldownSeconds: freezed == globalCooldownSeconds
          ? _value.globalCooldownSeconds
          : globalCooldownSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GlobalCooldownSetting implements _GlobalCooldownSetting {
  const _$_GlobalCooldownSetting({this.isEnabled, this.globalCooldownSeconds});

  factory _$_GlobalCooldownSetting.fromJson(Map<String, dynamic> json) =>
      _$$_GlobalCooldownSettingFromJson(json);

  @override
  final bool? isEnabled;
  @override
  final int? globalCooldownSeconds;

  @override
  String toString() {
    return 'GlobalCooldownSetting(isEnabled: $isEnabled, globalCooldownSeconds: $globalCooldownSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GlobalCooldownSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.globalCooldownSeconds, globalCooldownSeconds) ||
                other.globalCooldownSeconds == globalCooldownSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isEnabled, globalCooldownSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GlobalCooldownSettingCopyWith<_$_GlobalCooldownSetting> get copyWith =>
      __$$_GlobalCooldownSettingCopyWithImpl<_$_GlobalCooldownSetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GlobalCooldownSettingToJson(
      this,
    );
  }
}

abstract class _GlobalCooldownSetting implements GlobalCooldownSetting {
  const factory _GlobalCooldownSetting(
      {final bool? isEnabled,
      final int? globalCooldownSeconds}) = _$_GlobalCooldownSetting;

  factory _GlobalCooldownSetting.fromJson(Map<String, dynamic> json) =
      _$_GlobalCooldownSetting.fromJson;

  @override
  bool? get isEnabled;
  @override
  int? get globalCooldownSeconds;
  @override
  @JsonKey(ignore: true)
  _$$_GlobalCooldownSettingCopyWith<_$_GlobalCooldownSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

MaxPerStreamSetting _$MaxPerStreamSettingFromJson(Map<String, dynamic> json) {
  return _MaxPerStreamSetting.fromJson(json);
}

/// @nodoc
mixin _$MaxPerStreamSetting {
  bool? get isEnabled => throw _privateConstructorUsedError;
  int? get maxPerStream => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaxPerStreamSettingCopyWith<MaxPerStreamSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaxPerStreamSettingCopyWith<$Res> {
  factory $MaxPerStreamSettingCopyWith(
          MaxPerStreamSetting value, $Res Function(MaxPerStreamSetting) then) =
      _$MaxPerStreamSettingCopyWithImpl<$Res, MaxPerStreamSetting>;
  @useResult
  $Res call({bool? isEnabled, int? maxPerStream});
}

/// @nodoc
class _$MaxPerStreamSettingCopyWithImpl<$Res, $Val extends MaxPerStreamSetting>
    implements $MaxPerStreamSettingCopyWith<$Res> {
  _$MaxPerStreamSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? maxPerStream = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxPerStream: freezed == maxPerStream
          ? _value.maxPerStream
          : maxPerStream // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaxPerStreamSettingCopyWith<$Res>
    implements $MaxPerStreamSettingCopyWith<$Res> {
  factory _$$_MaxPerStreamSettingCopyWith(_$_MaxPerStreamSetting value,
          $Res Function(_$_MaxPerStreamSetting) then) =
      __$$_MaxPerStreamSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isEnabled, int? maxPerStream});
}

/// @nodoc
class __$$_MaxPerStreamSettingCopyWithImpl<$Res>
    extends _$MaxPerStreamSettingCopyWithImpl<$Res, _$_MaxPerStreamSetting>
    implements _$$_MaxPerStreamSettingCopyWith<$Res> {
  __$$_MaxPerStreamSettingCopyWithImpl(_$_MaxPerStreamSetting _value,
      $Res Function(_$_MaxPerStreamSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? maxPerStream = freezed,
  }) {
    return _then(_$_MaxPerStreamSetting(
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxPerStream: freezed == maxPerStream
          ? _value.maxPerStream
          : maxPerStream // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaxPerStreamSetting implements _MaxPerStreamSetting {
  const _$_MaxPerStreamSetting({this.isEnabled, this.maxPerStream});

  factory _$_MaxPerStreamSetting.fromJson(Map<String, dynamic> json) =>
      _$$_MaxPerStreamSettingFromJson(json);

  @override
  final bool? isEnabled;
  @override
  final int? maxPerStream;

  @override
  String toString() {
    return 'MaxPerStreamSetting(isEnabled: $isEnabled, maxPerStream: $maxPerStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaxPerStreamSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.maxPerStream, maxPerStream) ||
                other.maxPerStream == maxPerStream));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, maxPerStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaxPerStreamSettingCopyWith<_$_MaxPerStreamSetting> get copyWith =>
      __$$_MaxPerStreamSettingCopyWithImpl<_$_MaxPerStreamSetting>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaxPerStreamSettingToJson(
      this,
    );
  }
}

abstract class _MaxPerStreamSetting implements MaxPerStreamSetting {
  const factory _MaxPerStreamSetting(
      {final bool? isEnabled,
      final int? maxPerStream}) = _$_MaxPerStreamSetting;

  factory _MaxPerStreamSetting.fromJson(Map<String, dynamic> json) =
      _$_MaxPerStreamSetting.fromJson;

  @override
  bool? get isEnabled;
  @override
  int? get maxPerStream;
  @override
  @JsonKey(ignore: true)
  _$$_MaxPerStreamSettingCopyWith<_$_MaxPerStreamSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

MaxPerUserPerStreamSetting _$MaxPerUserPerStreamSettingFromJson(
    Map<String, dynamic> json) {
  return _MaxPerUserPerStreamSetting.fromJson(json);
}

/// @nodoc
mixin _$MaxPerUserPerStreamSetting {
  bool? get isEnabled => throw _privateConstructorUsedError;
  int? get maxPerUserPerStream => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaxPerUserPerStreamSettingCopyWith<MaxPerUserPerStreamSetting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaxPerUserPerStreamSettingCopyWith<$Res> {
  factory $MaxPerUserPerStreamSettingCopyWith(MaxPerUserPerStreamSetting value,
          $Res Function(MaxPerUserPerStreamSetting) then) =
      _$MaxPerUserPerStreamSettingCopyWithImpl<$Res,
          MaxPerUserPerStreamSetting>;
  @useResult
  $Res call({bool? isEnabled, int? maxPerUserPerStream});
}

/// @nodoc
class _$MaxPerUserPerStreamSettingCopyWithImpl<$Res,
        $Val extends MaxPerUserPerStreamSetting>
    implements $MaxPerUserPerStreamSettingCopyWith<$Res> {
  _$MaxPerUserPerStreamSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? maxPerUserPerStream = freezed,
  }) {
    return _then(_value.copyWith(
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxPerUserPerStream: freezed == maxPerUserPerStream
          ? _value.maxPerUserPerStream
          : maxPerUserPerStream // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MaxPerUserPerStreamSettingCopyWith<$Res>
    implements $MaxPerUserPerStreamSettingCopyWith<$Res> {
  factory _$$_MaxPerUserPerStreamSettingCopyWith(
          _$_MaxPerUserPerStreamSetting value,
          $Res Function(_$_MaxPerUserPerStreamSetting) then) =
      __$$_MaxPerUserPerStreamSettingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isEnabled, int? maxPerUserPerStream});
}

/// @nodoc
class __$$_MaxPerUserPerStreamSettingCopyWithImpl<$Res>
    extends _$MaxPerUserPerStreamSettingCopyWithImpl<$Res,
        _$_MaxPerUserPerStreamSetting>
    implements _$$_MaxPerUserPerStreamSettingCopyWith<$Res> {
  __$$_MaxPerUserPerStreamSettingCopyWithImpl(
      _$_MaxPerUserPerStreamSetting _value,
      $Res Function(_$_MaxPerUserPerStreamSetting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEnabled = freezed,
    Object? maxPerUserPerStream = freezed,
  }) {
    return _then(_$_MaxPerUserPerStreamSetting(
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxPerUserPerStream: freezed == maxPerUserPerStream
          ? _value.maxPerUserPerStream
          : maxPerUserPerStream // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaxPerUserPerStreamSetting implements _MaxPerUserPerStreamSetting {
  const _$_MaxPerUserPerStreamSetting(
      {this.isEnabled, this.maxPerUserPerStream});

  factory _$_MaxPerUserPerStreamSetting.fromJson(Map<String, dynamic> json) =>
      _$$_MaxPerUserPerStreamSettingFromJson(json);

  @override
  final bool? isEnabled;
  @override
  final int? maxPerUserPerStream;

  @override
  String toString() {
    return 'MaxPerUserPerStreamSetting(isEnabled: $isEnabled, maxPerUserPerStream: $maxPerUserPerStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaxPerUserPerStreamSetting &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.maxPerUserPerStream, maxPerUserPerStream) ||
                other.maxPerUserPerStream == maxPerUserPerStream));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isEnabled, maxPerUserPerStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaxPerUserPerStreamSettingCopyWith<_$_MaxPerUserPerStreamSetting>
      get copyWith => __$$_MaxPerUserPerStreamSettingCopyWithImpl<
          _$_MaxPerUserPerStreamSetting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaxPerUserPerStreamSettingToJson(
      this,
    );
  }
}

abstract class _MaxPerUserPerStreamSetting
    implements MaxPerUserPerStreamSetting {
  const factory _MaxPerUserPerStreamSetting(
      {final bool? isEnabled,
      final int? maxPerUserPerStream}) = _$_MaxPerUserPerStreamSetting;

  factory _MaxPerUserPerStreamSetting.fromJson(Map<String, dynamic> json) =
      _$_MaxPerUserPerStreamSetting.fromJson;

  @override
  bool? get isEnabled;
  @override
  int? get maxPerUserPerStream;
  @override
  @JsonKey(ignore: true)
  _$$_MaxPerUserPerStreamSettingCopyWith<_$_MaxPerUserPerStreamSetting>
      get copyWith => throw _privateConstructorUsedError;
}
