// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_followed_streams_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetFollowedStreamsProps _$GetFollowedStreamsPropsFromJson(
    Map<String, dynamic> json) {
  return _GetFollowedStreamsProps.fromJson(json);
}

/// @nodoc
mixin _$GetFollowedStreamsProps {
  String get userId => throw _privateConstructorUsedError;
  int? get first => throw _privateConstructorUsedError;
  int? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFollowedStreamsPropsCopyWith<GetFollowedStreamsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFollowedStreamsPropsCopyWith<$Res> {
  factory $GetFollowedStreamsPropsCopyWith(GetFollowedStreamsProps value,
          $Res Function(GetFollowedStreamsProps) then) =
      _$GetFollowedStreamsPropsCopyWithImpl<$Res, GetFollowedStreamsProps>;
  @useResult
  $Res call({String userId, int? first, int? after});
}

/// @nodoc
class _$GetFollowedStreamsPropsCopyWithImpl<$Res,
        $Val extends GetFollowedStreamsProps>
    implements $GetFollowedStreamsPropsCopyWith<$Res> {
  _$GetFollowedStreamsPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetFollowedStreamsPropsCopyWith<$Res>
    implements $GetFollowedStreamsPropsCopyWith<$Res> {
  factory _$$_GetFollowedStreamsPropsCopyWith(_$_GetFollowedStreamsProps value,
          $Res Function(_$_GetFollowedStreamsProps) then) =
      __$$_GetFollowedStreamsPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, int? first, int? after});
}

/// @nodoc
class __$$_GetFollowedStreamsPropsCopyWithImpl<$Res>
    extends _$GetFollowedStreamsPropsCopyWithImpl<$Res,
        _$_GetFollowedStreamsProps>
    implements _$$_GetFollowedStreamsPropsCopyWith<$Res> {
  __$$_GetFollowedStreamsPropsCopyWithImpl(_$_GetFollowedStreamsProps _value,
      $Res Function(_$_GetFollowedStreamsProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_$_GetFollowedStreamsProps(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetFollowedStreamsProps implements _GetFollowedStreamsProps {
  const _$_GetFollowedStreamsProps(
      {required this.userId, this.first, this.after});

  factory _$_GetFollowedStreamsProps.fromJson(Map<String, dynamic> json) =>
      _$$_GetFollowedStreamsPropsFromJson(json);

  @override
  final String userId;
  @override
  final int? first;
  @override
  final int? after;

  @override
  String toString() {
    return 'GetFollowedStreamsProps(userId: $userId, first: $first, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetFollowedStreamsProps &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, first, after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetFollowedStreamsPropsCopyWith<_$_GetFollowedStreamsProps>
      get copyWith =>
          __$$_GetFollowedStreamsPropsCopyWithImpl<_$_GetFollowedStreamsProps>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetFollowedStreamsPropsToJson(
      this,
    );
  }
}

abstract class _GetFollowedStreamsProps implements GetFollowedStreamsProps {
  const factory _GetFollowedStreamsProps(
      {required final String userId,
      final int? first,
      final int? after}) = _$_GetFollowedStreamsProps;

  factory _GetFollowedStreamsProps.fromJson(Map<String, dynamic> json) =
      _$_GetFollowedStreamsProps.fromJson;

  @override
  String get userId;
  @override
  int? get first;
  @override
  int? get after;
  @override
  @JsonKey(ignore: true)
  _$$_GetFollowedStreamsPropsCopyWith<_$_GetFollowedStreamsProps>
      get copyWith => throw _privateConstructorUsedError;
}
