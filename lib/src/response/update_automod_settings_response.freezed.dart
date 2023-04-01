// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_automod_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateAutomodSettingsResponse _$UpdateAutomodSettingsResponseFromJson(
    Map<String, dynamic> json) {
  return _UpdateAutomodSettingsResponse.fromJson(json);
}

/// @nodoc
mixin _$UpdateAutomodSettingsResponse {
  List<UpdateAutomodSettingsResponseData>? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAutomodSettingsResponseCopyWith<UpdateAutomodSettingsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAutomodSettingsResponseCopyWith<$Res> {
  factory $UpdateAutomodSettingsResponseCopyWith(
          UpdateAutomodSettingsResponse value,
          $Res Function(UpdateAutomodSettingsResponse) then) =
      _$UpdateAutomodSettingsResponseCopyWithImpl<$Res,
          UpdateAutomodSettingsResponse>;
  @useResult
  $Res call({List<UpdateAutomodSettingsResponseData>? data});
}

/// @nodoc
class _$UpdateAutomodSettingsResponseCopyWithImpl<$Res,
        $Val extends UpdateAutomodSettingsResponse>
    implements $UpdateAutomodSettingsResponseCopyWith<$Res> {
  _$UpdateAutomodSettingsResponseCopyWithImpl(this._value, this._then);

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
              as List<UpdateAutomodSettingsResponseData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAutomodSettingsResponseCopyWith<$Res>
    implements $UpdateAutomodSettingsResponseCopyWith<$Res> {
  factory _$$_UpdateAutomodSettingsResponseCopyWith(
          _$_UpdateAutomodSettingsResponse value,
          $Res Function(_$_UpdateAutomodSettingsResponse) then) =
      __$$_UpdateAutomodSettingsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UpdateAutomodSettingsResponseData>? data});
}

/// @nodoc
class __$$_UpdateAutomodSettingsResponseCopyWithImpl<$Res>
    extends _$UpdateAutomodSettingsResponseCopyWithImpl<$Res,
        _$_UpdateAutomodSettingsResponse>
    implements _$$_UpdateAutomodSettingsResponseCopyWith<$Res> {
  __$$_UpdateAutomodSettingsResponseCopyWithImpl(
      _$_UpdateAutomodSettingsResponse _value,
      $Res Function(_$_UpdateAutomodSettingsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UpdateAutomodSettingsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UpdateAutomodSettingsResponseData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAutomodSettingsResponse
    implements _UpdateAutomodSettingsResponse {
  const _$_UpdateAutomodSettingsResponse(
      {final List<UpdateAutomodSettingsResponseData>? data})
      : _data = data;

  factory _$_UpdateAutomodSettingsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateAutomodSettingsResponseFromJson(json);

  final List<UpdateAutomodSettingsResponseData>? _data;
  @override
  List<UpdateAutomodSettingsResponseData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateAutomodSettingsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAutomodSettingsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAutomodSettingsResponseCopyWith<_$_UpdateAutomodSettingsResponse>
      get copyWith => __$$_UpdateAutomodSettingsResponseCopyWithImpl<
          _$_UpdateAutomodSettingsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAutomodSettingsResponseToJson(
      this,
    );
  }
}

abstract class _UpdateAutomodSettingsResponse
    implements UpdateAutomodSettingsResponse {
  const factory _UpdateAutomodSettingsResponse(
          {final List<UpdateAutomodSettingsResponseData>? data}) =
      _$_UpdateAutomodSettingsResponse;

  factory _UpdateAutomodSettingsResponse.fromJson(Map<String, dynamic> json) =
      _$_UpdateAutomodSettingsResponse.fromJson;

  @override
  List<UpdateAutomodSettingsResponseData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAutomodSettingsResponseCopyWith<_$_UpdateAutomodSettingsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateAutomodSettingsResponseData _$UpdateAutomodSettingsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _UpdateAutomodSettingsResponseData.fromJson(json);
}

/// @nodoc
mixin _$UpdateAutomodSettingsResponseData {
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get moderatorId => throw _privateConstructorUsedError;
  int? get overallLevel => throw _privateConstructorUsedError;
  int? get disability => throw _privateConstructorUsedError;
  int? get aggression => throw _privateConstructorUsedError;
  int? get sexualitySexOrGender => throw _privateConstructorUsedError;
  int? get misogyny => throw _privateConstructorUsedError;
  int? get bullying => throw _privateConstructorUsedError;
  int? get swearing => throw _privateConstructorUsedError;
  int? get raceEthnicityOrReligion => throw _privateConstructorUsedError;
  int? get sexBasedTerms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAutomodSettingsResponseDataCopyWith<UpdateAutomodSettingsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAutomodSettingsResponseDataCopyWith<$Res> {
  factory $UpdateAutomodSettingsResponseDataCopyWith(
          UpdateAutomodSettingsResponseData value,
          $Res Function(UpdateAutomodSettingsResponseData) then) =
      _$UpdateAutomodSettingsResponseDataCopyWithImpl<$Res,
          UpdateAutomodSettingsResponseData>;
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      int? overallLevel,
      int? disability,
      int? aggression,
      int? sexualitySexOrGender,
      int? misogyny,
      int? bullying,
      int? swearing,
      int? raceEthnicityOrReligion,
      int? sexBasedTerms});
}

/// @nodoc
class _$UpdateAutomodSettingsResponseDataCopyWithImpl<$Res,
        $Val extends UpdateAutomodSettingsResponseData>
    implements $UpdateAutomodSettingsResponseDataCopyWith<$Res> {
  _$UpdateAutomodSettingsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? overallLevel = freezed,
    Object? disability = freezed,
    Object? aggression = freezed,
    Object? sexualitySexOrGender = freezed,
    Object? misogyny = freezed,
    Object? bullying = freezed,
    Object? swearing = freezed,
    Object? raceEthnicityOrReligion = freezed,
    Object? sexBasedTerms = freezed,
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
      overallLevel: freezed == overallLevel
          ? _value.overallLevel
          : overallLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      disability: freezed == disability
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as int?,
      aggression: freezed == aggression
          ? _value.aggression
          : aggression // ignore: cast_nullable_to_non_nullable
              as int?,
      sexualitySexOrGender: freezed == sexualitySexOrGender
          ? _value.sexualitySexOrGender
          : sexualitySexOrGender // ignore: cast_nullable_to_non_nullable
              as int?,
      misogyny: freezed == misogyny
          ? _value.misogyny
          : misogyny // ignore: cast_nullable_to_non_nullable
              as int?,
      bullying: freezed == bullying
          ? _value.bullying
          : bullying // ignore: cast_nullable_to_non_nullable
              as int?,
      swearing: freezed == swearing
          ? _value.swearing
          : swearing // ignore: cast_nullable_to_non_nullable
              as int?,
      raceEthnicityOrReligion: freezed == raceEthnicityOrReligion
          ? _value.raceEthnicityOrReligion
          : raceEthnicityOrReligion // ignore: cast_nullable_to_non_nullable
              as int?,
      sexBasedTerms: freezed == sexBasedTerms
          ? _value.sexBasedTerms
          : sexBasedTerms // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateAutomodSettingsResponseDataCopyWith<$Res>
    implements $UpdateAutomodSettingsResponseDataCopyWith<$Res> {
  factory _$$_UpdateAutomodSettingsResponseDataCopyWith(
          _$_UpdateAutomodSettingsResponseData value,
          $Res Function(_$_UpdateAutomodSettingsResponseData) then) =
      __$$_UpdateAutomodSettingsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? broadcasterId,
      String? moderatorId,
      int? overallLevel,
      int? disability,
      int? aggression,
      int? sexualitySexOrGender,
      int? misogyny,
      int? bullying,
      int? swearing,
      int? raceEthnicityOrReligion,
      int? sexBasedTerms});
}

/// @nodoc
class __$$_UpdateAutomodSettingsResponseDataCopyWithImpl<$Res>
    extends _$UpdateAutomodSettingsResponseDataCopyWithImpl<$Res,
        _$_UpdateAutomodSettingsResponseData>
    implements _$$_UpdateAutomodSettingsResponseDataCopyWith<$Res> {
  __$$_UpdateAutomodSettingsResponseDataCopyWithImpl(
      _$_UpdateAutomodSettingsResponseData _value,
      $Res Function(_$_UpdateAutomodSettingsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = freezed,
    Object? moderatorId = freezed,
    Object? overallLevel = freezed,
    Object? disability = freezed,
    Object? aggression = freezed,
    Object? sexualitySexOrGender = freezed,
    Object? misogyny = freezed,
    Object? bullying = freezed,
    Object? swearing = freezed,
    Object? raceEthnicityOrReligion = freezed,
    Object? sexBasedTerms = freezed,
  }) {
    return _then(_$_UpdateAutomodSettingsResponseData(
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      moderatorId: freezed == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      overallLevel: freezed == overallLevel
          ? _value.overallLevel
          : overallLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      disability: freezed == disability
          ? _value.disability
          : disability // ignore: cast_nullable_to_non_nullable
              as int?,
      aggression: freezed == aggression
          ? _value.aggression
          : aggression // ignore: cast_nullable_to_non_nullable
              as int?,
      sexualitySexOrGender: freezed == sexualitySexOrGender
          ? _value.sexualitySexOrGender
          : sexualitySexOrGender // ignore: cast_nullable_to_non_nullable
              as int?,
      misogyny: freezed == misogyny
          ? _value.misogyny
          : misogyny // ignore: cast_nullable_to_non_nullable
              as int?,
      bullying: freezed == bullying
          ? _value.bullying
          : bullying // ignore: cast_nullable_to_non_nullable
              as int?,
      swearing: freezed == swearing
          ? _value.swearing
          : swearing // ignore: cast_nullable_to_non_nullable
              as int?,
      raceEthnicityOrReligion: freezed == raceEthnicityOrReligion
          ? _value.raceEthnicityOrReligion
          : raceEthnicityOrReligion // ignore: cast_nullable_to_non_nullable
              as int?,
      sexBasedTerms: freezed == sexBasedTerms
          ? _value.sexBasedTerms
          : sexBasedTerms // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateAutomodSettingsResponseData
    implements _UpdateAutomodSettingsResponseData {
  const _$_UpdateAutomodSettingsResponseData(
      {this.broadcasterId,
      this.moderatorId,
      this.overallLevel,
      this.disability,
      this.aggression,
      this.sexualitySexOrGender,
      this.misogyny,
      this.bullying,
      this.swearing,
      this.raceEthnicityOrReligion,
      this.sexBasedTerms});

  factory _$_UpdateAutomodSettingsResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateAutomodSettingsResponseDataFromJson(json);

  @override
  final String? broadcasterId;
  @override
  final String? moderatorId;
  @override
  final int? overallLevel;
  @override
  final int? disability;
  @override
  final int? aggression;
  @override
  final int? sexualitySexOrGender;
  @override
  final int? misogyny;
  @override
  final int? bullying;
  @override
  final int? swearing;
  @override
  final int? raceEthnicityOrReligion;
  @override
  final int? sexBasedTerms;

  @override
  String toString() {
    return 'UpdateAutomodSettingsResponseData(broadcasterId: $broadcasterId, moderatorId: $moderatorId, overallLevel: $overallLevel, disability: $disability, aggression: $aggression, sexualitySexOrGender: $sexualitySexOrGender, misogyny: $misogyny, bullying: $bullying, swearing: $swearing, raceEthnicityOrReligion: $raceEthnicityOrReligion, sexBasedTerms: $sexBasedTerms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAutomodSettingsResponseData &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.overallLevel, overallLevel) ||
                other.overallLevel == overallLevel) &&
            (identical(other.disability, disability) ||
                other.disability == disability) &&
            (identical(other.aggression, aggression) ||
                other.aggression == aggression) &&
            (identical(other.sexualitySexOrGender, sexualitySexOrGender) ||
                other.sexualitySexOrGender == sexualitySexOrGender) &&
            (identical(other.misogyny, misogyny) ||
                other.misogyny == misogyny) &&
            (identical(other.bullying, bullying) ||
                other.bullying == bullying) &&
            (identical(other.swearing, swearing) ||
                other.swearing == swearing) &&
            (identical(
                    other.raceEthnicityOrReligion, raceEthnicityOrReligion) ||
                other.raceEthnicityOrReligion == raceEthnicityOrReligion) &&
            (identical(other.sexBasedTerms, sexBasedTerms) ||
                other.sexBasedTerms == sexBasedTerms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      broadcasterId,
      moderatorId,
      overallLevel,
      disability,
      aggression,
      sexualitySexOrGender,
      misogyny,
      bullying,
      swearing,
      raceEthnicityOrReligion,
      sexBasedTerms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAutomodSettingsResponseDataCopyWith<
          _$_UpdateAutomodSettingsResponseData>
      get copyWith => __$$_UpdateAutomodSettingsResponseDataCopyWithImpl<
          _$_UpdateAutomodSettingsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAutomodSettingsResponseDataToJson(
      this,
    );
  }
}

abstract class _UpdateAutomodSettingsResponseData
    implements UpdateAutomodSettingsResponseData {
  const factory _UpdateAutomodSettingsResponseData(
      {final String? broadcasterId,
      final String? moderatorId,
      final int? overallLevel,
      final int? disability,
      final int? aggression,
      final int? sexualitySexOrGender,
      final int? misogyny,
      final int? bullying,
      final int? swearing,
      final int? raceEthnicityOrReligion,
      final int? sexBasedTerms}) = _$_UpdateAutomodSettingsResponseData;

  factory _UpdateAutomodSettingsResponseData.fromJson(
          Map<String, dynamic> json) =
      _$_UpdateAutomodSettingsResponseData.fromJson;

  @override
  String? get broadcasterId;
  @override
  String? get moderatorId;
  @override
  int? get overallLevel;
  @override
  int? get disability;
  @override
  int? get aggression;
  @override
  int? get sexualitySexOrGender;
  @override
  int? get misogyny;
  @override
  int? get bullying;
  @override
  int? get swearing;
  @override
  int? get raceEthnicityOrReligion;
  @override
  int? get sexBasedTerms;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAutomodSettingsResponseDataCopyWith<
          _$_UpdateAutomodSettingsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
