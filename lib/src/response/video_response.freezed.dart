// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoResponse {
  List<VideoResponseData>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res, VideoResponse>;
  @useResult
  $Res call({List<VideoResponseData>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res, $Val extends VideoResponse>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

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
              as List<VideoResponseData>?,
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
abstract class _$$_VideoResponseCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$$_VideoResponseCopyWith(
          _$_VideoResponse value, $Res Function(_$_VideoResponse) then) =
      __$$_VideoResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VideoResponseData>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_VideoResponseCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res, _$_VideoResponse>
    implements _$$_VideoResponseCopyWith<$Res> {
  __$$_VideoResponseCopyWithImpl(
      _$_VideoResponse _value, $Res Function(_$_VideoResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_VideoResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<VideoResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResponse implements _VideoResponse {
  const _$_VideoResponse({final List<VideoResponseData>? data, this.pagination})
      : _data = data;

  factory _$_VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResponseFromJson(json);

  final List<VideoResponseData>? _data;
  @override
  List<VideoResponseData>? get data {
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
    return 'VideoResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResponse &&
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
  _$$_VideoResponseCopyWith<_$_VideoResponse> get copyWith =>
      __$$_VideoResponseCopyWithImpl<_$_VideoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResponseToJson(
      this,
    );
  }
}

abstract class _VideoResponse implements VideoResponse {
  const factory _VideoResponse(
      {final List<VideoResponseData>? data,
      final Pagination? pagination}) = _$_VideoResponse;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$_VideoResponse.fromJson;

  @override
  List<VideoResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResponseCopyWith<_$_VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResponseData _$VideoResponseDataFromJson(Map<String, dynamic> json) {
  return _VideoResponseData.fromJson(json);
}

/// @nodoc
mixin _$VideoResponseData {
  String? get id => throw _privateConstructorUsedError;
  String? get streamId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get viewable => throw _privateConstructorUsedError;
  int? get viewCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  List<MutedSegments>? get mutedSegments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResponseDataCopyWith<VideoResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseDataCopyWith<$Res> {
  factory $VideoResponseDataCopyWith(
          VideoResponseData value, $Res Function(VideoResponseData) then) =
      _$VideoResponseDataCopyWithImpl<$Res, VideoResponseData>;
  @useResult
  $Res call(
      {String? id,
      String? streamId,
      String? userId,
      String? userLogin,
      String? userName,
      String? title,
      String? description,
      String? createdAt,
      String? publishedAt,
      String? url,
      String? thumbnailUrl,
      String? viewable,
      int? viewCount,
      String? language,
      String? type,
      String? duration,
      List<MutedSegments>? mutedSegments});
}

/// @nodoc
class _$VideoResponseDataCopyWithImpl<$Res, $Val extends VideoResponseData>
    implements $VideoResponseDataCopyWith<$Res> {
  _$VideoResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? viewable = freezed,
    Object? viewCount = freezed,
    Object? language = freezed,
    Object? type = freezed,
    Object? duration = freezed,
    Object? mutedSegments = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      viewable: freezed == viewable
          ? _value.viewable
          : viewable // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedSegments: freezed == mutedSegments
          ? _value.mutedSegments
          : mutedSegments // ignore: cast_nullable_to_non_nullable
              as List<MutedSegments>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoResponseDataCopyWith<$Res>
    implements $VideoResponseDataCopyWith<$Res> {
  factory _$$_VideoResponseDataCopyWith(_$_VideoResponseData value,
          $Res Function(_$_VideoResponseData) then) =
      __$$_VideoResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? streamId,
      String? userId,
      String? userLogin,
      String? userName,
      String? title,
      String? description,
      String? createdAt,
      String? publishedAt,
      String? url,
      String? thumbnailUrl,
      String? viewable,
      int? viewCount,
      String? language,
      String? type,
      String? duration,
      List<MutedSegments>? mutedSegments});
}

/// @nodoc
class __$$_VideoResponseDataCopyWithImpl<$Res>
    extends _$VideoResponseDataCopyWithImpl<$Res, _$_VideoResponseData>
    implements _$$_VideoResponseDataCopyWith<$Res> {
  __$$_VideoResponseDataCopyWithImpl(
      _$_VideoResponseData _value, $Res Function(_$_VideoResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streamId = freezed,
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
    Object? url = freezed,
    Object? thumbnailUrl = freezed,
    Object? viewable = freezed,
    Object? viewCount = freezed,
    Object? language = freezed,
    Object? type = freezed,
    Object? duration = freezed,
    Object? mutedSegments = freezed,
  }) {
    return _then(_$_VideoResponseData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      viewable: freezed == viewable
          ? _value.viewable
          : viewable // ignore: cast_nullable_to_non_nullable
              as String?,
      viewCount: freezed == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedSegments: freezed == mutedSegments
          ? _value._mutedSegments
          : mutedSegments // ignore: cast_nullable_to_non_nullable
              as List<MutedSegments>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoResponseData implements _VideoResponseData {
  const _$_VideoResponseData(
      {this.id,
      this.streamId,
      this.userId,
      this.userLogin,
      this.userName,
      this.title,
      this.description,
      this.createdAt,
      this.publishedAt,
      this.url,
      this.thumbnailUrl,
      this.viewable,
      this.viewCount,
      this.language,
      this.type,
      this.duration,
      final List<MutedSegments>? mutedSegments})
      : _mutedSegments = mutedSegments;

  factory _$_VideoResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResponseDataFromJson(json);

  @override
  final String? id;
  @override
  final String? streamId;
  @override
  final String? userId;
  @override
  final String? userLogin;
  @override
  final String? userName;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? publishedAt;
  @override
  final String? url;
  @override
  final String? thumbnailUrl;
  @override
  final String? viewable;
  @override
  final int? viewCount;
  @override
  final String? language;
  @override
  final String? type;
  @override
  final String? duration;
  final List<MutedSegments>? _mutedSegments;
  @override
  List<MutedSegments>? get mutedSegments {
    final value = _mutedSegments;
    if (value == null) return null;
    if (_mutedSegments is EqualUnmodifiableListView) return _mutedSegments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VideoResponseData(id: $id, streamId: $streamId, userId: $userId, userLogin: $userLogin, userName: $userName, title: $title, description: $description, createdAt: $createdAt, publishedAt: $publishedAt, url: $url, thumbnailUrl: $thumbnailUrl, viewable: $viewable, viewCount: $viewCount, language: $language, type: $type, duration: $duration, mutedSegments: $mutedSegments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResponseData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.viewable, viewable) ||
                other.viewable == viewable) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            const DeepCollectionEquality()
                .equals(other._mutedSegments, _mutedSegments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streamId,
      userId,
      userLogin,
      userName,
      title,
      description,
      createdAt,
      publishedAt,
      url,
      thumbnailUrl,
      viewable,
      viewCount,
      language,
      type,
      duration,
      const DeepCollectionEquality().hash(_mutedSegments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoResponseDataCopyWith<_$_VideoResponseData> get copyWith =>
      __$$_VideoResponseDataCopyWithImpl<_$_VideoResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResponseDataToJson(
      this,
    );
  }
}

abstract class _VideoResponseData implements VideoResponseData {
  const factory _VideoResponseData(
      {final String? id,
      final String? streamId,
      final String? userId,
      final String? userLogin,
      final String? userName,
      final String? title,
      final String? description,
      final String? createdAt,
      final String? publishedAt,
      final String? url,
      final String? thumbnailUrl,
      final String? viewable,
      final int? viewCount,
      final String? language,
      final String? type,
      final String? duration,
      final List<MutedSegments>? mutedSegments}) = _$_VideoResponseData;

  factory _VideoResponseData.fromJson(Map<String, dynamic> json) =
      _$_VideoResponseData.fromJson;

  @override
  String? get id;
  @override
  String? get streamId;
  @override
  String? get userId;
  @override
  String? get userLogin;
  @override
  String? get userName;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  String? get publishedAt;
  @override
  String? get url;
  @override
  String? get thumbnailUrl;
  @override
  String? get viewable;
  @override
  int? get viewCount;
  @override
  String? get language;
  @override
  String? get type;
  @override
  String? get duration;
  @override
  List<MutedSegments>? get mutedSegments;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResponseDataCopyWith<_$_VideoResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

MutedSegments _$MutedSegmentsFromJson(Map<String, dynamic> json) {
  return _MutedSegments.fromJson(json);
}

/// @nodoc
mixin _$MutedSegments {
  int? get duration => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MutedSegmentsCopyWith<MutedSegments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutedSegmentsCopyWith<$Res> {
  factory $MutedSegmentsCopyWith(
          MutedSegments value, $Res Function(MutedSegments) then) =
      _$MutedSegmentsCopyWithImpl<$Res, MutedSegments>;
  @useResult
  $Res call({int? duration, int? offset});
}

/// @nodoc
class _$MutedSegmentsCopyWithImpl<$Res, $Val extends MutedSegments>
    implements $MutedSegmentsCopyWith<$Res> {
  _$MutedSegmentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MutedSegmentsCopyWith<$Res>
    implements $MutedSegmentsCopyWith<$Res> {
  factory _$$_MutedSegmentsCopyWith(
          _$_MutedSegments value, $Res Function(_$_MutedSegments) then) =
      __$$_MutedSegmentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? duration, int? offset});
}

/// @nodoc
class __$$_MutedSegmentsCopyWithImpl<$Res>
    extends _$MutedSegmentsCopyWithImpl<$Res, _$_MutedSegments>
    implements _$$_MutedSegmentsCopyWith<$Res> {
  __$$_MutedSegmentsCopyWithImpl(
      _$_MutedSegments _value, $Res Function(_$_MutedSegments) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_MutedSegments(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MutedSegments implements _MutedSegments {
  const _$_MutedSegments({this.duration, this.offset});

  factory _$_MutedSegments.fromJson(Map<String, dynamic> json) =>
      _$$_MutedSegmentsFromJson(json);

  @override
  final int? duration;
  @override
  final int? offset;

  @override
  String toString() {
    return 'MutedSegments(duration: $duration, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MutedSegments &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MutedSegmentsCopyWith<_$_MutedSegments> get copyWith =>
      __$$_MutedSegmentsCopyWithImpl<_$_MutedSegments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MutedSegmentsToJson(
      this,
    );
  }
}

abstract class _MutedSegments implements MutedSegments {
  const factory _MutedSegments({final int? duration, final int? offset}) =
      _$_MutedSegments;

  factory _MutedSegments.fromJson(Map<String, dynamic> json) =
      _$_MutedSegments.fromJson;

  @override
  int? get duration;
  @override
  int? get offset;
  @override
  @JsonKey(ignore: true)
  _$$_MutedSegmentsCopyWith<_$_MutedSegments> get copyWith =>
      throw _privateConstructorUsedError;
}
