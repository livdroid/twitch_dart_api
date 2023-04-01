// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidateTokenResponse _$ValidateTokenResponseFromJson(
    Map<String, dynamic> json) {
  return _ValidateTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$ValidateTokenResponse {
  String? get clientId => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  List<String>? get scopes => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int? get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateTokenResponseCopyWith<ValidateTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateTokenResponseCopyWith<$Res> {
  factory $ValidateTokenResponseCopyWith(ValidateTokenResponse value,
          $Res Function(ValidateTokenResponse) then) =
      _$ValidateTokenResponseCopyWithImpl<$Res, ValidateTokenResponse>;
  @useResult
  $Res call(
      {String? clientId,
      String? login,
      List<String>? scopes,
      String? userId,
      int? expiresIn});
}

/// @nodoc
class _$ValidateTokenResponseCopyWithImpl<$Res,
        $Val extends ValidateTokenResponse>
    implements $ValidateTokenResponseCopyWith<$Res> {
  _$ValidateTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? login = freezed,
    Object? scopes = freezed,
    Object? userId = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      scopes: freezed == scopes
          ? _value.scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ValidateTokenResponseCopyWith<$Res>
    implements $ValidateTokenResponseCopyWith<$Res> {
  factory _$$_ValidateTokenResponseCopyWith(_$_ValidateTokenResponse value,
          $Res Function(_$_ValidateTokenResponse) then) =
      __$$_ValidateTokenResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? clientId,
      String? login,
      List<String>? scopes,
      String? userId,
      int? expiresIn});
}

/// @nodoc
class __$$_ValidateTokenResponseCopyWithImpl<$Res>
    extends _$ValidateTokenResponseCopyWithImpl<$Res, _$_ValidateTokenResponse>
    implements _$$_ValidateTokenResponseCopyWith<$Res> {
  __$$_ValidateTokenResponseCopyWithImpl(_$_ValidateTokenResponse _value,
      $Res Function(_$_ValidateTokenResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = freezed,
    Object? login = freezed,
    Object? scopes = freezed,
    Object? userId = freezed,
    Object? expiresIn = freezed,
  }) {
    return _then(_$_ValidateTokenResponse(
      clientId: freezed == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      scopes: freezed == scopes
          ? _value._scopes
          : scopes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresIn: freezed == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ValidateTokenResponse implements _ValidateTokenResponse {
  const _$_ValidateTokenResponse(
      {this.clientId,
      this.login,
      final List<String>? scopes,
      this.userId,
      this.expiresIn})
      : _scopes = scopes;

  factory _$_ValidateTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ValidateTokenResponseFromJson(json);

  @override
  final String? clientId;
  @override
  final String? login;
  final List<String>? _scopes;
  @override
  List<String>? get scopes {
    final value = _scopes;
    if (value == null) return null;
    if (_scopes is EqualUnmodifiableListView) return _scopes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userId;
  @override
  final int? expiresIn;

  @override
  String toString() {
    return 'ValidateTokenResponse(clientId: $clientId, login: $login, scopes: $scopes, userId: $userId, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidateTokenResponse &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.login, login) || other.login == login) &&
            const DeepCollectionEquality().equals(other._scopes, _scopes) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, login,
      const DeepCollectionEquality().hash(_scopes), userId, expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateTokenResponseCopyWith<_$_ValidateTokenResponse> get copyWith =>
      __$$_ValidateTokenResponseCopyWithImpl<_$_ValidateTokenResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ValidateTokenResponseToJson(
      this,
    );
  }
}

abstract class _ValidateTokenResponse implements ValidateTokenResponse {
  const factory _ValidateTokenResponse(
      {final String? clientId,
      final String? login,
      final List<String>? scopes,
      final String? userId,
      final int? expiresIn}) = _$_ValidateTokenResponse;

  factory _ValidateTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_ValidateTokenResponse.fromJson;

  @override
  String? get clientId;
  @override
  String? get login;
  @override
  List<String>? get scopes;
  @override
  String? get userId;
  @override
  int? get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$_ValidateTokenResponseCopyWith<_$_ValidateTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
