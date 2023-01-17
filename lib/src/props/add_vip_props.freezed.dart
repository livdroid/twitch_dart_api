// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_vip_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddVipProps _$AddVipPropsFromJson(Map<String, dynamic> json) {
  return _AddVipProps.fromJson(json);
}

/// @nodoc
mixin _$AddVipProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddVipPropsCopyWith<AddVipProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddVipPropsCopyWith<$Res> {
  factory $AddVipPropsCopyWith(
          AddVipProps value, $Res Function(AddVipProps) then) =
      _$AddVipPropsCopyWithImpl<$Res, AddVipProps>;
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class _$AddVipPropsCopyWithImpl<$Res, $Val extends AddVipProps>
    implements $AddVipPropsCopyWith<$Res> {
  _$AddVipPropsCopyWithImpl(this._value, this._then);

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
abstract class _$$_AddVipPropsCopyWith<$Res>
    implements $AddVipPropsCopyWith<$Res> {
  factory _$$_AddVipPropsCopyWith(
          _$_AddVipProps value, $Res Function(_$_AddVipProps) then) =
      __$$_AddVipPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String userId});
}

/// @nodoc
class __$$_AddVipPropsCopyWithImpl<$Res>
    extends _$AddVipPropsCopyWithImpl<$Res, _$_AddVipProps>
    implements _$$_AddVipPropsCopyWith<$Res> {
  __$$_AddVipPropsCopyWithImpl(
      _$_AddVipProps _value, $Res Function(_$_AddVipProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = null,
  }) {
    return _then(_$_AddVipProps(
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
class _$_AddVipProps implements _AddVipProps {
  const _$_AddVipProps({required this.broadcasterId, required this.userId});

  factory _$_AddVipProps.fromJson(Map<String, dynamic> json) =>
      _$$_AddVipPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String userId;

  @override
  String toString() {
    return 'AddVipProps(broadcasterId: $broadcasterId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddVipProps &&
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
  _$$_AddVipPropsCopyWith<_$_AddVipProps> get copyWith =>
      __$$_AddVipPropsCopyWithImpl<_$_AddVipProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddVipPropsToJson(
      this,
    );
  }
}

abstract class _AddVipProps implements AddVipProps {
  const factory _AddVipProps(
      {required final String broadcasterId,
      required final String userId}) = _$_AddVipProps;

  factory _AddVipProps.fromJson(Map<String, dynamic> json) =
      _$_AddVipProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_AddVipPropsCopyWith<_$_AddVipProps> get copyWith =>
      throw _privateConstructorUsedError;
}
