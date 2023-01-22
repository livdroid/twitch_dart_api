// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatSettingsResponse _$ChatSettingsResponseFromJson(Map<String, dynamic> json) {
  return _ChatSettingsResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatSettingsResponse {
  List<ChatSettingsData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatSettingsResponseCopyWith<ChatSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSettingsResponseCopyWith<$Res> {
  factory $ChatSettingsResponseCopyWith(ChatSettingsResponse value,
          $Res Function(ChatSettingsResponse) then) =
      _$ChatSettingsResponseCopyWithImpl<$Res, ChatSettingsResponse>;
  @useResult
  $Res call({List<ChatSettingsData>? data});
}

/// @nodoc
class _$ChatSettingsResponseCopyWithImpl<$Res,
        $Val extends ChatSettingsResponse>
    implements $ChatSettingsResponseCopyWith<$Res> {
  _$ChatSettingsResponseCopyWithImpl(this._value, this._then);

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
              as List<ChatSettingsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatSettingsResponseCopyWith<$Res>
    implements $ChatSettingsResponseCopyWith<$Res> {
  factory _$$_ChatSettingsResponseCopyWith(_$_ChatSettingsResponse value,
          $Res Function(_$_ChatSettingsResponse) then) =
      __$$_ChatSettingsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatSettingsData>? data});
}

/// @nodoc
class __$$_ChatSettingsResponseCopyWithImpl<$Res>
    extends _$ChatSettingsResponseCopyWithImpl<$Res, _$_ChatSettingsResponse>
    implements _$$_ChatSettingsResponseCopyWith<$Res> {
  __$$_ChatSettingsResponseCopyWithImpl(_$_ChatSettingsResponse _value,
      $Res Function(_$_ChatSettingsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ChatSettingsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatSettingsData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatSettingsResponse implements _ChatSettingsResponse {
  const _$_ChatSettingsResponse({final List<ChatSettingsData>? data})
      : _data = data;

  factory _$_ChatSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatSettingsResponseFromJson(json);

  final List<ChatSettingsData>? _data;
  @override
  List<ChatSettingsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatSettingsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSettingsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatSettingsResponseCopyWith<_$_ChatSettingsResponse> get copyWith =>
      __$$_ChatSettingsResponseCopyWithImpl<_$_ChatSettingsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatSettingsResponseToJson(
      this,
    );
  }
}

abstract class _ChatSettingsResponse implements ChatSettingsResponse {
  const factory _ChatSettingsResponse({final List<ChatSettingsData>? data}) =
      _$_ChatSettingsResponse;

  factory _ChatSettingsResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatSettingsResponse.fromJson;

  @override
  List<ChatSettingsData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ChatSettingsResponseCopyWith<_$_ChatSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatSettingsData _$ChatSettingsDataFromJson(Map<String, dynamic> json) {
  return _ChatSettingsData.fromJson(json);
}

/// @nodoc
mixin _$ChatSettingsData {
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  bool? get slowMode => throw _privateConstructorUsedError;
  int? get slowModeWaitTime => throw _privateConstructorUsedError;
  bool? get followerMode => throw _privateConstructorUsedError;
  int? get followerModeDuration => throw _privateConstructorUsedError;
  bool? get subscriberMode => throw _privateConstructorUsedError;
  bool? get emoteMode => throw _privateConstructorUsedError;
  bool? get uniqueChatMode => throw _privateConstructorUsedError;
  bool? get nonModeratorChatDelay => throw _privateConstructorUsedError;
  int? get nonModeratorChatDelayDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatSettingsDataCopyWith<ChatSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSettingsDataCopyWith<$Res> {
  factory $ChatSettingsDataCopyWith(
          ChatSettingsData value, $Res Function(ChatSettingsData) then) =
      _$ChatSettingsDataCopyWithImpl<$Res, ChatSettingsData>;
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      bool? slowMode,
      int? slowModeWaitTime,
      bool? followerMode,
      int? followerModeDuration,
      bool? subscriberMode,
      bool? emoteMode,
      bool? uniqueChatMode,
      bool? nonModeratorChatDelay,
      int? nonModeratorChatDelayDuration});
}

/// @nodoc
class _$ChatSettingsDataCopyWithImpl<$Res, $Val extends ChatSettingsData>
    implements $ChatSettingsDataCopyWith<$Res> {
  _$ChatSettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? slowMode = freezed,
    Object? slowModeWaitTime = freezed,
    Object? followerMode = freezed,
    Object? followerModeDuration = freezed,
    Object? subscriberMode = freezed,
    Object? emoteMode = freezed,
    Object? uniqueChatMode = freezed,
    Object? nonModeratorChatDelay = freezed,
    Object? nonModeratorChatDelayDuration = freezed,
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
      slowMode: freezed == slowMode
          ? _value.slowMode
          : slowMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      slowModeWaitTime: freezed == slowModeWaitTime
          ? _value.slowModeWaitTime
          : slowModeWaitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      followerMode: freezed == followerMode
          ? _value.followerMode
          : followerMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      followerModeDuration: freezed == followerModeDuration
          ? _value.followerModeDuration
          : followerModeDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberMode: freezed == subscriberMode
          ? _value.subscriberMode
          : subscriberMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      emoteMode: freezed == emoteMode
          ? _value.emoteMode
          : emoteMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      uniqueChatMode: freezed == uniqueChatMode
          ? _value.uniqueChatMode
          : uniqueChatMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonModeratorChatDelay: freezed == nonModeratorChatDelay
          ? _value.nonModeratorChatDelay
          : nonModeratorChatDelay // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonModeratorChatDelayDuration: freezed == nonModeratorChatDelayDuration
          ? _value.nonModeratorChatDelayDuration
          : nonModeratorChatDelayDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatSettingsDataCopyWith<$Res>
    implements $ChatSettingsDataCopyWith<$Res> {
  factory _$$_ChatSettingsDataCopyWith(
          _$_ChatSettingsData value, $Res Function(_$_ChatSettingsData) then) =
      __$$_ChatSettingsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      bool? slowMode,
      int? slowModeWaitTime,
      bool? followerMode,
      int? followerModeDuration,
      bool? subscriberMode,
      bool? emoteMode,
      bool? uniqueChatMode,
      bool? nonModeratorChatDelay,
      int? nonModeratorChatDelayDuration});
}

/// @nodoc
class __$$_ChatSettingsDataCopyWithImpl<$Res>
    extends _$ChatSettingsDataCopyWithImpl<$Res, _$_ChatSettingsData>
    implements _$$_ChatSettingsDataCopyWith<$Res> {
  __$$_ChatSettingsDataCopyWithImpl(
      _$_ChatSettingsData _value, $Res Function(_$_ChatSettingsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? slowMode = freezed,
    Object? slowModeWaitTime = freezed,
    Object? followerMode = freezed,
    Object? followerModeDuration = freezed,
    Object? subscriberMode = freezed,
    Object? emoteMode = freezed,
    Object? uniqueChatMode = freezed,
    Object? nonModeratorChatDelay = freezed,
    Object? nonModeratorChatDelayDuration = freezed,
  }) {
    return _then(_$_ChatSettingsData(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      slowMode: freezed == slowMode
          ? _value.slowMode
          : slowMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      slowModeWaitTime: freezed == slowModeWaitTime
          ? _value.slowModeWaitTime
          : slowModeWaitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      followerMode: freezed == followerMode
          ? _value.followerMode
          : followerMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      followerModeDuration: freezed == followerModeDuration
          ? _value.followerModeDuration
          : followerModeDuration // ignore: cast_nullable_to_non_nullable
              as int?,
      subscriberMode: freezed == subscriberMode
          ? _value.subscriberMode
          : subscriberMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      emoteMode: freezed == emoteMode
          ? _value.emoteMode
          : emoteMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      uniqueChatMode: freezed == uniqueChatMode
          ? _value.uniqueChatMode
          : uniqueChatMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonModeratorChatDelay: freezed == nonModeratorChatDelay
          ? _value.nonModeratorChatDelay
          : nonModeratorChatDelay // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonModeratorChatDelayDuration: freezed == nonModeratorChatDelayDuration
          ? _value.nonModeratorChatDelayDuration
          : nonModeratorChatDelayDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatSettingsData implements _ChatSettingsData {
  const _$_ChatSettingsData(
      {this.broadcasterId,
      this.moderatorId,
      this.slowMode,
      this.slowModeWaitTime,
      this.followerMode,
      this.followerModeDuration,
      this.subscriberMode,
      this.emoteMode,
      this.uniqueChatMode,
      this.nonModeratorChatDelay,
      this.nonModeratorChatDelayDuration});

  factory _$_ChatSettingsData.fromJson(Map<String, dynamic> json) =>
      _$$_ChatSettingsDataFromJson(json);

  @override
  final String? broadcasterId;
  @override
  final String? moderatorId;
  @override
  final bool? slowMode;
  @override
  final int? slowModeWaitTime;
  @override
  final bool? followerMode;
  @override
  final int? followerModeDuration;
  @override
  final bool? subscriberMode;
  @override
  final bool? emoteMode;
  @override
  final bool? uniqueChatMode;
  @override
  final bool? nonModeratorChatDelay;
  @override
  final int? nonModeratorChatDelayDuration;

  @override
  String toString() {
    return 'ChatSettingsData(broadcasterId: $broadcasterId, moderatorId: $moderatorId, slowMode: $slowMode, slowModeWaitTime: $slowModeWaitTime, followerMode: $followerMode, followerModeDuration: $followerModeDuration, subscriberMode: $subscriberMode, emoteMode: $emoteMode, uniqueChatMode: $uniqueChatMode, nonModeratorChatDelay: $nonModeratorChatDelay, nonModeratorChatDelayDuration: $nonModeratorChatDelayDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatSettingsData &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.slowMode, slowMode) ||
                other.slowMode == slowMode) &&
            (identical(other.slowModeWaitTime, slowModeWaitTime) ||
                other.slowModeWaitTime == slowModeWaitTime) &&
            (identical(other.followerMode, followerMode) ||
                other.followerMode == followerMode) &&
            (identical(other.followerModeDuration, followerModeDuration) ||
                other.followerModeDuration == followerModeDuration) &&
            (identical(other.subscriberMode, subscriberMode) ||
                other.subscriberMode == subscriberMode) &&
            (identical(other.emoteMode, emoteMode) ||
                other.emoteMode == emoteMode) &&
            (identical(other.uniqueChatMode, uniqueChatMode) ||
                other.uniqueChatMode == uniqueChatMode) &&
            (identical(other.nonModeratorChatDelay, nonModeratorChatDelay) ||
                other.nonModeratorChatDelay == nonModeratorChatDelay) &&
            (identical(other.nonModeratorChatDelayDuration,
                    nonModeratorChatDelayDuration) ||
                other.nonModeratorChatDelayDuration ==
                    nonModeratorChatDelayDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      moderatorId,
      slowMode,
      slowModeWaitTime,
      followerMode,
      followerModeDuration,
      subscriberMode,
      emoteMode,
      uniqueChatMode,
      nonModeratorChatDelay,
      nonModeratorChatDelayDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatSettingsDataCopyWith<_$_ChatSettingsData> get copyWith =>
      __$$_ChatSettingsDataCopyWithImpl<_$_ChatSettingsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatSettingsDataToJson(
      this,
    );
  }
}

abstract class _ChatSettingsData implements ChatSettingsData {
  const factory _ChatSettingsData(
      {final String? broadcasterId,
      final String? moderatorId,
      final bool? slowMode,
      final int? slowModeWaitTime,
      final bool? followerMode,
      final int? followerModeDuration,
      final bool? subscriberMode,
      final bool? emoteMode,
      final bool? uniqueChatMode,
      final bool? nonModeratorChatDelay,
      final int? nonModeratorChatDelayDuration}) = _$_ChatSettingsData;

  factory _ChatSettingsData.fromJson(Map<String, dynamic> json) =
      _$_ChatSettingsData.fromJson;

  @override
  String? get broadcasterId;
  @override
  String? get moderatorId;
  @override
  bool? get slowMode;
  @override
  int? get slowModeWaitTime;
  @override
  bool? get followerMode;
  @override
  int? get followerModeDuration;
  @override
  bool? get subscriberMode;
  @override
  bool? get emoteMode;
  @override
  bool? get uniqueChatMode;
  @override
  bool? get nonModeratorChatDelay;
  @override
  int? get nonModeratorChatDelayDuration;
  @override
  @JsonKey(ignore: true)
  _$$_ChatSettingsDataCopyWith<_$_ChatSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}
