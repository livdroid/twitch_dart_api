// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_follow_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFollowProps _$UserFollowPropsFromJson(Map<String, dynamic> json) {
  return _UserFollowProps.fromJson(json);
}

/// @nodoc
mixin _$UserFollowProps {
  String? get fromId => throw _privateConstructorUsedError;
  String? get toId => throw _privateConstructorUsedError;
  int? get first => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFollowPropsCopyWith<UserFollowProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFollowPropsCopyWith<$Res> {
  factory $UserFollowPropsCopyWith(
          UserFollowProps value, $Res Function(UserFollowProps) then) =
      _$UserFollowPropsCopyWithImpl<$Res, UserFollowProps>;
  @useResult
  $Res call({String? fromId, String? toId, int? first, String? after});
}

/// @nodoc
class _$UserFollowPropsCopyWithImpl<$Res, $Val extends UserFollowProps>
    implements $UserFollowPropsCopyWith<$Res> {
  _$UserFollowPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromId = freezed,
    Object? toId = freezed,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_value.copyWith(
      fromId: freezed == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String?,
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFollowPropsCopyWith<$Res>
    implements $UserFollowPropsCopyWith<$Res> {
  factory _$$_UserFollowPropsCopyWith(
          _$_UserFollowProps value, $Res Function(_$_UserFollowProps) then) =
      __$$_UserFollowPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fromId, String? toId, int? first, String? after});
}

/// @nodoc
class __$$_UserFollowPropsCopyWithImpl<$Res>
    extends _$UserFollowPropsCopyWithImpl<$Res, _$_UserFollowProps>
    implements _$$_UserFollowPropsCopyWith<$Res> {
  __$$_UserFollowPropsCopyWithImpl(
      _$_UserFollowProps _value, $Res Function(_$_UserFollowProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromId = freezed,
    Object? toId = freezed,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_$_UserFollowProps(
      fromId: freezed == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String?,
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFollowProps implements _UserFollowProps {
  const _$_UserFollowProps({this.fromId, this.toId, this.first, this.after});

  factory _$_UserFollowProps.fromJson(Map<String, dynamic> json) =>
      _$$_UserFollowPropsFromJson(json);

  @override
  final String? fromId;
  @override
  final String? toId;
  @override
  final int? first;
  @override
  final String? after;

  @override
  String toString() {
    return 'UserFollowProps(fromId: $fromId, toId: $toId, first: $first, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFollowProps &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromId, toId, first, after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFollowPropsCopyWith<_$_UserFollowProps> get copyWith =>
      __$$_UserFollowPropsCopyWithImpl<_$_UserFollowProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFollowPropsToJson(
      this,
    );
  }
}

abstract class _UserFollowProps implements UserFollowProps {
  const factory _UserFollowProps(
      {final String? fromId,
      final String? toId,
      final int? first,
      final String? after}) = _$_UserFollowProps;

  factory _UserFollowProps.fromJson(Map<String, dynamic> json) =
      _$_UserFollowProps.fromJson;

  @override
  String? get fromId;
  @override
  String? get toId;
  @override
  int? get first;
  @override
  String? get after;
  @override
  @JsonKey(ignore: true)
  _$$_UserFollowPropsCopyWith<_$_UserFollowProps> get copyWith =>
      throw _privateConstructorUsedError;
}
