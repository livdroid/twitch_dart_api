// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_raid_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RaidProps _$RaidPropsFromJson(Map<String, dynamic> json) {
  return _RaidProps.fromJson(json);
}

/// @nodoc
mixin _$RaidProps {
  String get fromBroadcasterId => throw _privateConstructorUsedError;
  String get toBroadcasterId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RaidPropsCopyWith<RaidProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RaidPropsCopyWith<$Res> {
  factory $RaidPropsCopyWith(RaidProps value, $Res Function(RaidProps) then) =
      _$RaidPropsCopyWithImpl<$Res, RaidProps>;
  @useResult
  $Res call({String fromBroadcasterId, String toBroadcasterId});
}

/// @nodoc
class _$RaidPropsCopyWithImpl<$Res, $Val extends RaidProps>
    implements $RaidPropsCopyWith<$Res> {
  _$RaidPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromBroadcasterId = null,
    Object? toBroadcasterId = null,
  }) {
    return _then(_value.copyWith(
      fromBroadcasterId: null == fromBroadcasterId
          ? _value.fromBroadcasterId
          : fromBroadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      toBroadcasterId: null == toBroadcasterId
          ? _value.toBroadcasterId
          : toBroadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RaidPropsCopyWith<$Res> implements $RaidPropsCopyWith<$Res> {
  factory _$$_RaidPropsCopyWith(
          _$_RaidProps value, $Res Function(_$_RaidProps) then) =
      __$$_RaidPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fromBroadcasterId, String toBroadcasterId});
}

/// @nodoc
class __$$_RaidPropsCopyWithImpl<$Res>
    extends _$RaidPropsCopyWithImpl<$Res, _$_RaidProps>
    implements _$$_RaidPropsCopyWith<$Res> {
  __$$_RaidPropsCopyWithImpl(
      _$_RaidProps _value, $Res Function(_$_RaidProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromBroadcasterId = null,
    Object? toBroadcasterId = null,
  }) {
    return _then(_$_RaidProps(
      fromBroadcasterId: null == fromBroadcasterId
          ? _value.fromBroadcasterId
          : fromBroadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      toBroadcasterId: null == toBroadcasterId
          ? _value.toBroadcasterId
          : toBroadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RaidProps implements _RaidProps {
  const _$_RaidProps(
      {required this.fromBroadcasterId, required this.toBroadcasterId});

  factory _$_RaidProps.fromJson(Map<String, dynamic> json) =>
      _$$_RaidPropsFromJson(json);

  @override
  final String fromBroadcasterId;
  @override
  final String toBroadcasterId;

  @override
  String toString() {
    return 'RaidProps(fromBroadcasterId: $fromBroadcasterId, toBroadcasterId: $toBroadcasterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RaidProps &&
            (identical(other.fromBroadcasterId, fromBroadcasterId) ||
                other.fromBroadcasterId == fromBroadcasterId) &&
            (identical(other.toBroadcasterId, toBroadcasterId) ||
                other.toBroadcasterId == toBroadcasterId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fromBroadcasterId, toBroadcasterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RaidPropsCopyWith<_$_RaidProps> get copyWith =>
      __$$_RaidPropsCopyWithImpl<_$_RaidProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RaidPropsToJson(
      this,
    );
  }
}

abstract class _RaidProps implements RaidProps {
  const factory _RaidProps(
      {required final String fromBroadcasterId,
      required final String toBroadcasterId}) = _$_RaidProps;

  factory _RaidProps.fromJson(Map<String, dynamic> json) =
      _$_RaidProps.fromJson;

  @override
  String get fromBroadcasterId;
  @override
  String get toBroadcasterId;
  @override
  @JsonKey(ignore: true)
  _$$_RaidPropsCopyWith<_$_RaidProps> get copyWith =>
      throw _privateConstructorUsedError;
}
