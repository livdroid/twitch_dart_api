// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_blocked_terms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBlockedTermsResponse _$GetBlockedTermsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetBlockedTermsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetBlockedTermsResponse {
  List<GetBlockedTermsResponseData>? get data =>
      throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBlockedTermsResponseCopyWith<GetBlockedTermsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBlockedTermsResponseCopyWith<$Res> {
  factory $GetBlockedTermsResponseCopyWith(GetBlockedTermsResponse value,
          $Res Function(GetBlockedTermsResponse) then) =
      _$GetBlockedTermsResponseCopyWithImpl<$Res, GetBlockedTermsResponse>;
  @useResult
  $Res call({List<GetBlockedTermsResponseData>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$GetBlockedTermsResponseCopyWithImpl<$Res,
        $Val extends GetBlockedTermsResponse>
    implements $GetBlockedTermsResponseCopyWith<$Res> {
  _$GetBlockedTermsResponseCopyWithImpl(this._value, this._then);

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
              as List<GetBlockedTermsResponseData>?,
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
abstract class _$$_GetBlockedTermsResponseCopyWith<$Res>
    implements $GetBlockedTermsResponseCopyWith<$Res> {
  factory _$$_GetBlockedTermsResponseCopyWith(_$_GetBlockedTermsResponse value,
          $Res Function(_$_GetBlockedTermsResponse) then) =
      __$$_GetBlockedTermsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetBlockedTermsResponseData>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_GetBlockedTermsResponseCopyWithImpl<$Res>
    extends _$GetBlockedTermsResponseCopyWithImpl<$Res,
        _$_GetBlockedTermsResponse>
    implements _$$_GetBlockedTermsResponseCopyWith<$Res> {
  __$$_GetBlockedTermsResponseCopyWithImpl(_$_GetBlockedTermsResponse _value,
      $Res Function(_$_GetBlockedTermsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_GetBlockedTermsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetBlockedTermsResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBlockedTermsResponse implements _GetBlockedTermsResponse {
  const _$_GetBlockedTermsResponse(
      {final List<GetBlockedTermsResponseData>? data, this.pagination})
      : _data = data;

  factory _$_GetBlockedTermsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetBlockedTermsResponseFromJson(json);

  final List<GetBlockedTermsResponseData>? _data;
  @override
  List<GetBlockedTermsResponseData>? get data {
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
    return 'GetBlockedTermsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBlockedTermsResponse &&
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
  _$$_GetBlockedTermsResponseCopyWith<_$_GetBlockedTermsResponse>
      get copyWith =>
          __$$_GetBlockedTermsResponseCopyWithImpl<_$_GetBlockedTermsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBlockedTermsResponseToJson(
      this,
    );
  }
}

abstract class _GetBlockedTermsResponse implements GetBlockedTermsResponse {
  const factory _GetBlockedTermsResponse(
      {final List<GetBlockedTermsResponseData>? data,
      final Pagination? pagination}) = _$_GetBlockedTermsResponse;

  factory _GetBlockedTermsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetBlockedTermsResponse.fromJson;

  @override
  List<GetBlockedTermsResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_GetBlockedTermsResponseCopyWith<_$_GetBlockedTermsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetBlockedTermsResponseData _$GetBlockedTermsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GetBlockedTermsResponseData.fromJson(json);
}

/// @nodoc
mixin _$GetBlockedTermsResponseData {
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBlockedTermsResponseDataCopyWith<GetBlockedTermsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBlockedTermsResponseDataCopyWith<$Res> {
  factory $GetBlockedTermsResponseDataCopyWith(
          GetBlockedTermsResponseData value,
          $Res Function(GetBlockedTermsResponseData) then) =
      _$GetBlockedTermsResponseDataCopyWithImpl<$Res,
          GetBlockedTermsResponseData>;
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      String? id,
      String? text,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? expiresAt});
}

/// @nodoc
class _$GetBlockedTermsResponseDataCopyWithImpl<$Res,
        $Val extends GetBlockedTermsResponseData>
    implements $GetBlockedTermsResponseDataCopyWith<$Res> {
  _$GetBlockedTermsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expiresAt = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetBlockedTermsResponseDataCopyWith<$Res>
    implements $GetBlockedTermsResponseDataCopyWith<$Res> {
  factory _$$_GetBlockedTermsResponseDataCopyWith(
          _$_GetBlockedTermsResponseData value,
          $Res Function(_$_GetBlockedTermsResponseData) then) =
      __$$_GetBlockedTermsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      String? id,
      String? text,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? expiresAt});
}

/// @nodoc
class __$$_GetBlockedTermsResponseDataCopyWithImpl<$Res>
    extends _$GetBlockedTermsResponseDataCopyWithImpl<$Res,
        _$_GetBlockedTermsResponseData>
    implements _$$_GetBlockedTermsResponseDataCopyWith<$Res> {
  __$$_GetBlockedTermsResponseDataCopyWithImpl(
      _$_GetBlockedTermsResponseData _value,
      $Res Function(_$_GetBlockedTermsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_$_GetBlockedTermsResponseData(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBlockedTermsResponseData implements _GetBlockedTermsResponseData {
  const _$_GetBlockedTermsResponseData(
      {this.broadcasterId,
      this.moderatorId,
      this.id,
      this.text,
      this.createdAt,
      this.updatedAt,
      this.expiresAt});

  factory _$_GetBlockedTermsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_GetBlockedTermsResponseDataFromJson(json);

  @override
  final String? broadcasterId;
  @override
  final String? moderatorId;
  @override
  final String? id;
  @override
  final String? text;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? expiresAt;

  @override
  String toString() {
    return 'GetBlockedTermsResponseData(broadcasterId: $broadcasterId, moderatorId: $moderatorId, id: $id, text: $text, createdAt: $createdAt, updatedAt: $updatedAt, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBlockedTermsResponseData &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, moderatorId, id,
      text, createdAt, updatedAt, expiresAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBlockedTermsResponseDataCopyWith<_$_GetBlockedTermsResponseData>
      get copyWith => __$$_GetBlockedTermsResponseDataCopyWithImpl<
          _$_GetBlockedTermsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBlockedTermsResponseDataToJson(
      this,
    );
  }
}

abstract class _GetBlockedTermsResponseData
    implements GetBlockedTermsResponseData {
  const factory _GetBlockedTermsResponseData(
      {final String? broadcasterId,
      final String? moderatorId,
      final String? id,
      final String? text,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? expiresAt}) = _$_GetBlockedTermsResponseData;

  factory _GetBlockedTermsResponseData.fromJson(Map<String, dynamic> json) =
      _$_GetBlockedTermsResponseData.fromJson;

  @override
  String? get broadcasterId;
  @override
  String? get moderatorId;
  @override
  String? get id;
  @override
  String? get text;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_GetBlockedTermsResponseDataCopyWith<_$_GetBlockedTermsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
