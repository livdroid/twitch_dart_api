// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raid_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RaidResponse _$RaidResponseFromJson(Map<String, dynamic> json) {
  return _RaidResponse.fromJson(json);
}

/// @nodoc
mixin _$RaidResponse {
  List<RaidResponseData?>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RaidResponseCopyWith<RaidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaidResponseCopyWith<$Res> {
  factory $RaidResponseCopyWith(
          RaidResponse value, $Res Function(RaidResponse) then) =
      _$RaidResponseCopyWithImpl<$Res, RaidResponse>;
  @useResult
  $Res call({List<RaidResponseData?>? data});
}

/// @nodoc
class _$RaidResponseCopyWithImpl<$Res, $Val extends RaidResponse>
    implements $RaidResponseCopyWith<$Res> {
  _$RaidResponseCopyWithImpl(this._value, this._then);

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
              as List<RaidResponseData?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RaidResponseCopyWith<$Res>
    implements $RaidResponseCopyWith<$Res> {
  factory _$$_RaidResponseCopyWith(
          _$_RaidResponse value, $Res Function(_$_RaidResponse) then) =
      __$$_RaidResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RaidResponseData?>? data});
}

/// @nodoc
class __$$_RaidResponseCopyWithImpl<$Res>
    extends _$RaidResponseCopyWithImpl<$Res, _$_RaidResponse>
    implements _$$_RaidResponseCopyWith<$Res> {
  __$$_RaidResponseCopyWithImpl(
      _$_RaidResponse _value, $Res Function(_$_RaidResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_RaidResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RaidResponseData?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RaidResponse implements _RaidResponse {
  const _$_RaidResponse({required final List<RaidResponseData?>? data})
      : _data = data;

  factory _$_RaidResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RaidResponseFromJson(json);

  final List<RaidResponseData?>? _data;
  @override
  List<RaidResponseData?>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RaidResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RaidResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RaidResponseCopyWith<_$_RaidResponse> get copyWith =>
      __$$_RaidResponseCopyWithImpl<_$_RaidResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RaidResponseToJson(
      this,
    );
  }
}

abstract class _RaidResponse implements RaidResponse {
  const factory _RaidResponse({required final List<RaidResponseData?>? data}) =
      _$_RaidResponse;

  factory _RaidResponse.fromJson(Map<String, dynamic> json) =
      _$_RaidResponse.fromJson;

  @override
  List<RaidResponseData?>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RaidResponseCopyWith<_$_RaidResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

RaidResponseData _$RaidResponseDataFromJson(Map<String, dynamic> json) {
  return _RaidResponseData.fromJson(json);
}

/// @nodoc
mixin _$RaidResponseData {
  String? get createdAt => throw _privateConstructorUsedError;
  bool? get isMature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RaidResponseDataCopyWith<RaidResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaidResponseDataCopyWith<$Res> {
  factory $RaidResponseDataCopyWith(
          RaidResponseData value, $Res Function(RaidResponseData) then) =
      _$RaidResponseDataCopyWithImpl<$Res, RaidResponseData>;
  @useResult
  $Res call({String? createdAt, bool? isMature});
}

/// @nodoc
class _$RaidResponseDataCopyWithImpl<$Res, $Val extends RaidResponseData>
    implements $RaidResponseDataCopyWith<$Res> {
  _$RaidResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? isMature = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isMature: freezed == isMature
          ? _value.isMature
          : isMature // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RaidResponseDataCopyWith<$Res>
    implements $RaidResponseDataCopyWith<$Res> {
  factory _$$_RaidResponseDataCopyWith(
          _$_RaidResponseData value, $Res Function(_$_RaidResponseData) then) =
      __$$_RaidResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? createdAt, bool? isMature});
}

/// @nodoc
class __$$_RaidResponseDataCopyWithImpl<$Res>
    extends _$RaidResponseDataCopyWithImpl<$Res, _$_RaidResponseData>
    implements _$$_RaidResponseDataCopyWith<$Res> {
  __$$_RaidResponseDataCopyWithImpl(
      _$_RaidResponseData _value, $Res Function(_$_RaidResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? isMature = freezed,
  }) {
    return _then(_$_RaidResponseData(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isMature: freezed == isMature
          ? _value.isMature
          : isMature // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RaidResponseData implements _RaidResponseData {
  const _$_RaidResponseData({this.createdAt, this.isMature});

  factory _$_RaidResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_RaidResponseDataFromJson(json);

  @override
  final String? createdAt;
  @override
  final bool? isMature;

  @override
  String toString() {
    return 'RaidResponseData(createdAt: $createdAt, isMature: $isMature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RaidResponseData &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isMature, isMature) ||
                other.isMature == isMature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, isMature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RaidResponseDataCopyWith<_$_RaidResponseData> get copyWith =>
      __$$_RaidResponseDataCopyWithImpl<_$_RaidResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RaidResponseDataToJson(
      this,
    );
  }
}

abstract class _RaidResponseData implements RaidResponseData {
  const factory _RaidResponseData(
      {final String? createdAt, final bool? isMature}) = _$_RaidResponseData;

  factory _RaidResponseData.fromJson(Map<String, dynamic> json) =
      _$_RaidResponseData.fromJson;

  @override
  String? get createdAt;
  @override
  bool? get isMature;
  @override
  @JsonKey(ignore: true)
  _$$_RaidResponseDataCopyWith<_$_RaidResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
