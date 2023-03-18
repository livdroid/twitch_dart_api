// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_streams_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStreamsResponse _$GetStreamsResponseFromJson(Map<String, dynamic> json) {
  return _GetStreamsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetStreamsResponse {
  List<GetStreamsResponseData>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStreamsResponseCopyWith<GetStreamsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStreamsResponseCopyWith<$Res> {
  factory $GetStreamsResponseCopyWith(
          GetStreamsResponse value, $Res Function(GetStreamsResponse) then) =
      _$GetStreamsResponseCopyWithImpl<$Res, GetStreamsResponse>;
  @useResult
  $Res call({List<GetStreamsResponseData>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$GetStreamsResponseCopyWithImpl<$Res, $Val extends GetStreamsResponse>
    implements $GetStreamsResponseCopyWith<$Res> {
  _$GetStreamsResponseCopyWithImpl(this._value, this._then);

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
              as List<GetStreamsResponseData>?,
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
abstract class _$$_GetStreamsResponseCopyWith<$Res>
    implements $GetStreamsResponseCopyWith<$Res> {
  factory _$$_GetStreamsResponseCopyWith(_$_GetStreamsResponse value,
          $Res Function(_$_GetStreamsResponse) then) =
      __$$_GetStreamsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetStreamsResponseData>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_GetStreamsResponseCopyWithImpl<$Res>
    extends _$GetStreamsResponseCopyWithImpl<$Res, _$_GetStreamsResponse>
    implements _$$_GetStreamsResponseCopyWith<$Res> {
  __$$_GetStreamsResponseCopyWithImpl(
      _$_GetStreamsResponse _value, $Res Function(_$_GetStreamsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_GetStreamsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetStreamsResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetStreamsResponse implements _GetStreamsResponse {
  const _$_GetStreamsResponse(
      {final List<GetStreamsResponseData>? data, this.pagination})
      : _data = data;

  factory _$_GetStreamsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetStreamsResponseFromJson(json);

  final List<GetStreamsResponseData>? _data;
  @override
  List<GetStreamsResponseData>? get data {
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
    return 'GetStreamsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStreamsResponse &&
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
  _$$_GetStreamsResponseCopyWith<_$_GetStreamsResponse> get copyWith =>
      __$$_GetStreamsResponseCopyWithImpl<_$_GetStreamsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetStreamsResponseToJson(
      this,
    );
  }
}

abstract class _GetStreamsResponse implements GetStreamsResponse {
  const factory _GetStreamsResponse(
      {final List<GetStreamsResponseData>? data,
      final Pagination? pagination}) = _$_GetStreamsResponse;

  factory _GetStreamsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetStreamsResponse.fromJson;

  @override
  List<GetStreamsResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_GetStreamsResponseCopyWith<_$_GetStreamsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GetStreamsResponseData _$GetStreamsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GetStreamsResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetStreamsResponseData {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get gameId => throw _privateConstructorUsedError;
  String? get gameName => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  int? get viewerCount => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  List<dynamic>? get tagIds => throw _privateConstructorUsedError;
  bool? get isMature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStreamsResponseDataCopyWith<GetStreamsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStreamsResponseDataCopyWith<$Res> {
  factory $GetStreamsResponseDataCopyWith(GetStreamsResponseData value,
          $Res Function(GetStreamsResponseData) then) =
      _$GetStreamsResponseDataCopyWithImpl<$Res, GetStreamsResponseData>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? userLogin,
      String? userName,
      String? gameId,
      String? gameName,
      String? type,
      String? title,
      List<String>? tags,
      int? viewerCount,
      DateTime? startedAt,
      String? language,
      String? thumbnailUrl,
      List<dynamic>? tagIds,
      bool? isMature});
}

/// @nodoc
class _$GetStreamsResponseDataCopyWithImpl<$Res,
        $Val extends GetStreamsResponseData>
    implements $GetStreamsResponseDataCopyWith<$Res> {
  _$GetStreamsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userName = freezed,
    Object? gameId = freezed,
    Object? gameName = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? tags = freezed,
    Object? viewerCount = freezed,
    Object? startedAt = freezed,
    Object? language = freezed,
    Object? thumbnailUrl = freezed,
    Object? tagIds = freezed,
    Object? isMature = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      viewerCount: freezed == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isMature: freezed == isMature
          ? _value.isMature
          : isMature // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetStreamsResponseDataCopyWith<$Res>
    implements $GetStreamsResponseDataCopyWith<$Res> {
  factory _$$_GetStreamsResponseDataCopyWith(_$_GetStreamsResponseData value,
          $Res Function(_$_GetStreamsResponseData) then) =
      __$$_GetStreamsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      String? userLogin,
      String? userName,
      String? gameId,
      String? gameName,
      String? type,
      String? title,
      List<String>? tags,
      int? viewerCount,
      DateTime? startedAt,
      String? language,
      String? thumbnailUrl,
      List<dynamic>? tagIds,
      bool? isMature});
}

/// @nodoc
class __$$_GetStreamsResponseDataCopyWithImpl<$Res>
    extends _$GetStreamsResponseDataCopyWithImpl<$Res,
        _$_GetStreamsResponseData>
    implements _$$_GetStreamsResponseDataCopyWith<$Res> {
  __$$_GetStreamsResponseDataCopyWithImpl(_$_GetStreamsResponseData _value,
      $Res Function(_$_GetStreamsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userName = freezed,
    Object? gameId = freezed,
    Object? gameName = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? tags = freezed,
    Object? viewerCount = freezed,
    Object? startedAt = freezed,
    Object? language = freezed,
    Object? thumbnailUrl = freezed,
    Object? tagIds = freezed,
    Object? isMature = freezed,
  }) {
    return _then(_$_GetStreamsResponseData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
      gameName: freezed == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      viewerCount: freezed == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tagIds: freezed == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isMature: freezed == isMature
          ? _value.isMature
          : isMature // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetStreamsResponseData implements _GetStreamsResponseData {
  const _$_GetStreamsResponseData(
      {this.id,
      this.userId,
      this.userLogin,
      this.userName,
      this.gameId,
      this.gameName,
      this.type,
      this.title,
      final List<String>? tags,
      this.viewerCount,
      this.startedAt,
      this.language,
      this.thumbnailUrl,
      final List<dynamic>? tagIds,
      this.isMature})
      : _tags = tags,
        _tagIds = tagIds;

  factory _$_GetStreamsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_GetStreamsResponseDataFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? userLogin;
  @override
  final String? userName;
  @override
  final String? gameId;
  @override
  final String? gameName;
  @override
  final String? type;
  @override
  final String? title;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? viewerCount;
  @override
  final DateTime? startedAt;
  @override
  final String? language;
  @override
  final String? thumbnailUrl;
  final List<dynamic>? _tagIds;
  @override
  List<dynamic>? get tagIds {
    final value = _tagIds;
    if (value == null) return null;
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isMature;

  @override
  String toString() {
    return 'GetStreamsResponseData(id: $id, userId: $userId, userLogin: $userLogin, userName: $userName, gameId: $gameId, gameName: $gameName, type: $type, title: $title, tags: $tags, viewerCount: $viewerCount, startedAt: $startedAt, language: $language, thumbnailUrl: $thumbnailUrl, tagIds: $tagIds, isMature: $isMature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStreamsResponseData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            (identical(other.isMature, isMature) ||
                other.isMature == isMature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      userLogin,
      userName,
      gameId,
      gameName,
      type,
      title,
      const DeepCollectionEquality().hash(_tags),
      viewerCount,
      startedAt,
      language,
      thumbnailUrl,
      const DeepCollectionEquality().hash(_tagIds),
      isMature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetStreamsResponseDataCopyWith<_$_GetStreamsResponseData> get copyWith =>
      __$$_GetStreamsResponseDataCopyWithImpl<_$_GetStreamsResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetStreamsResponseDataToJson(
      this,
    );
  }
}

abstract class _GetStreamsResponseData implements GetStreamsResponseData {
  const factory _GetStreamsResponseData(
      {final String? id,
      final String? userId,
      final String? userLogin,
      final String? userName,
      final String? gameId,
      final String? gameName,
      final String? type,
      final String? title,
      final List<String>? tags,
      final int? viewerCount,
      final DateTime? startedAt,
      final String? language,
      final String? thumbnailUrl,
      final List<dynamic>? tagIds,
      final bool? isMature}) = _$_GetStreamsResponseData;

  factory _GetStreamsResponseData.fromJson(Map<String, dynamic> json) =
      _$_GetStreamsResponseData.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  String? get userLogin;
  @override
  String? get userName;
  @override
  String? get gameId;
  @override
  String? get gameName;
  @override
  String? get type;
  @override
  String? get title;
  @override
  List<String>? get tags;
  @override
  int? get viewerCount;
  @override
  DateTime? get startedAt;
  @override
  String? get language;
  @override
  String? get thumbnailUrl;
  @override
  List<dynamic>? get tagIds;
  @override
  bool? get isMature;
  @override
  @JsonKey(ignore: true)
  _$$_GetStreamsResponseDataCopyWith<_$_GetStreamsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
