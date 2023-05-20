// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_games_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopGamesResponse _$TopGamesResponseFromJson(Map<String, dynamic> json) {
  return _TopGamesResponse.fromJson(json);
}

/// @nodoc
mixin _$TopGamesResponse {
  List<TopGame?>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopGamesResponseCopyWith<TopGamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGamesResponseCopyWith<$Res> {
  factory $TopGamesResponseCopyWith(
          TopGamesResponse value, $Res Function(TopGamesResponse) then) =
      _$TopGamesResponseCopyWithImpl<$Res, TopGamesResponse>;
  @useResult
  $Res call({List<TopGame?>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$TopGamesResponseCopyWithImpl<$Res, $Val extends TopGamesResponse>
    implements $TopGamesResponseCopyWith<$Res> {
  _$TopGamesResponseCopyWithImpl(this._value, this._then);

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
              as List<TopGame?>?,
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
abstract class _$$_TopGamesResponseCopyWith<$Res>
    implements $TopGamesResponseCopyWith<$Res> {
  factory _$$_TopGamesResponseCopyWith(
          _$_TopGamesResponse value, $Res Function(_$_TopGamesResponse) then) =
      __$$_TopGamesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TopGame?>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_TopGamesResponseCopyWithImpl<$Res>
    extends _$TopGamesResponseCopyWithImpl<$Res, _$_TopGamesResponse>
    implements _$$_TopGamesResponseCopyWith<$Res> {
  __$$_TopGamesResponseCopyWithImpl(
      _$_TopGamesResponse _value, $Res Function(_$_TopGamesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_TopGamesResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopGame?>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopGamesResponse implements _TopGamesResponse {
  _$_TopGamesResponse({final List<TopGame?>? data, this.pagination})
      : _data = data;

  factory _$_TopGamesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TopGamesResponseFromJson(json);

  final List<TopGame?>? _data;
  @override
  List<TopGame?>? get data {
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
    return 'TopGamesResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopGamesResponse &&
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
  _$$_TopGamesResponseCopyWith<_$_TopGamesResponse> get copyWith =>
      __$$_TopGamesResponseCopyWithImpl<_$_TopGamesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopGamesResponseToJson(
      this,
    );
  }
}

abstract class _TopGamesResponse implements TopGamesResponse {
  factory _TopGamesResponse(
      {final List<TopGame?>? data,
      final Pagination? pagination}) = _$_TopGamesResponse;

  factory _TopGamesResponse.fromJson(Map<String, dynamic> json) =
      _$_TopGamesResponse.fromJson;

  @override
  List<TopGame?>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_TopGamesResponseCopyWith<_$_TopGamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

TopGame _$TopGameFromJson(Map<String, dynamic> json) {
  return _TopGame.fromJson(json);
}

/// @nodoc
mixin _$TopGame {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get boxArtUrl => throw _privateConstructorUsedError;
  String? get igdbId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopGameCopyWith<TopGame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGameCopyWith<$Res> {
  factory $TopGameCopyWith(TopGame value, $Res Function(TopGame) then) =
      _$TopGameCopyWithImpl<$Res, TopGame>;
  @useResult
  $Res call({String? id, String? name, String? boxArtUrl, String? igdbId});
}

/// @nodoc
class _$TopGameCopyWithImpl<$Res, $Val extends TopGame>
    implements $TopGameCopyWith<$Res> {
  _$TopGameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? boxArtUrl = freezed,
    Object? igdbId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      boxArtUrl: freezed == boxArtUrl
          ? _value.boxArtUrl
          : boxArtUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      igdbId: freezed == igdbId
          ? _value.igdbId
          : igdbId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopGameCopyWith<$Res> implements $TopGameCopyWith<$Res> {
  factory _$$_TopGameCopyWith(
          _$_TopGame value, $Res Function(_$_TopGame) then) =
      __$$_TopGameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? boxArtUrl, String? igdbId});
}

/// @nodoc
class __$$_TopGameCopyWithImpl<$Res>
    extends _$TopGameCopyWithImpl<$Res, _$_TopGame>
    implements _$$_TopGameCopyWith<$Res> {
  __$$_TopGameCopyWithImpl(_$_TopGame _value, $Res Function(_$_TopGame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? boxArtUrl = freezed,
    Object? igdbId = freezed,
  }) {
    return _then(_$_TopGame(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      boxArtUrl: freezed == boxArtUrl
          ? _value.boxArtUrl
          : boxArtUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      igdbId: freezed == igdbId
          ? _value.igdbId
          : igdbId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopGame implements _TopGame {
  _$_TopGame({this.id, this.name, this.boxArtUrl, this.igdbId});

  factory _$_TopGame.fromJson(Map<String, dynamic> json) =>
      _$$_TopGameFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? boxArtUrl;
  @override
  final String? igdbId;

  @override
  String toString() {
    return 'TopGame(id: $id, name: $name, boxArtUrl: $boxArtUrl, igdbId: $igdbId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopGame &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.boxArtUrl, boxArtUrl) ||
                other.boxArtUrl == boxArtUrl) &&
            (identical(other.igdbId, igdbId) || other.igdbId == igdbId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, boxArtUrl, igdbId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopGameCopyWith<_$_TopGame> get copyWith =>
      __$$_TopGameCopyWithImpl<_$_TopGame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopGameToJson(
      this,
    );
  }
}

abstract class _TopGame implements TopGame {
  factory _TopGame(
      {final String? id,
      final String? name,
      final String? boxArtUrl,
      final String? igdbId}) = _$_TopGame;

  factory _TopGame.fromJson(Map<String, dynamic> json) = _$_TopGame.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get boxArtUrl;
  @override
  String? get igdbId;
  @override
  @JsonKey(ignore: true)
  _$$_TopGameCopyWith<_$_TopGame> get copyWith =>
      throw _privateConstructorUsedError;
}
