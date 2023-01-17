// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderator_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModeratorResponse _$ModeratorResponseFromJson(Map<String, dynamic> json) {
  return _ModeratorResponse.fromJson(json);
}

/// @nodoc
mixin _$ModeratorResponse {
  List<Moderator?>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeratorResponseCopyWith<ModeratorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeratorResponseCopyWith<$Res> {
  factory $ModeratorResponseCopyWith(
          ModeratorResponse value, $Res Function(ModeratorResponse) then) =
      _$ModeratorResponseCopyWithImpl<$Res, ModeratorResponse>;
  @useResult
  $Res call({List<Moderator?>? data, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ModeratorResponseCopyWithImpl<$Res, $Val extends ModeratorResponse>
    implements $ModeratorResponseCopyWith<$Res> {
  _$ModeratorResponseCopyWithImpl(this._value, this._then);

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
              as List<Moderator?>?,
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
abstract class _$$_ModeratorResponseCopyWith<$Res>
    implements $ModeratorResponseCopyWith<$Res> {
  factory _$$_ModeratorResponseCopyWith(_$_ModeratorResponse value,
          $Res Function(_$_ModeratorResponse) then) =
      __$$_ModeratorResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Moderator?>? data, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_ModeratorResponseCopyWithImpl<$Res>
    extends _$ModeratorResponseCopyWithImpl<$Res, _$_ModeratorResponse>
    implements _$$_ModeratorResponseCopyWith<$Res> {
  __$$_ModeratorResponseCopyWithImpl(
      _$_ModeratorResponse _value, $Res Function(_$_ModeratorResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_ModeratorResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Moderator?>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModeratorResponse implements _ModeratorResponse {
  const _$_ModeratorResponse({final List<Moderator?>? data, this.pagination})
      : _data = data;

  factory _$_ModeratorResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ModeratorResponseFromJson(json);

  final List<Moderator?>? _data;
  @override
  List<Moderator?>? get data {
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
    return 'ModeratorResponse(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModeratorResponse &&
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
  _$$_ModeratorResponseCopyWith<_$_ModeratorResponse> get copyWith =>
      __$$_ModeratorResponseCopyWithImpl<_$_ModeratorResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModeratorResponseToJson(
      this,
    );
  }
}

abstract class _ModeratorResponse implements ModeratorResponse {
  const factory _ModeratorResponse(
      {final List<Moderator?>? data,
      final Pagination? pagination}) = _$_ModeratorResponse;

  factory _ModeratorResponse.fromJson(Map<String, dynamic> json) =
      _$_ModeratorResponse.fromJson;

  @override
  List<Moderator?>? get data;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_ModeratorResponseCopyWith<_$_ModeratorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Moderator _$ModeratorFromJson(Map<String, dynamic> json) {
  return _Moderator.fromJson(json);
}

/// @nodoc
mixin _$Moderator {
  String? get userId => throw _privateConstructorUsedError;
  String? get userLogin => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModeratorCopyWith<Moderator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeratorCopyWith<$Res> {
  factory $ModeratorCopyWith(Moderator value, $Res Function(Moderator) then) =
      _$ModeratorCopyWithImpl<$Res, Moderator>;
  @useResult
  $Res call({String? userId, String? userLogin, String? userName});
}

/// @nodoc
class _$ModeratorCopyWithImpl<$Res, $Val extends Moderator>
    implements $ModeratorCopyWith<$Res> {
  _$ModeratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModeratorCopyWith<$Res> implements $ModeratorCopyWith<$Res> {
  factory _$$_ModeratorCopyWith(
          _$_Moderator value, $Res Function(_$_Moderator) then) =
      __$$_ModeratorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? userLogin, String? userName});
}

/// @nodoc
class __$$_ModeratorCopyWithImpl<$Res>
    extends _$ModeratorCopyWithImpl<$Res, _$_Moderator>
    implements _$$_ModeratorCopyWith<$Res> {
  __$$_ModeratorCopyWithImpl(
      _$_Moderator _value, $Res Function(_$_Moderator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userLogin = freezed,
    Object? userName = freezed,
  }) {
    return _then(_$_Moderator(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userLogin: freezed == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Moderator implements _Moderator {
  const _$_Moderator({this.userId, this.userLogin, this.userName});

  factory _$_Moderator.fromJson(Map<String, dynamic> json) =>
      _$$_ModeratorFromJson(json);

  @override
  final String? userId;
  @override
  final String? userLogin;
  @override
  final String? userName;

  @override
  String toString() {
    return 'Moderator(userId: $userId, userLogin: $userLogin, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Moderator &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userLogin, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModeratorCopyWith<_$_Moderator> get copyWith =>
      __$$_ModeratorCopyWithImpl<_$_Moderator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModeratorToJson(
      this,
    );
  }
}

abstract class _Moderator implements Moderator {
  const factory _Moderator(
      {final String? userId,
      final String? userLogin,
      final String? userName}) = _$_Moderator;

  factory _Moderator.fromJson(Map<String, dynamic> json) =
      _$_Moderator.fromJson;

  @override
  String? get userId;
  @override
  String? get userLogin;
  @override
  String? get userName;
  @override
  @JsonKey(ignore: true)
  _$$_ModeratorCopyWith<_$_Moderator> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  String? get cursor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({String? cursor});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$_PaginationCopyWith(
          _$_Pagination value, $Res Function(_$_Pagination) then) =
      __$$_PaginationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? cursor});
}

/// @nodoc
class __$$_PaginationCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$_Pagination>
    implements _$$_PaginationCopyWith<$Res> {
  __$$_PaginationCopyWithImpl(
      _$_Pagination _value, $Res Function(_$_Pagination) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cursor = freezed,
  }) {
    return _then(_$_Pagination(
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pagination implements _Pagination {
  const _$_Pagination({this.cursor});

  factory _$_Pagination.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationFromJson(json);

  @override
  final String? cursor;

  @override
  String toString() {
    return 'Pagination(cursor: $cursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pagination &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cursor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      __$$_PaginationCopyWithImpl<_$_Pagination>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination({final String? cursor}) = _$_Pagination;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$_Pagination.fromJson;

  @override
  String? get cursor;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationCopyWith<_$_Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}
