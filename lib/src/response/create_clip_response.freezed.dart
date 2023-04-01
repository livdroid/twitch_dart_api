// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_clip_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateClipResponse _$CreateClipResponseFromJson(Map<String, dynamic> json) {
  return _CreateClipResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateClipResponse {
  List<CreateClipResponseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateClipResponseCopyWith<CreateClipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClipResponseCopyWith<$Res> {
  factory $CreateClipResponseCopyWith(
          CreateClipResponse value, $Res Function(CreateClipResponse) then) =
      _$CreateClipResponseCopyWithImpl<$Res, CreateClipResponse>;
  @useResult
  $Res call({List<CreateClipResponseData>? data});
}

/// @nodoc
class _$CreateClipResponseCopyWithImpl<$Res, $Val extends CreateClipResponse>
    implements $CreateClipResponseCopyWith<$Res> {
  _$CreateClipResponseCopyWithImpl(this._value, this._then);

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
              as List<CreateClipResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateClipResponseCopyWith<$Res>
    implements $CreateClipResponseCopyWith<$Res> {
  factory _$$_CreateClipResponseCopyWith(_$_CreateClipResponse value,
          $Res Function(_$_CreateClipResponse) then) =
      __$$_CreateClipResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CreateClipResponseData>? data});
}

/// @nodoc
class __$$_CreateClipResponseCopyWithImpl<$Res>
    extends _$CreateClipResponseCopyWithImpl<$Res, _$_CreateClipResponse>
    implements _$$_CreateClipResponseCopyWith<$Res> {
  __$$_CreateClipResponseCopyWithImpl(
      _$_CreateClipResponse _value, $Res Function(_$_CreateClipResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CreateClipResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CreateClipResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateClipResponse implements _CreateClipResponse {
  const _$_CreateClipResponse({final List<CreateClipResponseData>? data})
      : _data = data;

  factory _$_CreateClipResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateClipResponseFromJson(json);

  final List<CreateClipResponseData>? _data;
  @override
  List<CreateClipResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateClipResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateClipResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateClipResponseCopyWith<_$_CreateClipResponse> get copyWith =>
      __$$_CreateClipResponseCopyWithImpl<_$_CreateClipResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateClipResponseToJson(
      this,
    );
  }
}

abstract class _CreateClipResponse implements CreateClipResponse {
  const factory _CreateClipResponse(
      {final List<CreateClipResponseData>? data}) = _$_CreateClipResponse;

  factory _CreateClipResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateClipResponse.fromJson;

  @override
  List<CreateClipResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CreateClipResponseCopyWith<_$_CreateClipResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateClipResponseData _$CreateClipResponseDataFromJson(
    Map<String, dynamic> json) {
  return _CreateClipResponseData.fromJson(json);
}

/// @nodoc
mixin _$CreateClipResponseData {
  String? get id => throw _privateConstructorUsedError;
  String? get editUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateClipResponseDataCopyWith<CreateClipResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClipResponseDataCopyWith<$Res> {
  factory $CreateClipResponseDataCopyWith(CreateClipResponseData value,
          $Res Function(CreateClipResponseData) then) =
      _$CreateClipResponseDataCopyWithImpl<$Res, CreateClipResponseData>;
  @useResult
  $Res call({String? id, String? editUrl});
}

/// @nodoc
class _$CreateClipResponseDataCopyWithImpl<$Res,
        $Val extends CreateClipResponseData>
    implements $CreateClipResponseDataCopyWith<$Res> {
  _$CreateClipResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? editUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      editUrl: freezed == editUrl
          ? _value.editUrl
          : editUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateClipResponseDataCopyWith<$Res>
    implements $CreateClipResponseDataCopyWith<$Res> {
  factory _$$_CreateClipResponseDataCopyWith(_$_CreateClipResponseData value,
          $Res Function(_$_CreateClipResponseData) then) =
      __$$_CreateClipResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? editUrl});
}

/// @nodoc
class __$$_CreateClipResponseDataCopyWithImpl<$Res>
    extends _$CreateClipResponseDataCopyWithImpl<$Res,
        _$_CreateClipResponseData>
    implements _$$_CreateClipResponseDataCopyWith<$Res> {
  __$$_CreateClipResponseDataCopyWithImpl(_$_CreateClipResponseData _value,
      $Res Function(_$_CreateClipResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? editUrl = freezed,
  }) {
    return _then(_$_CreateClipResponseData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      editUrl: freezed == editUrl
          ? _value.editUrl
          : editUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateClipResponseData implements _CreateClipResponseData {
  const _$_CreateClipResponseData({this.id, this.editUrl});

  factory _$_CreateClipResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_CreateClipResponseDataFromJson(json);

  @override
  final String? id;
  @override
  final String? editUrl;

  @override
  String toString() {
    return 'CreateClipResponseData(id: $id, editUrl: $editUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateClipResponseData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.editUrl, editUrl) || other.editUrl == editUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, editUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateClipResponseDataCopyWith<_$_CreateClipResponseData> get copyWith =>
      __$$_CreateClipResponseDataCopyWithImpl<_$_CreateClipResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateClipResponseDataToJson(
      this,
    );
  }
}

abstract class _CreateClipResponseData implements CreateClipResponseData {
  const factory _CreateClipResponseData(
      {final String? id, final String? editUrl}) = _$_CreateClipResponseData;

  factory _CreateClipResponseData.fromJson(Map<String, dynamic> json) =
      _$_CreateClipResponseData.fromJson;

  @override
  String? get id;
  @override
  String? get editUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CreateClipResponseDataCopyWith<_$_CreateClipResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
