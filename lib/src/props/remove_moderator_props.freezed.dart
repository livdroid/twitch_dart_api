// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_moderator_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveModeratorProps _$RemoveModeratorPropsFromJson(Map<String, dynamic> json) {
  return _RemoveModeratorProps.fromJson(json);
}

/// @nodoc
mixin _$RemoveModeratorProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveModeratorPropsCopyWith<RemoveModeratorProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveModeratorPropsCopyWith<$Res> {
  factory $RemoveModeratorPropsCopyWith(RemoveModeratorProps value,
          $Res Function(RemoveModeratorProps) then) =
      _$RemoveModeratorPropsCopyWithImpl<$Res, RemoveModeratorProps>;
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class _$RemoveModeratorPropsCopyWithImpl<$Res,
        $Val extends RemoveModeratorProps>
    implements $RemoveModeratorPropsCopyWith<$Res> {
  _$RemoveModeratorPropsCopyWithImpl(this._value, this._then);

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
abstract class _$$_RemoveModeratorPropsCopyWith<$Res>
    implements $RemoveModeratorPropsCopyWith<$Res> {
  factory _$$_RemoveModeratorPropsCopyWith(_$_RemoveModeratorProps value,
          $Res Function(_$_RemoveModeratorProps) then) =
      __$$_RemoveModeratorPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class __$$_RemoveModeratorPropsCopyWithImpl<$Res>
    extends _$RemoveModeratorPropsCopyWithImpl<$Res, _$_RemoveModeratorProps>
    implements _$$_RemoveModeratorPropsCopyWith<$Res> {
  __$$_RemoveModeratorPropsCopyWithImpl(_$_RemoveModeratorProps _value,
      $Res Function(_$_RemoveModeratorProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = null,
  }) {
    return _then(_$_RemoveModeratorProps(
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
class _$_RemoveModeratorProps implements _RemoveModeratorProps {
  const _$_RemoveModeratorProps(
      {required this.broadcasterId, required this.userId});

  factory _$_RemoveModeratorProps.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveModeratorPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String userId;

  @override
  String toString() {
    return 'RemoveModeratorProps(broadcasterId: $broadcasterId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveModeratorProps &&
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
  _$$_RemoveModeratorPropsCopyWith<_$_RemoveModeratorProps> get copyWith =>
      __$$_RemoveModeratorPropsCopyWithImpl<_$_RemoveModeratorProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveModeratorPropsToJson(
      this,
    );
  }
}

abstract class _RemoveModeratorProps implements RemoveModeratorProps {
  const factory _RemoveModeratorProps(
      {required final String broadcasterId,
      required final String userId}) = _$_RemoveModeratorProps;

  factory _RemoveModeratorProps.fromJson(Map<String, dynamic> json) =
      _$_RemoveModeratorProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveModeratorPropsCopyWith<_$_RemoveModeratorProps> get copyWith =>
      throw _privateConstructorUsedError;
}
