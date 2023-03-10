// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_custom_rewards_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCustomRewardsProps _$GetCustomRewardsPropsFromJson(
    Map<String, dynamic> json) {
  return _GetCustomRewardsProps.fromJson(json);
}

/// @nodoc
mixin _$GetCustomRewardsProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get onlyManageableRewards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomRewardsPropsCopyWith<GetCustomRewardsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomRewardsPropsCopyWith<$Res> {
  factory $GetCustomRewardsPropsCopyWith(GetCustomRewardsProps value,
          $Res Function(GetCustomRewardsProps) then) =
      _$GetCustomRewardsPropsCopyWithImpl<$Res, GetCustomRewardsProps>;
  @useResult
  $Res call({String broadcasterId, String? id, bool? onlyManageableRewards});
}

/// @nodoc
class _$GetCustomRewardsPropsCopyWithImpl<$Res,
        $Val extends GetCustomRewardsProps>
    implements $GetCustomRewardsPropsCopyWith<$Res> {
  _$GetCustomRewardsPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = freezed,
    Object? onlyManageableRewards = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      onlyManageableRewards: freezed == onlyManageableRewards
          ? _value.onlyManageableRewards
          : onlyManageableRewards // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetCustomRewardsPropsCopyWith<$Res>
    implements $GetCustomRewardsPropsCopyWith<$Res> {
  factory _$$_GetCustomRewardsPropsCopyWith(_$_GetCustomRewardsProps value,
          $Res Function(_$_GetCustomRewardsProps) then) =
      __$$_GetCustomRewardsPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String? id, bool? onlyManageableRewards});
}

/// @nodoc
class __$$_GetCustomRewardsPropsCopyWithImpl<$Res>
    extends _$GetCustomRewardsPropsCopyWithImpl<$Res, _$_GetCustomRewardsProps>
    implements _$$_GetCustomRewardsPropsCopyWith<$Res> {
  __$$_GetCustomRewardsPropsCopyWithImpl(_$_GetCustomRewardsProps _value,
      $Res Function(_$_GetCustomRewardsProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = freezed,
    Object? onlyManageableRewards = freezed,
  }) {
    return _then(_$_GetCustomRewardsProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      onlyManageableRewards: freezed == onlyManageableRewards
          ? _value.onlyManageableRewards
          : onlyManageableRewards // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCustomRewardsProps implements _GetCustomRewardsProps {
  const _$_GetCustomRewardsProps(
      {required this.broadcasterId, this.id, this.onlyManageableRewards});

  factory _$_GetCustomRewardsProps.fromJson(Map<String, dynamic> json) =>
      _$$_GetCustomRewardsPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String? id;
  @override
  final bool? onlyManageableRewards;

  @override
  String toString() {
    return 'GetCustomRewardsProps(broadcasterId: $broadcasterId, id: $id, onlyManageableRewards: $onlyManageableRewards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCustomRewardsProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.onlyManageableRewards, onlyManageableRewards) ||
                other.onlyManageableRewards == onlyManageableRewards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, broadcasterId, id, onlyManageableRewards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCustomRewardsPropsCopyWith<_$_GetCustomRewardsProps> get copyWith =>
      __$$_GetCustomRewardsPropsCopyWithImpl<_$_GetCustomRewardsProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCustomRewardsPropsToJson(
      this,
    );
  }
}

abstract class _GetCustomRewardsProps implements GetCustomRewardsProps {
  const factory _GetCustomRewardsProps(
      {required final String broadcasterId,
      final String? id,
      final bool? onlyManageableRewards}) = _$_GetCustomRewardsProps;

  factory _GetCustomRewardsProps.fromJson(Map<String, dynamic> json) =
      _$_GetCustomRewardsProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String? get id;
  @override
  bool? get onlyManageableRewards;
  @override
  @JsonKey(ignore: true)
  _$$_GetCustomRewardsPropsCopyWith<_$_GetCustomRewardsProps> get copyWith =>
      throw _privateConstructorUsedError;
}
