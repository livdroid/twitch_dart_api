// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_analytics_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameAnalyticsResponseData _$GameAnalyticsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _GameAnalyticsResponseData.fromJson(json);
}

/// @nodoc
mixin _$GameAnalyticsResponseData {
  String? get gameId => throw _privateConstructorUsedError;
  String? get URL => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateRange? get dateRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameAnalyticsResponseDataCopyWith<GameAnalyticsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameAnalyticsResponseDataCopyWith<$Res> {
  factory $GameAnalyticsResponseDataCopyWith(GameAnalyticsResponseData value,
          $Res Function(GameAnalyticsResponseData) then) =
      _$GameAnalyticsResponseDataCopyWithImpl<$Res, GameAnalyticsResponseData>;
  @useResult
  $Res call({String? gameId, String? URL, String? type, DateRange? dateRange});

  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class _$GameAnalyticsResponseDataCopyWithImpl<$Res,
        $Val extends GameAnalyticsResponseData>
    implements $GameAnalyticsResponseDataCopyWith<$Res> {
  _$GameAnalyticsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = freezed,
    Object? URL = freezed,
    Object? type = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(_value.copyWith(
      gameId: freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
      URL: freezed == URL
          ? _value.URL
          : URL // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res>? get dateRange {
    if (_value.dateRange == null) {
      return null;
    }

    return $DateRangeCopyWith<$Res>(_value.dateRange!, (value) {
      return _then(_value.copyWith(dateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameAnalyticsResponseDataCopyWith<$Res>
    implements $GameAnalyticsResponseDataCopyWith<$Res> {
  factory _$$_GameAnalyticsResponseDataCopyWith(
          _$_GameAnalyticsResponseData value,
          $Res Function(_$_GameAnalyticsResponseData) then) =
      __$$_GameAnalyticsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? gameId, String? URL, String? type, DateRange? dateRange});

  @override
  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class __$$_GameAnalyticsResponseDataCopyWithImpl<$Res>
    extends _$GameAnalyticsResponseDataCopyWithImpl<$Res,
        _$_GameAnalyticsResponseData>
    implements _$$_GameAnalyticsResponseDataCopyWith<$Res> {
  __$$_GameAnalyticsResponseDataCopyWithImpl(
      _$_GameAnalyticsResponseData _value,
      $Res Function(_$_GameAnalyticsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = freezed,
    Object? URL = freezed,
    Object? type = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(_$_GameAnalyticsResponseData(
      freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == URL
          ? _value.URL
          : URL // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameAnalyticsResponseData implements _GameAnalyticsResponseData {
  const _$_GameAnalyticsResponseData(
      this.gameId, this.URL, this.type, this.dateRange);

  factory _$_GameAnalyticsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_GameAnalyticsResponseDataFromJson(json);

  @override
  final String? gameId;
  @override
  final String? URL;
  @override
  final String? type;
  @override
  final DateRange? dateRange;

  @override
  String toString() {
    return 'GameAnalyticsResponseData(gameId: $gameId, URL: $URL, type: $type, dateRange: $dateRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameAnalyticsResponseData &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.URL, URL) || other.URL == URL) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameId, URL, type, dateRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameAnalyticsResponseDataCopyWith<_$_GameAnalyticsResponseData>
      get copyWith => __$$_GameAnalyticsResponseDataCopyWithImpl<
          _$_GameAnalyticsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameAnalyticsResponseDataToJson(
      this,
    );
  }
}

abstract class _GameAnalyticsResponseData implements GameAnalyticsResponseData {
  const factory _GameAnalyticsResponseData(
      final String? gameId,
      final String? URL,
      final String? type,
      final DateRange? dateRange) = _$_GameAnalyticsResponseData;

  factory _GameAnalyticsResponseData.fromJson(Map<String, dynamic> json) =
      _$_GameAnalyticsResponseData.fromJson;

  @override
  String? get gameId;
  @override
  String? get URL;
  @override
  String? get type;
  @override
  DateRange? get dateRange;
  @override
  @JsonKey(ignore: true)
  _$$_GameAnalyticsResponseDataCopyWith<_$_GameAnalyticsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
