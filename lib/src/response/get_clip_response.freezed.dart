// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_clip_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetClipsResponse _$GetClipsResponseFromJson(Map<String, dynamic> json) {
  return _GetClipResponse.fromJson(json);
}

/// @nodoc
mixin _$GetClipsResponse {
  List<GetClipsResponseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetClipsResponseCopyWith<GetClipsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClipsResponseCopyWith<$Res> {
  factory $GetClipsResponseCopyWith(
          GetClipsResponse value, $Res Function(GetClipsResponse) then) =
      _$GetClipsResponseCopyWithImpl<$Res, GetClipsResponse>;
  @useResult
  $Res call({List<GetClipsResponseData>? data});
}

/// @nodoc
class _$GetClipsResponseCopyWithImpl<$Res, $Val extends GetClipsResponse>
    implements $GetClipsResponseCopyWith<$Res> {
  _$GetClipsResponseCopyWithImpl(this._value, this._then);

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
              as List<GetClipsResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetClipResponseCopyWith<$Res>
    implements $GetClipsResponseCopyWith<$Res> {
  factory _$$_GetClipResponseCopyWith(
          _$_GetClipResponse value, $Res Function(_$_GetClipResponse) then) =
      __$$_GetClipResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetClipsResponseData>? data});
}

/// @nodoc
class __$$_GetClipResponseCopyWithImpl<$Res>
    extends _$GetClipsResponseCopyWithImpl<$Res, _$_GetClipResponse>
    implements _$$_GetClipResponseCopyWith<$Res> {
  __$$_GetClipResponseCopyWithImpl(
      _$_GetClipResponse _value, $Res Function(_$_GetClipResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GetClipResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetClipsResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetClipResponse implements _GetClipResponse {
  const _$_GetClipResponse({final List<GetClipsResponseData>? data})
      : _data = data;

  factory _$_GetClipResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetClipResponseFromJson(json);

  final List<GetClipsResponseData>? _data;
  @override
  List<GetClipsResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetClipsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClipResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClipResponseCopyWith<_$_GetClipResponse> get copyWith =>
      __$$_GetClipResponseCopyWithImpl<_$_GetClipResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetClipResponseToJson(
      this,
    );
  }
}

abstract class _GetClipResponse implements GetClipsResponse {
  const factory _GetClipResponse({final List<GetClipsResponseData>? data}) =
      _$_GetClipResponse;

  factory _GetClipResponse.fromJson(Map<String, dynamic> json) =
      _$_GetClipResponse.fromJson;

  @override
  List<GetClipsResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetClipResponseCopyWith<_$_GetClipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetClipsResponseData _$GetClipsResponseDataFromJson(Map<String, dynamic> json) {
  return _GetClipsResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetClipsResponseData {
  String? get id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get embedUrl => throw _privateConstructorUsedError;
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  String? get creatorName => throw _privateConstructorUsedError;
  String? get videoId => throw _privateConstructorUsedError;
  String? get gameId => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get viewCount => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  double? get duration => throw _privateConstructorUsedError;
  int? get vodOffset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetClipsResponseDataCopyWith<GetClipsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClipsResponseDataCopyWith<$Res> {
  factory $GetClipsResponseDataCopyWith(GetClipsResponseData value,
          $Res Function(GetClipsResponseData) then) =
      _$GetClipsResponseDataCopyWithImpl<$Res, GetClipsResponseData>;
  @useResult
  $Res call(
      {String? id,
      String? url,
      String? embedUrl,
      String? broadcasterId,
      String? broadcasterName,
      String? creatorId,
      String? creatorName,
      String? videoId,
      String? gameId,
      String? language,
      String? title,
      int? viewCount,
      DateTime? createdAt,
      String? thumbnailUrl,
      double? duration,
      int? vodOffset});
}

/// @nodoc
class _$GetClipsResponseDataCopyWithImpl<$Res,
        $Val extends GetClipsResponseData>
    implements $GetClipsResponseDataCopyWith<$Res> {
  _$GetClipsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? embedUrl = freezed,
    Object? broadcasterId = freezed,
    Object? broadcasterName = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? videoId = freezed,
    Object? gameId = freezed,
    Object? language = freezed,
    Object? title = freezed,
    Object? viewCount = freezed,
    Object? createdAt = freezed,
    Object? thumbnailUrl = freezed,
    Object? duration = freezed,
    Object? vodOffset = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      vodOffset: freezed == vodOffset
          ? _value.vodOffset
          : vodOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetClipsResponseDataCopyWith<$Res>
    implements $GetClipsResponseDataCopyWith<$Res> {
  factory _$$_GetClipsResponseDataCopyWith(_$_GetClipsResponseData value,
          $Res Function(_$_GetClipsResponseData) then) =
      __$$_GetClipsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? url,
      String? embedUrl,
      String? broadcasterId,
      String? broadcasterName,
      String? creatorId,
      String? creatorName,
      String? videoId,
      String? gameId,
      String? language,
      String? title,
      int? viewCount,
      DateTime? createdAt,
      String? thumbnailUrl,
      double? duration,
      int? vodOffset});
}

/// @nodoc
class __$$_GetClipsResponseDataCopyWithImpl<$Res>
    extends _$GetClipsResponseDataCopyWithImpl<$Res, _$_GetClipsResponseData>
    implements _$$_GetClipsResponseDataCopyWith<$Res> {
  __$$_GetClipsResponseDataCopyWithImpl(_$_GetClipsResponseData _value,
      $Res Function(_$_GetClipsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? embedUrl = freezed,
    Object? broadcasterId = freezed,
    Object? broadcasterName = freezed,
    Object? creatorId = freezed,
    Object? creatorName = freezed,
    Object? videoId = freezed,
    Object? gameId = freezed,
    Object? language = freezed,
    Object? title = freezed,
    Object? viewCount = freezed,
    Object? createdAt = freezed,
    Object? thumbnailUrl = freezed,
    Object? duration = freezed,
    Object? vodOffset = freezed,
  }) {
    return _then(_$_GetClipsResponseData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      embedUrl: freezed == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorName: freezed == creatorName
          ? _value.creatorName
          : creatorName // ignore: cast_nullable_to_non_nullable
              as String?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String?,
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
      vodOffset: freezed == vodOffset
          ? _value.vodOffset
          : vodOffset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetClipsResponseData implements _GetClipsResponseData {
  const _$_GetClipsResponseData(
      {this.id,
      this.url,
      this.embedUrl,
      this.broadcasterId,
      this.broadcasterName,
      this.creatorId,
      this.creatorName,
      this.videoId,
      this.gameId,
      this.language,
      this.title,
      this.viewCount,
      this.createdAt,
      this.thumbnailUrl,
      this.duration,
      this.vodOffset});

  factory _$_GetClipsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_GetClipsResponseDataFromJson(json);

  @override
  final String? id;
  @override
  final String? url;
  @override
  final String? embedUrl;
  @override
  final String? broadcasterId;
  @override
  final String? broadcasterName;
  @override
  final String? creatorId;
  @override
  final String? creatorName;
  @override
  final String? videoId;
  @override
  final String? gameId;
  @override
  final String? language;
  @override
  final String? title;
  @override
  final int? viewCount;
  @override
  final DateTime? createdAt;
  @override
  final String? thumbnailUrl;
  @override
  final double? duration;
  @override
  final int? vodOffset;

  @override
  String toString() {
    return 'GetClipsResponseData(id: $id, url: $url, embedUrl: $embedUrl, broadcasterId: $broadcasterId, broadcasterName: $broadcasterName, creatorId: $creatorId, creatorName: $creatorName, videoId: $videoId, gameId: $gameId, language: $language, title: $title, viewCount: $viewCount, createdAt: $createdAt, thumbnailUrl: $thumbnailUrl, duration: $duration, vodOffset: $vodOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClipsResponseData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.embedUrl, embedUrl) ||
                other.embedUrl == embedUrl) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creatorName, creatorName) ||
                other.creatorName == creatorName) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.vodOffset, vodOffset) ||
                other.vodOffset == vodOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      embedUrl,
      broadcasterId,
      broadcasterName,
      creatorId,
      creatorName,
      videoId,
      gameId,
      language,
      title,
      viewCount,
      createdAt,
      thumbnailUrl,
      duration,
      vodOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClipsResponseDataCopyWith<_$_GetClipsResponseData> get copyWith =>
      __$$_GetClipsResponseDataCopyWithImpl<_$_GetClipsResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetClipsResponseDataToJson(
      this,
    );
  }
}

abstract class _GetClipsResponseData implements GetClipsResponseData {
  const factory _GetClipsResponseData(
      {final String? id,
      final String? url,
      final String? embedUrl,
      final String? broadcasterId,
      final String? broadcasterName,
      final String? creatorId,
      final String? creatorName,
      final String? videoId,
      final String? gameId,
      final String? language,
      final String? title,
      final int? viewCount,
      final DateTime? createdAt,
      final String? thumbnailUrl,
      final double? duration,
      final int? vodOffset}) = _$_GetClipsResponseData;

  factory _GetClipsResponseData.fromJson(Map<String, dynamic> json) =
      _$_GetClipsResponseData.fromJson;

  @override
  String? get id;
  @override
  String? get url;
  @override
  String? get embedUrl;
  @override
  String? get broadcasterId;
  @override
  String? get broadcasterName;
  @override
  String? get creatorId;
  @override
  String? get creatorName;
  @override
  String? get videoId;
  @override
  String? get gameId;
  @override
  String? get language;
  @override
  String? get title;
  @override
  int? get viewCount;
  @override
  DateTime? get createdAt;
  @override
  String? get thumbnailUrl;
  @override
  double? get duration;
  @override
  int? get vodOffset;
  @override
  @JsonKey(ignore: true)
  _$$_GetClipsResponseDataCopyWith<_$_GetClipsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
