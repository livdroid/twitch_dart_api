// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'polls_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollsResponse _$PollsResponseFromJson(Map<String, dynamic> json) {
  return _PollsResponse.fromJson(json);
}

/// @nodoc
mixin _$PollsResponse {
  List<PollsResponseData>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollsResponseCopyWith<PollsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollsResponseCopyWith<$Res> {
  factory $PollsResponseCopyWith(
          PollsResponse value, $Res Function(PollsResponse) then) =
      _$PollsResponseCopyWithImpl<$Res, PollsResponse>;
  @useResult
  $Res call({List<PollsResponseData>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$PollsResponseCopyWithImpl<$Res, $Val extends PollsResponse>
    implements $PollsResponseCopyWith<$Res> {
  _$PollsResponseCopyWithImpl(this._value, this._then);

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
              as List<PollsResponseData>?,
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
abstract class _$$_PollsResponseCopyWith<$Res>
    implements $PollsResponseCopyWith<$Res> {
  factory _$$_PollsResponseCopyWith(
          _$_PollsResponse value, $Res Function(_$_PollsResponse) then) =
      __$$_PollsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PollsResponseData>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_PollsResponseCopyWithImpl<$Res>
    extends _$PollsResponseCopyWithImpl<$Res, _$_PollsResponse>
    implements _$$_PollsResponseCopyWith<$Res> {
  __$$_PollsResponseCopyWithImpl(
      _$_PollsResponse _value, $Res Function(_$_PollsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_PollsResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PollsResponseData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollsResponse implements _PollsResponse {
  const _$_PollsResponse({final List<PollsResponseData>? data, this.pagination})
      : _data = data;

  factory _$_PollsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PollsResponseFromJson(json);

  final List<PollsResponseData>? _data;
  @override
  List<PollsResponseData>? get data {
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
    return 'PollsResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollsResponse &&
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
  _$$_PollsResponseCopyWith<_$_PollsResponse> get copyWith =>
      __$$_PollsResponseCopyWithImpl<_$_PollsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollsResponseToJson(
      this,
    );
  }
}

abstract class _PollsResponse implements PollsResponse {
  const factory _PollsResponse(
      {final List<PollsResponseData>? data,
      final Pagination? pagination}) = _$_PollsResponse;

  factory _PollsResponse.fromJson(Map<String, dynamic> json) =
      _$_PollsResponse.fromJson;

  @override
  List<PollsResponseData>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_PollsResponseCopyWith<_$_PollsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PollsResponseData _$PollsResponseDataFromJson(Map<String, dynamic> json) {
  return _PollsResponseData.fromJson(json);
}

/// @nodoc
mixin _$PollsResponseData {
  String? get id => throw _privateConstructorUsedError;
  String? get broadcasterId => throw _privateConstructorUsedError;
  String? get broadcasterName => throw _privateConstructorUsedError;
  String? get broadcasterLogin => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Choices>? get choices => throw _privateConstructorUsedError;
  bool? get bitsVotingEnabled => throw _privateConstructorUsedError;
  int? get bitsPerVote => throw _privateConstructorUsedError;
  bool? get channelPointsVotingEnabled => throw _privateConstructorUsedError;
  int? get channelPointsPerVote => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get startedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollsResponseDataCopyWith<PollsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollsResponseDataCopyWith<$Res> {
  factory $PollsResponseDataCopyWith(
          PollsResponseData value, $Res Function(PollsResponseData) then) =
      _$PollsResponseDataCopyWithImpl<$Res, PollsResponseData>;
  @useResult
  $Res call(
      {String? id,
      String? broadcasterId,
      String? broadcasterName,
      String? broadcasterLogin,
      String? title,
      List<Choices>? choices,
      bool? bitsVotingEnabled,
      int? bitsPerVote,
      bool? channelPointsVotingEnabled,
      int? channelPointsPerVote,
      String? status,
      int? duration,
      String? startedAt});
}

/// @nodoc
class _$PollsResponseDataCopyWithImpl<$Res, $Val extends PollsResponseData>
    implements $PollsResponseDataCopyWith<$Res> {
  _$PollsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? broadcasterId = freezed,
    Object? broadcasterName = freezed,
    Object? broadcasterLogin = freezed,
    Object? title = freezed,
    Object? choices = freezed,
    Object? bitsVotingEnabled = freezed,
    Object? bitsPerVote = freezed,
    Object? channelPointsVotingEnabled = freezed,
    Object? channelPointsPerVote = freezed,
    Object? status = freezed,
    Object? duration = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
      bitsVotingEnabled: freezed == bitsVotingEnabled
          ? _value.bitsVotingEnabled
          : bitsVotingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      bitsPerVote: freezed == bitsPerVote
          ? _value.bitsPerVote
          : bitsPerVote // ignore: cast_nullable_to_non_nullable
              as int?,
      channelPointsVotingEnabled: freezed == channelPointsVotingEnabled
          ? _value.channelPointsVotingEnabled
          : channelPointsVotingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelPointsPerVote: freezed == channelPointsPerVote
          ? _value.channelPointsPerVote
          : channelPointsPerVote // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PollsResponseDataCopyWith<$Res>
    implements $PollsResponseDataCopyWith<$Res> {
  factory _$$_PollsResponseDataCopyWith(_$_PollsResponseData value,
          $Res Function(_$_PollsResponseData) then) =
      __$$_PollsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? broadcasterId,
      String? broadcasterName,
      String? broadcasterLogin,
      String? title,
      List<Choices>? choices,
      bool? bitsVotingEnabled,
      int? bitsPerVote,
      bool? channelPointsVotingEnabled,
      int? channelPointsPerVote,
      String? status,
      int? duration,
      String? startedAt});
}

/// @nodoc
class __$$_PollsResponseDataCopyWithImpl<$Res>
    extends _$PollsResponseDataCopyWithImpl<$Res, _$_PollsResponseData>
    implements _$$_PollsResponseDataCopyWith<$Res> {
  __$$_PollsResponseDataCopyWithImpl(
      _$_PollsResponseData _value, $Res Function(_$_PollsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? broadcasterId = freezed,
    Object? broadcasterName = freezed,
    Object? broadcasterLogin = freezed,
    Object? title = freezed,
    Object? choices = freezed,
    Object? bitsVotingEnabled = freezed,
    Object? bitsPerVote = freezed,
    Object? channelPointsVotingEnabled = freezed,
    Object? channelPointsPerVote = freezed,
    Object? status = freezed,
    Object? duration = freezed,
    Object? startedAt = freezed,
  }) {
    return _then(_$_PollsResponseData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterId: freezed == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterName: freezed == broadcasterName
          ? _value.broadcasterName
          : broadcasterName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterLogin: freezed == broadcasterLogin
          ? _value.broadcasterLogin
          : broadcasterLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
      bitsVotingEnabled: freezed == bitsVotingEnabled
          ? _value.bitsVotingEnabled
          : bitsVotingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      bitsPerVote: freezed == bitsPerVote
          ? _value.bitsPerVote
          : bitsPerVote // ignore: cast_nullable_to_non_nullable
              as int?,
      channelPointsVotingEnabled: freezed == channelPointsVotingEnabled
          ? _value.channelPointsVotingEnabled
          : channelPointsVotingEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelPointsPerVote: freezed == channelPointsPerVote
          ? _value.channelPointsPerVote
          : channelPointsPerVote // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollsResponseData implements _PollsResponseData {
  const _$_PollsResponseData(
      {this.id,
      this.broadcasterId,
      this.broadcasterName,
      this.broadcasterLogin,
      this.title,
      final List<Choices>? choices,
      this.bitsVotingEnabled,
      this.bitsPerVote,
      this.channelPointsVotingEnabled,
      this.channelPointsPerVote,
      this.status,
      this.duration,
      this.startedAt})
      : _choices = choices;

  factory _$_PollsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_PollsResponseDataFromJson(json);

  @override
  final String? id;
  @override
  final String? broadcasterId;
  @override
  final String? broadcasterName;
  @override
  final String? broadcasterLogin;
  @override
  final String? title;
  final List<Choices>? _choices;
  @override
  List<Choices>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? bitsVotingEnabled;
  @override
  final int? bitsPerVote;
  @override
  final bool? channelPointsVotingEnabled;
  @override
  final int? channelPointsPerVote;
  @override
  final String? status;
  @override
  final int? duration;
  @override
  final String? startedAt;

  @override
  String toString() {
    return 'PollsResponseData(id: $id, broadcasterId: $broadcasterId, broadcasterName: $broadcasterName, broadcasterLogin: $broadcasterLogin, title: $title, choices: $choices, bitsVotingEnabled: $bitsVotingEnabled, bitsPerVote: $bitsPerVote, channelPointsVotingEnabled: $channelPointsVotingEnabled, channelPointsPerVote: $channelPointsPerVote, status: $status, duration: $duration, startedAt: $startedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PollsResponseData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.broadcasterName, broadcasterName) ||
                other.broadcasterName == broadcasterName) &&
            (identical(other.broadcasterLogin, broadcasterLogin) ||
                other.broadcasterLogin == broadcasterLogin) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.bitsVotingEnabled, bitsVotingEnabled) ||
                other.bitsVotingEnabled == bitsVotingEnabled) &&
            (identical(other.bitsPerVote, bitsPerVote) ||
                other.bitsPerVote == bitsPerVote) &&
            (identical(other.channelPointsVotingEnabled,
                    channelPointsVotingEnabled) ||
                other.channelPointsVotingEnabled ==
                    channelPointsVotingEnabled) &&
            (identical(other.channelPointsPerVote, channelPointsPerVote) ||
                other.channelPointsPerVote == channelPointsPerVote) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      broadcasterId,
      broadcasterName,
      broadcasterLogin,
      title,
      const DeepCollectionEquality().hash(_choices),
      bitsVotingEnabled,
      bitsPerVote,
      channelPointsVotingEnabled,
      channelPointsPerVote,
      status,
      duration,
      startedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollsResponseDataCopyWith<_$_PollsResponseData> get copyWith =>
      __$$_PollsResponseDataCopyWithImpl<_$_PollsResponseData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollsResponseDataToJson(
      this,
    );
  }
}

abstract class _PollsResponseData implements PollsResponseData {
  const factory _PollsResponseData(
      {final String? id,
      final String? broadcasterId,
      final String? broadcasterName,
      final String? broadcasterLogin,
      final String? title,
      final List<Choices>? choices,
      final bool? bitsVotingEnabled,
      final int? bitsPerVote,
      final bool? channelPointsVotingEnabled,
      final int? channelPointsPerVote,
      final String? status,
      final int? duration,
      final String? startedAt}) = _$_PollsResponseData;

  factory _PollsResponseData.fromJson(Map<String, dynamic> json) =
      _$_PollsResponseData.fromJson;

  @override
  String? get id;
  @override
  String? get broadcasterId;
  @override
  String? get broadcasterName;
  @override
  String? get broadcasterLogin;
  @override
  String? get title;
  @override
  List<Choices>? get choices;
  @override
  bool? get bitsVotingEnabled;
  @override
  int? get bitsPerVote;
  @override
  bool? get channelPointsVotingEnabled;
  @override
  int? get channelPointsPerVote;
  @override
  String? get status;
  @override
  int? get duration;
  @override
  String? get startedAt;
  @override
  @JsonKey(ignore: true)
  _$$_PollsResponseDataCopyWith<_$_PollsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
