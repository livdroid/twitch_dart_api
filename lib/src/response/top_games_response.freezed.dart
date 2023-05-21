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

GamesResponse _$GamesResponseFromJson(Map<String, dynamic> json) {
  return _GamesResponse.fromJson(json);
}

/// @nodoc
mixin _$GamesResponse {
  List<Game?>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamesResponseCopyWith<GamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesResponseCopyWith<$Res> {
  factory $GamesResponseCopyWith(
          GamesResponse value, $Res Function(GamesResponse) then) =
      _$GamesResponseCopyWithImpl<$Res, GamesResponse>;
  @useResult
  $Res call({List<Game?>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$GamesResponseCopyWithImpl<$Res, $Val extends GamesResponse>
    implements $GamesResponseCopyWith<$Res> {
  _$GamesResponseCopyWithImpl(this._value, this._then);

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
              as List<Game?>?,
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
abstract class _$$_GamesResponseCopyWith<$Res>
    implements $GamesResponseCopyWith<$Res> {
  factory _$$_GamesResponseCopyWith(
          _$_GamesResponse value, $Res Function(_$_GamesResponse) then) =
      __$$_GamesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Game?>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_GamesResponseCopyWithImpl<$Res>
    extends _$GamesResponseCopyWithImpl<$Res, _$_GamesResponse>
    implements _$$_GamesResponseCopyWith<$Res> {
  __$$_GamesResponseCopyWithImpl(
      _$_GamesResponse _value, $Res Function(_$_GamesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_GamesResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Game?>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GamesResponse implements _GamesResponse {
  _$_GamesResponse({final List<Game?>? data, this.pagination}) : _data = data;

  factory _$_GamesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GamesResponseFromJson(json);

  final List<Game?>? _data;
  @override
  List<Game?>? get data {
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
    return 'GamesResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GamesResponse &&
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
  _$$_GamesResponseCopyWith<_$_GamesResponse> get copyWith =>
      __$$_GamesResponseCopyWithImpl<_$_GamesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamesResponseToJson(
      this,
    );
  }
}

abstract class _GamesResponse implements GamesResponse {
  factory _GamesResponse(
      {final List<Game?>? data,
      final Pagination? pagination}) = _$_GamesResponse;

  factory _GamesResponse.fromJson(Map<String, dynamic> json) =
      _$_GamesResponse.fromJson;

  @override
  List<Game?>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_GamesResponseCopyWith<_$_GamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get boxArtUrl => throw _privateConstructorUsedError;
  String? get igdbId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call({String? id, String? name, String? boxArtUrl, String? igdbId});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

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
abstract class _$$_GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$_GameCopyWith(_$_Game value, $Res Function(_$_Game) then) =
      __$$_GameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? boxArtUrl, String? igdbId});
}

/// @nodoc
class __$$_GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res, _$_Game>
    implements _$$_GameCopyWith<$Res> {
  __$$_GameCopyWithImpl(_$_Game _value, $Res Function(_$_Game) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? boxArtUrl = freezed,
    Object? igdbId = freezed,
  }) {
    return _then(_$_Game(
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
class _$_Game implements _Game {
  _$_Game({this.id, this.name, this.boxArtUrl, this.igdbId});

  factory _$_Game.fromJson(Map<String, dynamic> json) => _$$_GameFromJson(json);

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
    return 'Game(id: $id, name: $name, boxArtUrl: $boxArtUrl, igdbId: $igdbId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Game &&
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
  _$$_GameCopyWith<_$_Game> get copyWith =>
      __$$_GameCopyWithImpl<_$_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  factory _Game(
      {final String? id,
      final String? name,
      final String? boxArtUrl,
      final String? igdbId}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

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
  _$$_GameCopyWith<_$_Game> get copyWith => throw _privateConstructorUsedError;
}
