// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_key_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamKeyResponse _$StreamKeyResponseFromJson(Map<String, dynamic> json) {
  return _StreamKeyResponse.fromJson(json);
}

/// @nodoc
mixin _$StreamKeyResponse {
  List<StreamKeyResponseData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamKeyResponseCopyWith<StreamKeyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamKeyResponseCopyWith<$Res> {
  factory $StreamKeyResponseCopyWith(
          StreamKeyResponse value, $Res Function(StreamKeyResponse) then) =
      _$StreamKeyResponseCopyWithImpl<$Res, StreamKeyResponse>;
  @useResult
  $Res call({List<StreamKeyResponseData>? data});
}

/// @nodoc
class _$StreamKeyResponseCopyWithImpl<$Res, $Val extends StreamKeyResponse>
    implements $StreamKeyResponseCopyWith<$Res> {
  _$StreamKeyResponseCopyWithImpl(this._value, this._then);

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
              as List<StreamKeyResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreamKeyResponseCopyWith<$Res>
    implements $StreamKeyResponseCopyWith<$Res> {
  factory _$$_StreamKeyResponseCopyWith(_$_StreamKeyResponse value,
          $Res Function(_$_StreamKeyResponse) then) =
      __$$_StreamKeyResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StreamKeyResponseData>? data});
}

/// @nodoc
class __$$_StreamKeyResponseCopyWithImpl<$Res>
    extends _$StreamKeyResponseCopyWithImpl<$Res, _$_StreamKeyResponse>
    implements _$$_StreamKeyResponseCopyWith<$Res> {
  __$$_StreamKeyResponseCopyWithImpl(
      _$_StreamKeyResponse _value, $Res Function(_$_StreamKeyResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_StreamKeyResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamKeyResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamKeyResponse implements _StreamKeyResponse {
  const _$_StreamKeyResponse({final List<StreamKeyResponseData>? data})
      : _data = data;

  factory _$_StreamKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StreamKeyResponseFromJson(json);

  final List<StreamKeyResponseData>? _data;
  @override
  List<StreamKeyResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StreamKeyResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamKeyResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamKeyResponseCopyWith<_$_StreamKeyResponse> get copyWith =>
      __$$_StreamKeyResponseCopyWithImpl<_$_StreamKeyResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamKeyResponseToJson(
      this,
    );
  }
}

abstract class _StreamKeyResponse implements StreamKeyResponse {
  const factory _StreamKeyResponse({final List<StreamKeyResponseData>? data}) =
      _$_StreamKeyResponse;

  factory _StreamKeyResponse.fromJson(Map<String, dynamic> json) =
      _$_StreamKeyResponse.fromJson;

  @override
  List<StreamKeyResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_StreamKeyResponseCopyWith<_$_StreamKeyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamKeyResponseData _$StreamKeyResponseDataFromJson(
    Map<String, dynamic> json) {
  return _StreamKeyResponseData.fromJson(json);
}

/// @nodoc
mixin _$StreamKeyResponseData {
  String? get streamKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamKeyResponseDataCopyWith<StreamKeyResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamKeyResponseDataCopyWith<$Res> {
  factory $StreamKeyResponseDataCopyWith(StreamKeyResponseData value,
          $Res Function(StreamKeyResponseData) then) =
      _$StreamKeyResponseDataCopyWithImpl<$Res, StreamKeyResponseData>;
  @useResult
  $Res call({String? streamKey});
}

/// @nodoc
class _$StreamKeyResponseDataCopyWithImpl<$Res,
        $Val extends StreamKeyResponseData>
    implements $StreamKeyResponseDataCopyWith<$Res> {
  _$StreamKeyResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamKey = freezed,
  }) {
    return _then(_value.copyWith(
      streamKey: freezed == streamKey
          ? _value.streamKey
          : streamKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreamKeyResponseDataCopyWith<$Res>
    implements $StreamKeyResponseDataCopyWith<$Res> {
  factory _$$_StreamKeyResponseDataCopyWith(_$_StreamKeyResponseData value,
          $Res Function(_$_StreamKeyResponseData) then) =
      __$$_StreamKeyResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? streamKey});
}

/// @nodoc
class __$$_StreamKeyResponseDataCopyWithImpl<$Res>
    extends _$StreamKeyResponseDataCopyWithImpl<$Res, _$_StreamKeyResponseData>
    implements _$$_StreamKeyResponseDataCopyWith<$Res> {
  __$$_StreamKeyResponseDataCopyWithImpl(_$_StreamKeyResponseData _value,
      $Res Function(_$_StreamKeyResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streamKey = freezed,
  }) {
    return _then(_$_StreamKeyResponseData(
      streamKey: freezed == streamKey
          ? _value.streamKey
          : streamKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamKeyResponseData implements _StreamKeyResponseData {
  const _$_StreamKeyResponseData({this.streamKey});

  factory _$_StreamKeyResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_StreamKeyResponseDataFromJson(json);

  @override
  final String? streamKey;

  @override
  String toString() {
    return 'StreamKeyResponseData(streamKey: $streamKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamKeyResponseData &&
            (identical(other.streamKey, streamKey) ||
                other.streamKey == streamKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, streamKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamKeyResponseDataCopyWith<_$_StreamKeyResponseData> get copyWith =>
      __$$_StreamKeyResponseDataCopyWithImpl<_$_StreamKeyResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamKeyResponseDataToJson(
      this,
    );
  }
}

abstract class _StreamKeyResponseData implements StreamKeyResponseData {
  const factory _StreamKeyResponseData({final String? streamKey}) =
      _$_StreamKeyResponseData;

  factory _StreamKeyResponseData.fromJson(Map<String, dynamic> json) =
      _$_StreamKeyResponseData.fromJson;

  @override
  String? get streamKey;
  @override
  @JsonKey(ignore: true)
  _$$_StreamKeyResponseDataCopyWith<_$_StreamKeyResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
