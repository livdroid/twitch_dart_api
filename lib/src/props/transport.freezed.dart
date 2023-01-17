// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transport _$TransportFromJson(Map<String, dynamic> json) {
  return _Transport.fromJson(json);
}

/// @nodoc
mixin _$Transport {
  String? get method => throw _privateConstructorUsedError;
  String? get callback => throw _privateConstructorUsedError;
  String? get secret => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportCopyWith<Transport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportCopyWith<$Res> {
  factory $TransportCopyWith(Transport value, $Res Function(Transport) then) =
      _$TransportCopyWithImpl<$Res, Transport>;
  @useResult
  $Res call(
      {String? method, String? callback, String? secret, String? sessionId});
}

/// @nodoc
class _$TransportCopyWithImpl<$Res, $Val extends Transport>
    implements $TransportCopyWith<$Res> {
  _$TransportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? callback = freezed,
    Object? secret = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as String?,
      secret: freezed == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransportCopyWith<$Res> implements $TransportCopyWith<$Res> {
  factory _$$_TransportCopyWith(
          _$_Transport value, $Res Function(_$_Transport) then) =
      __$$_TransportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? method, String? callback, String? secret, String? sessionId});
}

/// @nodoc
class __$$_TransportCopyWithImpl<$Res>
    extends _$TransportCopyWithImpl<$Res, _$_Transport>
    implements _$$_TransportCopyWith<$Res> {
  __$$_TransportCopyWithImpl(
      _$_Transport _value, $Res Function(_$_Transport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = freezed,
    Object? callback = freezed,
    Object? secret = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$_Transport(
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      callback: freezed == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as String?,
      secret: freezed == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transport implements _Transport {
  const _$_Transport({this.method, this.callback, this.secret, this.sessionId});

  factory _$_Transport.fromJson(Map<String, dynamic> json) =>
      _$$_TransportFromJson(json);

  @override
  final String? method;
  @override
  final String? callback;
  @override
  final String? secret;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'Transport(method: $method, callback: $callback, secret: $secret, sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transport &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.callback, callback) ||
                other.callback == callback) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, method, callback, secret, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      __$$_TransportCopyWithImpl<_$_Transport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportToJson(
      this,
    );
  }
}

abstract class _Transport implements Transport {
  const factory _Transport(
      {final String? method,
      final String? callback,
      final String? secret,
      final String? sessionId}) = _$_Transport;

  factory _Transport.fromJson(Map<String, dynamic> json) =
      _$_Transport.fromJson;

  @override
  String? get method;
  @override
  String? get callback;
  @override
  String? get secret;
  @override
  String? get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$_TransportCopyWith<_$_Transport> get copyWith =>
      throw _privateConstructorUsedError;
}
