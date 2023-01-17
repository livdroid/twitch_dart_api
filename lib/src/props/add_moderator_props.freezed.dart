// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_moderator_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddModeratorProps _$AddModeratorPropsFromJson(Map<String, dynamic> json) {
  return _AddModeratorProps.fromJson(json);
}

/// @nodoc
mixin _$AddModeratorProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddModeratorPropsCopyWith<AddModeratorProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddModeratorPropsCopyWith<$Res> {
  factory $AddModeratorPropsCopyWith(
          AddModeratorProps value, $Res Function(AddModeratorProps) then) =
      _$AddModeratorPropsCopyWithImpl<$Res, AddModeratorProps>;
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class _$AddModeratorPropsCopyWithImpl<$Res, $Val extends AddModeratorProps>
    implements $AddModeratorPropsCopyWith<$Res> {
  _$AddModeratorPropsCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddModeratorPropsCopyWith<$Res>
    implements $AddModeratorPropsCopyWith<$Res> {
  factory _$$_AddModeratorPropsCopyWith(_$_AddModeratorProps value,
          $Res Function(_$_AddModeratorProps) then) =
      __$$_AddModeratorPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class __$$_AddModeratorPropsCopyWithImpl<$Res>
    extends _$AddModeratorPropsCopyWithImpl<$Res, _$_AddModeratorProps>
    implements _$$_AddModeratorPropsCopyWith<$Res> {
  __$$_AddModeratorPropsCopyWithImpl(
      _$_AddModeratorProps _value, $Res Function(_$_AddModeratorProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = null,
  }) {
    return _then(_$_AddModeratorProps(
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
class _$_AddModeratorProps implements _AddModeratorProps {
  const _$_AddModeratorProps(
      {required this.broadcasterId, required this.userId});

  factory _$_AddModeratorProps.fromJson(Map<String, dynamic> json) =>
      _$$_AddModeratorPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String userId;

  @override
  String toString() {
    return 'AddModeratorProps(broadcasterId: $broadcasterId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddModeratorProps &&
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
  _$$_AddModeratorPropsCopyWith<_$_AddModeratorProps> get copyWith =>
      __$$_AddModeratorPropsCopyWithImpl<_$_AddModeratorProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddModeratorPropsToJson(
      this,
    );
  }
}

abstract class _AddModeratorProps implements AddModeratorProps {
  const factory _AddModeratorProps(
      {required final String broadcasterId,
      required final String userId}) = _$_AddModeratorProps;

  factory _AddModeratorProps.fromJson(Map<String, dynamic> json) =
      _$_AddModeratorProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_AddModeratorPropsCopyWith<_$_AddModeratorProps> get copyWith =>
      throw _privateConstructorUsedError;
}
