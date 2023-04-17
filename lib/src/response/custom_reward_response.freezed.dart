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
