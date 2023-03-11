// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_custom_reward_redemption_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCustomRewardRedemptionProps _$UpdateCustomRewardRedemptionPropsFromJson(
    Map<String, dynamic> json) {
  return _UpdateCustomRewardRedemptionProps.fromJson(json);
}

/// @nodoc
mixin _$UpdateCustomRewardRedemptionProps {
  String get id => throw _privateConstructorUsedError;
  String get broadcasterId => throw _privateConstructorUsedError;
  String get rewardId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCustomRewardRedemptionPropsCopyWith<UpdateCustomRewardRedemptionProps>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCustomRewardRedemptionPropsCopyWith<$Res> {
  factory $UpdateCustomRewardRedemptionPropsCopyWith(
          UpdateCustomRewardRedemptionProps value,
          $Res Function(UpdateCustomRewardRedemptionProps) then) =
      _$UpdateCustomRewardRedemptionPropsCopyWithImpl<$Res,
          UpdateCustomRewardRedemptionProps>;
  @useResult
  $Res call({String id, String broadcasterId, String rewardId});
}

/// @nodoc
class _$UpdateCustomRewardRedemptionPropsCopyWithImpl<$Res,
        $Val extends UpdateCustomRewardRedemptionProps>
    implements $UpdateCustomRewardRedemptionPropsCopyWith<$Res> {
  _$UpdateCustomRewardRedemptionPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? broadcasterId = null,
    Object? rewardId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      rewardId: null == rewardId
          ? _value.rewardId
          : rewardId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCustomRewardRedemptionPropsCopyWith<$Res>
    implements $UpdateCustomRewardRedemptionPropsCopyWith<$Res> {
  factory _$$_UpdateCustomRewardRedemptionPropsCopyWith(
          _$_UpdateCustomRewardRedemptionProps value,
          $Res Function(_$_UpdateCustomRewardRedemptionProps) then) =
      __$$_UpdateCustomRewardRedemptionPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String broadcasterId, String rewardId});
}

/// @nodoc
class __$$_UpdateCustomRewardRedemptionPropsCopyWithImpl<$Res>
    extends _$UpdateCustomRewardRedemptionPropsCopyWithImpl<$Res,
        _$_UpdateCustomRewardRedemptionProps>
    implements _$$_UpdateCustomRewardRedemptionPropsCopyWith<$Res> {
  __$$_UpdateCustomRewardRedemptionPropsCopyWithImpl(
      _$_UpdateCustomRewardRedemptionProps _value,
      $Res Function(_$_UpdateCustomRewardRedemptionProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? broadcasterId = null,
    Object? rewardId = null,
  }) {
    return _then(_$_UpdateCustomRewardRedemptionProps(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      rewardId: null == rewardId
          ? _value.rewardId
          : rewardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCustomRewardRedemptionProps
    implements _UpdateCustomRewardRedemptionProps {
  const _$_UpdateCustomRewardRedemptionProps(
      {required this.id, required this.broadcasterId, required this.rewardId});

  factory _$_UpdateCustomRewardRedemptionProps.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateCustomRewardRedemptionPropsFromJson(json);

  @override
  final String id;
  @override
  final String broadcasterId;
  @override
  final String rewardId;

  @override
  String toString() {
    return 'UpdateCustomRewardRedemptionProps(id: $id, broadcasterId: $broadcasterId, rewardId: $rewardId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCustomRewardRedemptionProps &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.rewardId, rewardId) ||
                other.rewardId == rewardId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, broadcasterId, rewardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCustomRewardRedemptionPropsCopyWith<
          _$_UpdateCustomRewardRedemptionProps>
      get copyWith => __$$_UpdateCustomRewardRedemptionPropsCopyWithImpl<
          _$_UpdateCustomRewardRedemptionProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCustomRewardRedemptionPropsToJson(
      this,
    );
  }
}

abstract class _UpdateCustomRewardRedemptionProps
    implements UpdateCustomRewardRedemptionProps {
  const factory _UpdateCustomRewardRedemptionProps(
      {required final String id,
      required final String broadcasterId,
      required final String rewardId}) = _$_UpdateCustomRewardRedemptionProps;

  factory _UpdateCustomRewardRedemptionProps.fromJson(
          Map<String, dynamic> json) =
      _$_UpdateCustomRewardRedemptionProps.fromJson;

  @override
  String get id;
  @override
  String get broadcasterId;
  @override
  String get rewardId;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCustomRewardRedemptionPropsCopyWith<
          _$_UpdateCustomRewardRedemptionProps>
      get copyWith => throw _privateConstructorUsedError;
}
