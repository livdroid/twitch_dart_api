// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_custom_reward_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateCustomRewardResponse _$CreateCustomRewardResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateCustomRewardResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateCustomRewardResponse {
  List<GetCustomRewardsData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCustomRewardResponseCopyWith<CreateCustomRewardResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCustomRewardResponseCopyWith<$Res> {
  factory $CreateCustomRewardResponseCopyWith(CreateCustomRewardResponse value,
          $Res Function(CreateCustomRewardResponse) then) =
      _$CreateCustomRewardResponseCopyWithImpl<$Res,
          CreateCustomRewardResponse>;
  @useResult
  $Res call({List<GetCustomRewardsData>? data});
}

/// @nodoc
class _$CreateCustomRewardResponseCopyWithImpl<$Res,
        $Val extends CreateCustomRewardResponse>
    implements $CreateCustomRewardResponseCopyWith<$Res> {
  _$CreateCustomRewardResponseCopyWithImpl(this._value, this._then);

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
              as List<GetCustomRewardsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateCustomRewardResponseCopyWith<$Res>
    implements $CreateCustomRewardResponseCopyWith<$Res> {
  factory _$$_CreateCustomRewardResponseCopyWith(
          _$_CreateCustomRewardResponse value,
          $Res Function(_$_CreateCustomRewardResponse) then) =
      __$$_CreateCustomRewardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetCustomRewardsData>? data});
}

/// @nodoc
class __$$_CreateCustomRewardResponseCopyWithImpl<$Res>
    extends _$CreateCustomRewardResponseCopyWithImpl<$Res,
        _$_CreateCustomRewardResponse>
    implements _$$_CreateCustomRewardResponseCopyWith<$Res> {
  __$$_CreateCustomRewardResponseCopyWithImpl(
      _$_CreateCustomRewardResponse _value,
      $Res Function(_$_CreateCustomRewardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CreateCustomRewardResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetCustomRewardsData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateCustomRewardResponse implements _CreateCustomRewardResponse {
  const _$_CreateCustomRewardResponse({final List<GetCustomRewardsData>? data})
      : _data = data;

  factory _$_CreateCustomRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateCustomRewardResponseFromJson(json);

  final List<GetCustomRewardsData>? _data;
  @override
  List<GetCustomRewardsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateCustomRewardResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateCustomRewardResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCustomRewardResponseCopyWith<_$_CreateCustomRewardResponse>
      get copyWith => __$$_CreateCustomRewardResponseCopyWithImpl<
          _$_CreateCustomRewardResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateCustomRewardResponseToJson(
      this,
    );
  }
}

abstract class _CreateCustomRewardResponse
    implements CreateCustomRewardResponse {
  const factory _CreateCustomRewardResponse(
      {final List<GetCustomRewardsData>? data}) = _$_CreateCustomRewardResponse;

  factory _CreateCustomRewardResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateCustomRewardResponse.fromJson;

  @override
  List<GetCustomRewardsData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CreateCustomRewardResponseCopyWith<_$_CreateCustomRewardResponse>
      get copyWith => throw _privateConstructorUsedError;
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
