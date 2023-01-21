// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_analytics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameAnalyticsResponse _$GameAnalyticsResponseFromJson(
    Map<String, dynamic> json) {
  return _GameAnalyticsResponse.fromJson(json);
}

/// @nodoc
mixin _$GameAnalyticsResponse {
  List<GameAnalyticsResponseData>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameAnalyticsResponseCopyWith<GameAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAnalyticsResponseCopyWith<$Res> {
  factory $GameAnalyticsResponseCopyWith(GameAnalyticsResponse value,
          $Res Function(GameAnalyticsResponse) then) =
      _$GameAnalyticsResponseCopyWithImpl<$Res, GameAnalyticsResponse>;
  @useResult
  $Res call({List<GameAnalyticsResponseData>? data});
}

/// @nodoc
class _$GameAnalyticsResponseCopyWithImpl<$Res,
        $Val extends GameAnalyticsResponse>
    implements $GameAnalyticsResponseCopyWith<$Res> {
  _$GameAnalyticsResponseCopyWithImpl(this._value, this._then);

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
              as List<GameAnalyticsResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameAnalyticsResponseCopyWith<$Res>
    implements $GameAnalyticsResponseCopyWith<$Res> {
  factory _$$_GameAnalyticsResponseCopyWith(_$_GameAnalyticsResponse value,
          $Res Function(_$_GameAnalyticsResponse) then) =
      __$$_GameAnalyticsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GameAnalyticsResponseData>? data});
}

/// @nodoc
class __$$_GameAnalyticsResponseCopyWithImpl<$Res>
    extends _$GameAnalyticsResponseCopyWithImpl<$Res, _$_GameAnalyticsResponse>
    implements _$$_GameAnalyticsResponseCopyWith<$Res> {
  __$$_GameAnalyticsResponseCopyWithImpl(_$_GameAnalyticsResponse _value,
      $Res Function(_$_GameAnalyticsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_GameAnalyticsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GameAnalyticsResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameAnalyticsResponse implements _GameAnalyticsResponse {
  const _$_GameAnalyticsResponse({final List<GameAnalyticsResponseData>? data})
      : _data = data;

  factory _$_GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GameAnalyticsResponseFromJson(json);

  final List<GameAnalyticsResponseData>? _data;
  @override
  List<GameAnalyticsResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GameAnalyticsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameAnalyticsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameAnalyticsResponseCopyWith<_$_GameAnalyticsResponse> get copyWith =>
      __$$_GameAnalyticsResponseCopyWithImpl<_$_GameAnalyticsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameAnalyticsResponseToJson(
      this,
    );
  }
}

abstract class _GameAnalyticsResponse implements GameAnalyticsResponse {
  const factory _GameAnalyticsResponse(
      {final List<GameAnalyticsResponseData>? data}) = _$_GameAnalyticsResponse;

  factory _GameAnalyticsResponse.fromJson(Map<String, dynamic> json) =
      _$_GameAnalyticsResponse.fromJson;

  @override
  List<GameAnalyticsResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_GameAnalyticsResponseCopyWith<_$_GameAnalyticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
