// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_user_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlockUserProps _$BlockUserPropsFromJson(Map<String, dynamic> json) {
  return _BlockUserProps.fromJson(json);
}

/// @nodoc
mixin _$BlockUserProps {
  String get targetUserId => throw _privateConstructorUsedError;
  String? get sourceContext => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockUserPropsCopyWith<BlockUserProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockUserPropsCopyWith<$Res> {
  factory $BlockUserPropsCopyWith(
          BlockUserProps value, $Res Function(BlockUserProps) then) =
      _$BlockUserPropsCopyWithImpl<$Res, BlockUserProps>;
  @useResult
  $Res call({String targetUserId, String? sourceContext, String? reason});
}

/// @nodoc
class _$BlockUserPropsCopyWithImpl<$Res, $Val extends BlockUserProps>
    implements $BlockUserPropsCopyWith<$Res> {
  _$BlockUserPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetUserId = null,
    Object? sourceContext = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      sourceContext: freezed == sourceContext
          ? _value.sourceContext
          : sourceContext // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlockUserPropsCopyWith<$Res>
    implements $BlockUserPropsCopyWith<$Res> {
  factory _$$_BlockUserPropsCopyWith(
          _$_BlockUserProps value, $Res Function(_$_BlockUserProps) then) =
      __$$_BlockUserPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String targetUserId, String? sourceContext, String? reason});
}

/// @nodoc
class __$$_BlockUserPropsCopyWithImpl<$Res>
    extends _$BlockUserPropsCopyWithImpl<$Res, _$_BlockUserProps>
    implements _$$_BlockUserPropsCopyWith<$Res> {
  __$$_BlockUserPropsCopyWithImpl(
      _$_BlockUserProps _value, $Res Function(_$_BlockUserProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetUserId = null,
    Object? sourceContext = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_BlockUserProps(
      targetUserId: null == targetUserId
          ? _value.targetUserId
          : targetUserId // ignore: cast_nullable_to_non_nullable
              as String,
      sourceContext: freezed == sourceContext
          ? _value.sourceContext
          : sourceContext // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BlockUserProps implements _BlockUserProps {
  const _$_BlockUserProps(
      {required this.targetUserId, this.sourceContext, this.reason});

  factory _$_BlockUserProps.fromJson(Map<String, dynamic> json) =>
      _$$_BlockUserPropsFromJson(json);

  @override
  final String targetUserId;
  @override
  final String? sourceContext;
  @override
  final String? reason;

  @override
  String toString() {
    return 'BlockUserProps(targetUserId: $targetUserId, sourceContext: $sourceContext, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlockUserProps &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId) &&
            (identical(other.sourceContext, sourceContext) ||
                other.sourceContext == sourceContext) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, targetUserId, sourceContext, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlockUserPropsCopyWith<_$_BlockUserProps> get copyWith =>
      __$$_BlockUserPropsCopyWithImpl<_$_BlockUserProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlockUserPropsToJson(
      this,
    );
  }
}

abstract class _BlockUserProps implements BlockUserProps {
  const factory _BlockUserProps(
      {required final String targetUserId,
      final String? sourceContext,
      final String? reason}) = _$_BlockUserProps;

  factory _BlockUserProps.fromJson(Map<String, dynamic> json) =
      _$_BlockUserProps.fromJson;

  @override
  String get targetUserId;
  @override
  String? get sourceContext;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_BlockUserPropsCopyWith<_$_BlockUserProps> get copyWith =>
      throw _privateConstructorUsedError;
}
