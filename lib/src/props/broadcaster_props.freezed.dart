// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcaster_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcasterProps _$BroadcasterPropsFromJson(Map<String, dynamic> json) {
  return _BroadcasterProps.fromJson(json);
}

/// @nodoc
mixin _$BroadcasterProps {
  String get broadcasterId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcasterPropsCopyWith<BroadcasterProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcasterPropsCopyWith<$Res> {
  factory $BroadcasterPropsCopyWith(
          BroadcasterProps value, $Res Function(BroadcasterProps) then) =
      _$BroadcasterPropsCopyWithImpl<$Res, BroadcasterProps>;
  @useResult
  $Res call({String broadcasterId});
}

/// @nodoc
class _$BroadcasterPropsCopyWithImpl<$Res, $Val extends BroadcasterProps>
    implements $BroadcasterPropsCopyWith<$Res> {
  _$BroadcasterPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcasterPropsCopyWith<$Res>
    implements $BroadcasterPropsCopyWith<$Res> {
  factory _$$_BroadcasterPropsCopyWith(
          _$_BroadcasterProps value, $Res Function(_$_BroadcasterProps) then) =
      __$$_BroadcasterPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId});
}

/// @nodoc
class __$$_BroadcasterPropsCopyWithImpl<$Res>
    extends _$BroadcasterPropsCopyWithImpl<$Res, _$_BroadcasterProps>
    implements _$$_BroadcasterPropsCopyWith<$Res> {
  __$$_BroadcasterPropsCopyWithImpl(
      _$_BroadcasterProps _value, $Res Function(_$_BroadcasterProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
  }) {
    return _then(_$_BroadcasterProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcasterProps implements _BroadcasterProps {
  const _$_BroadcasterProps({required this.broadcasterId});

  factory _$_BroadcasterProps.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcasterPropsFromJson(json);

  @override
  final String broadcasterId;

  @override
  String toString() {
    return 'BroadcasterProps(broadcasterId: $broadcasterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcasterProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcasterPropsCopyWith<_$_BroadcasterProps> get copyWith =>
      __$$_BroadcasterPropsCopyWithImpl<_$_BroadcasterProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcasterPropsToJson(
      this,
    );
  }
}

abstract class _BroadcasterProps implements BroadcasterProps {
  const factory _BroadcasterProps({required final String broadcasterId}) =
      _$_BroadcasterProps;

  factory _BroadcasterProps.fromJson(Map<String, dynamic> json) =
      _$_BroadcasterProps.fromJson;

  @override
  String get broadcasterId;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcasterPropsCopyWith<_$_BroadcasterProps> get copyWith =>
      throw _privateConstructorUsedError;
}
