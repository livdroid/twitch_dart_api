// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcaster_moderator_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcasterModeratorProps _$BroadcasterModeratorPropsFromJson(
    Map<String, dynamic> json) {
  return _BroadcasterModeratorProps.fromJson(json);
}

/// @nodoc
mixin _$BroadcasterModeratorProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get moderatorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcasterModeratorPropsCopyWith<BroadcasterModeratorProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcasterModeratorPropsCopyWith<$Res> {
  factory $BroadcasterModeratorPropsCopyWith(BroadcasterModeratorProps value,
          $Res Function(BroadcasterModeratorProps) then) =
      _$BroadcasterModeratorPropsCopyWithImpl<$Res, BroadcasterModeratorProps>;
  @useResult
  $Res call({String broadcasterId, String moderatorId});
}

/// @nodoc
class _$BroadcasterModeratorPropsCopyWithImpl<$Res,
        $Val extends BroadcasterModeratorProps>
    implements $BroadcasterModeratorPropsCopyWith<$Res> {
  _$BroadcasterModeratorPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: null == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcasterModeratorPropsCopyWith<$Res>
    implements $BroadcasterModeratorPropsCopyWith<$Res> {
  factory _$$_BroadcasterModeratorPropsCopyWith(
          _$_BroadcasterModeratorProps value,
          $Res Function(_$_BroadcasterModeratorProps) then) =
      __$$_BroadcasterModeratorPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String moderatorId});
}

/// @nodoc
class __$$_BroadcasterModeratorPropsCopyWithImpl<$Res>
    extends _$BroadcasterModeratorPropsCopyWithImpl<$Res,
        _$_BroadcasterModeratorProps>
    implements _$$_BroadcasterModeratorPropsCopyWith<$Res> {
  __$$_BroadcasterModeratorPropsCopyWithImpl(
      _$_BroadcasterModeratorProps _value,
      $Res Function(_$_BroadcasterModeratorProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
  }) {
    return _then(_$_BroadcasterModeratorProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: null == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcasterModeratorProps implements _BroadcasterModeratorProps {
  const _$_BroadcasterModeratorProps(
      {required this.broadcasterId, required this.moderatorId});

  factory _$_BroadcasterModeratorProps.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcasterModeratorPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String moderatorId;

  @override
  String toString() {
    return 'BroadcasterModeratorProps(broadcasterId: $broadcasterId, moderatorId: $moderatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcasterModeratorProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, moderatorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcasterModeratorPropsCopyWith<_$_BroadcasterModeratorProps>
      get copyWith => __$$_BroadcasterModeratorPropsCopyWithImpl<
          _$_BroadcasterModeratorProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcasterModeratorPropsToJson(
      this,
    );
  }
}

abstract class _BroadcasterModeratorProps implements BroadcasterModeratorProps {
  const factory _BroadcasterModeratorProps(
      {required final String broadcasterId,
      required final String moderatorId}) = _$_BroadcasterModeratorProps;

  factory _BroadcasterModeratorProps.fromJson(Map<String, dynamic> json) =
      _$_BroadcasterModeratorProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get moderatorId;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcasterModeratorPropsCopyWith<_$_BroadcasterModeratorProps>
      get copyWith => throw _privateConstructorUsedError;
}
