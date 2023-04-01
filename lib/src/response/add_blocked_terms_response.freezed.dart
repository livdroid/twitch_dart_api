// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_blocked_terms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddBlockedTermsResponse _$AddBlockedTermsResponseFromJson(
    Map<String, dynamic> json) {
  return _AddBlockedTermsResponse.fromJson(json);
}

/// @nodoc
mixin _$AddBlockedTermsResponse {
  List<AddBlockedTermsResponseData>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBlockedTermsResponseCopyWith<AddBlockedTermsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBlockedTermsResponseCopyWith<$Res> {
  factory $AddBlockedTermsResponseCopyWith(AddBlockedTermsResponse value,
          $Res Function(AddBlockedTermsResponse) then) =
      _$AddBlockedTermsResponseCopyWithImpl<$Res, AddBlockedTermsResponse>;
  @useResult
  $Res call({List<AddBlockedTermsResponseData>? data});
}

/// @nodoc
class _$AddBlockedTermsResponseCopyWithImpl<$Res,
        $Val extends AddBlockedTermsResponse>
    implements $AddBlockedTermsResponseCopyWith<$Res> {
  _$AddBlockedTermsResponseCopyWithImpl(this._value, this._then);

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
              as List<AddBlockedTermsResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddBlockedTermsResponseCopyWith<$Res>
    implements $AddBlockedTermsResponseCopyWith<$Res> {
  factory _$$_AddBlockedTermsResponseCopyWith(_$_AddBlockedTermsResponse value,
          $Res Function(_$_AddBlockedTermsResponse) then) =
      __$$_AddBlockedTermsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AddBlockedTermsResponseData>? data});
}

/// @nodoc
class __$$_AddBlockedTermsResponseCopyWithImpl<$Res>
    extends _$AddBlockedTermsResponseCopyWithImpl<$Res,
        _$_AddBlockedTermsResponse>
    implements _$$_AddBlockedTermsResponseCopyWith<$Res> {
  __$$_AddBlockedTermsResponseCopyWithImpl(_$_AddBlockedTermsResponse _value,
      $Res Function(_$_AddBlockedTermsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_AddBlockedTermsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AddBlockedTermsResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddBlockedTermsResponse implements _AddBlockedTermsResponse {
  const _$_AddBlockedTermsResponse(
      {final List<AddBlockedTermsResponseData>? data})
      : _data = data;

  factory _$_AddBlockedTermsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddBlockedTermsResponseFromJson(json);

  final List<AddBlockedTermsResponseData>? _data;
  @override
  List<AddBlockedTermsResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddBlockedTermsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBlockedTermsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBlockedTermsResponseCopyWith<_$_AddBlockedTermsResponse>
      get copyWith =>
          __$$_AddBlockedTermsResponseCopyWithImpl<_$_AddBlockedTermsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddBlockedTermsResponseToJson(
      this,
    );
  }
}

abstract class _AddBlockedTermsResponse implements AddBlockedTermsResponse {
  const factory _AddBlockedTermsResponse(
          {final List<AddBlockedTermsResponseData>? data}) =
      _$_AddBlockedTermsResponse;

  factory _AddBlockedTermsResponse.fromJson(Map<String, dynamic> json) =
      _$_AddBlockedTermsResponse.fromJson;

  @override
  List<AddBlockedTermsResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddBlockedTermsResponseCopyWith<_$_AddBlockedTermsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

AddBlockedTermsResponseData _$AddBlockedTermsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _AddBlockedTermsResponseData.fromJson(json);
}

/// @nodoc
mixin _$AddBlockedTermsResponseData {
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic? get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBlockedTermsResponseDataCopyWith<AddBlockedTermsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBlockedTermsResponseDataCopyWith<$Res> {
  factory $AddBlockedTermsResponseDataCopyWith(
          AddBlockedTermsResponseData value,
          $Res Function(AddBlockedTermsResponseData) then) =
      _$AddBlockedTermsResponseDataCopyWithImpl<$Res,
          AddBlockedTermsResponseData>;
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      String? id,
      String? text,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic? expiresAt});
}

/// @nodoc
class _$AddBlockedTermsResponseDataCopyWithImpl<$Res,
        $Val extends AddBlockedTermsResponseData>
    implements $AddBlockedTermsResponseDataCopyWith<$Res> {
  _$AddBlockedTermsResponseDataCopyWithImpl(this._value, this._then);

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
              as dynamic?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddBlockedTermsResponseDataCopyWith<$Res>
    implements $AddBlockedTermsResponseDataCopyWith<$Res> {
  factory _$$_AddBlockedTermsResponseDataCopyWith(
          _$_AddBlockedTermsResponseData value,
          $Res Function(_$_AddBlockedTermsResponseData) then) =
      __$$_AddBlockedTermsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      String? id,
      String? text,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic? expiresAt});
}

/// @nodoc
class __$$_AddBlockedTermsResponseDataCopyWithImpl<$Res>
    extends _$AddBlockedTermsResponseDataCopyWithImpl<$Res,
        _$_AddBlockedTermsResponseData>
    implements _$$_AddBlockedTermsResponseDataCopyWith<$Res> {
  __$$_AddBlockedTermsResponseDataCopyWithImpl(
      _$_AddBlockedTermsResponseData _value,
      $Res Function(_$_AddBlockedTermsResponseData) _then)
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
    return _then(_$_AddBlockedTermsResponseData(
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
              as dynamic?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddBlockedTermsResponseData implements _AddBlockedTermsResponseData {
  const _$_AddBlockedTermsResponseData(
      {this.broadcasterId,
      this.moderatorId,
      this.id,
      this.text,
      this.createdAt,
      this.updatedAt,
      this.expiresAt});

  factory _$_AddBlockedTermsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_AddBlockedTermsResponseDataFromJson(json);

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
  final dynamic? expiresAt;

  @override
  String toString() {
    return 'AddBlockedTermsResponseData(broadcasterId: $broadcasterId, moderatorId: $moderatorId, id: $id, text: $text, createdAt: $createdAt, updatedAt: $updatedAt, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBlockedTermsResponseData &&
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
            const DeepCollectionEquality().equals(other.expiresAt, expiresAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      moderatorId,
      id,
      text,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(expiresAt));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBlockedTermsResponseDataCopyWith<_$_AddBlockedTermsResponseData>
      get copyWith => __$$_AddBlockedTermsResponseDataCopyWithImpl<
          _$_AddBlockedTermsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddBlockedTermsResponseDataToJson(
      this,
    );
  }
}

abstract class _AddBlockedTermsResponseData
    implements AddBlockedTermsResponseData {
  const factory _AddBlockedTermsResponseData(
      {final String? broadcasterId,
      final String? moderatorId,
      final String? id,
      final String? text,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final dynamic? expiresAt}) = _$_AddBlockedTermsResponseData;

  factory _AddBlockedTermsResponseData.fromJson(Map<String, dynamic> json) =
      _$_AddBlockedTermsResponseData.fromJson;

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
  dynamic? get expiresAt;
  @override
  @JsonKey(ignore: true)
  _$$_AddBlockedTermsResponseDataCopyWith<_$_AddBlockedTermsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
