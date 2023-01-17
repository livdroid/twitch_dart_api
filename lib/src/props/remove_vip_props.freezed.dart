// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_vip_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveVipProps _$RemoveVipPropsFromJson(Map<String, dynamic> json) {
  return _RemoveVipProps.fromJson(json);
}

/// @nodoc
mixin _$RemoveVipProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveVipPropsCopyWith<RemoveVipProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveVipPropsCopyWith<$Res> {
  factory $RemoveVipPropsCopyWith(
          RemoveVipProps value, $Res Function(RemoveVipProps) then) =
      _$RemoveVipPropsCopyWithImpl<$Res, RemoveVipProps>;
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class _$RemoveVipPropsCopyWithImpl<$Res, $Val extends RemoveVipProps>
    implements $RemoveVipPropsCopyWith<$Res> {
  _$RemoveVipPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoveVipPropsCopyWith<$Res>
    implements $RemoveVipPropsCopyWith<$Res> {
  factory _$$_RemoveVipPropsCopyWith(
          _$_RemoveVipProps value, $Res Function(_$_RemoveVipProps) then) =
      __$$_RemoveVipPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class __$$_RemoveVipPropsCopyWithImpl<$Res>
    extends _$RemoveVipPropsCopyWithImpl<$Res, _$_RemoveVipProps>
    implements _$$_RemoveVipPropsCopyWith<$Res> {
  __$$_RemoveVipPropsCopyWithImpl(
      _$_RemoveVipProps _value, $Res Function(_$_RemoveVipProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = null,
  }) {
    return _then(_$_RemoveVipProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoveVipProps implements _RemoveVipProps {
  const _$_RemoveVipProps({required this.broadcasterId, required this.userId});

  factory _$_RemoveVipProps.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveVipPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String userId;

  @override
  String toString() {
    return 'RemoveVipProps(broadcasterId: $broadcasterId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveVipProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveVipPropsCopyWith<_$_RemoveVipProps> get copyWith =>
      __$$_RemoveVipPropsCopyWithImpl<_$_RemoveVipProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveVipPropsToJson(
      this,
    );
  }
}

abstract class _RemoveVipProps implements RemoveVipProps {
  const factory _RemoveVipProps(
      {required final String broadcasterId,
      required final String userId}) = _$_RemoveVipProps;

  factory _RemoveVipProps.fromJson(Map<String, dynamic> json) =
      _$_RemoveVipProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveVipPropsCopyWith<_$_RemoveVipProps> get copyWith =>
      throw _privateConstructorUsedError;
}
