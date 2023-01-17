// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_client_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenClientProps _$TokenClientPropsFromJson(Map<String, dynamic> json) {
  return _TokenClientProps.fromJson(json);
}

/// @nodoc
mixin _$TokenClientProps {
  String get token => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenClientPropsCopyWith<TokenClientProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenClientPropsCopyWith<$Res> {
  factory $TokenClientPropsCopyWith(
          TokenClientProps value, $Res Function(TokenClientProps) then) =
      _$TokenClientPropsCopyWithImpl<$Res, TokenClientProps>;
  @useResult
  $Res call({String token, String clientId});
}

/// @nodoc
class _$TokenClientPropsCopyWithImpl<$Res, $Val extends TokenClientProps>
    implements $TokenClientPropsCopyWith<$Res> {
  _$TokenClientPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? clientId = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenClientPropsCopyWith<$Res>
    implements $TokenClientPropsCopyWith<$Res> {
  factory _$$_TokenClientPropsCopyWith(
          _$_TokenClientProps value, $Res Function(_$_TokenClientProps) then) =
      __$$_TokenClientPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String clientId});
}

/// @nodoc
class __$$_TokenClientPropsCopyWithImpl<$Res>
    extends _$TokenClientPropsCopyWithImpl<$Res, _$_TokenClientProps>
    implements _$$_TokenClientPropsCopyWith<$Res> {
  __$$_TokenClientPropsCopyWithImpl(
      _$_TokenClientProps _value, $Res Function(_$_TokenClientProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? clientId = null,
  }) {
    return _then(_$_TokenClientProps(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenClientProps implements _TokenClientProps {
  const _$_TokenClientProps({required this.token, required this.clientId});

  factory _$_TokenClientProps.fromJson(Map<String, dynamic> json) =>
      _$$_TokenClientPropsFromJson(json);

  @override
  final String token;
  @override
  final String clientId;

  @override
  String toString() {
    return 'TokenClientProps(token: $token, clientId: $clientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenClientProps &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, clientId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenClientPropsCopyWith<_$_TokenClientProps> get copyWith =>
      __$$_TokenClientPropsCopyWithImpl<_$_TokenClientProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenClientPropsToJson(
      this,
    );
  }
}

abstract class _TokenClientProps implements TokenClientProps {
  const factory _TokenClientProps(
      {required final String token,
      required final String clientId}) = _$_TokenClientProps;

  factory _TokenClientProps.fromJson(Map<String, dynamic> json) =
      _$_TokenClientProps.fromJson;

  @override
  String get token;
  @override
  String get clientId;
  @override
  @JsonKey(ignore: true)
  _$$_TokenClientPropsCopyWith<_$_TokenClientProps> get copyWith =>
      throw _privateConstructorUsedError;
}
