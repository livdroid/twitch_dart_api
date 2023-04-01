// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_broadcaster_subscription_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBroadcasterSubscriptionProps _$GetBroadcasterSubscriptionPropsFromJson(
    Map<String, dynamic> json) {
  return _GetBroadcasterSubscriptionProps.fromJson(json);
}

/// @nodoc
mixin _$GetBroadcasterSubscriptionProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get first => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBroadcasterSubscriptionPropsCopyWith<GetBroadcasterSubscriptionProps>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBroadcasterSubscriptionPropsCopyWith<$Res> {
  factory $GetBroadcasterSubscriptionPropsCopyWith(
          GetBroadcasterSubscriptionProps value,
          $Res Function(GetBroadcasterSubscriptionProps) then) =
      _$GetBroadcasterSubscriptionPropsCopyWithImpl<$Res,
          GetBroadcasterSubscriptionProps>;
  @useResult
  $Res call(
      {String broadcasterId,
      String? userId,
      String? first,
      String? after,
      String? before});
}

/// @nodoc
class _$GetBroadcasterSubscriptionPropsCopyWithImpl<$Res,
        $Val extends GetBroadcasterSubscriptionProps>
    implements $GetBroadcasterSubscriptionPropsCopyWith<$Res> {
  _$GetBroadcasterSubscriptionPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = freezed,
    Object? first = freezed,
    Object? after = freezed,
    Object? before = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetBroadcasterSubscriptionPropsCopyWith<$Res>
    implements $GetBroadcasterSubscriptionPropsCopyWith<$Res> {
  factory _$$_GetBroadcasterSubscriptionPropsCopyWith(
          _$_GetBroadcasterSubscriptionProps value,
          $Res Function(_$_GetBroadcasterSubscriptionProps) then) =
      __$$_GetBroadcasterSubscriptionPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String broadcasterId,
      String? userId,
      String? first,
      String? after,
      String? before});
}

/// @nodoc
class __$$_GetBroadcasterSubscriptionPropsCopyWithImpl<$Res>
    extends _$GetBroadcasterSubscriptionPropsCopyWithImpl<$Res,
        _$_GetBroadcasterSubscriptionProps>
    implements _$$_GetBroadcasterSubscriptionPropsCopyWith<$Res> {
  __$$_GetBroadcasterSubscriptionPropsCopyWithImpl(
      _$_GetBroadcasterSubscriptionProps _value,
      $Res Function(_$_GetBroadcasterSubscriptionProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? userId = freezed,
    Object? first = freezed,
    Object? after = freezed,
    Object? before = freezed,
  }) {
    return _then(_$_GetBroadcasterSubscriptionProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetBroadcasterSubscriptionProps
    implements _GetBroadcasterSubscriptionProps {
  const _$_GetBroadcasterSubscriptionProps(
      {required this.broadcasterId,
      this.userId,
      this.first,
      this.after,
      this.before});

  factory _$_GetBroadcasterSubscriptionProps.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetBroadcasterSubscriptionPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String? userId;
  @override
  final String? first;
  @override
  final String? after;
  @override
  final String? before;

  @override
  String toString() {
    return 'GetBroadcasterSubscriptionProps(broadcasterId: $broadcasterId, userId: $userId, first: $first, after: $after, before: $before)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBroadcasterSubscriptionProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.before, before) || other.before == before));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, broadcasterId, userId, first, after, before);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetBroadcasterSubscriptionPropsCopyWith<
          _$_GetBroadcasterSubscriptionProps>
      get copyWith => __$$_GetBroadcasterSubscriptionPropsCopyWithImpl<
          _$_GetBroadcasterSubscriptionProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBroadcasterSubscriptionPropsToJson(
      this,
    );
  }
}

abstract class _GetBroadcasterSubscriptionProps
    implements GetBroadcasterSubscriptionProps {
  const factory _GetBroadcasterSubscriptionProps(
      {required final String broadcasterId,
      final String? userId,
      final String? first,
      final String? after,
      final String? before}) = _$_GetBroadcasterSubscriptionProps;

  factory _GetBroadcasterSubscriptionProps.fromJson(Map<String, dynamic> json) =
      _$_GetBroadcasterSubscriptionProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String? get userId;
  @override
  String? get first;
  @override
  String? get after;
  @override
  String? get before;
  @override
  @JsonKey(ignore: true)
  _$$_GetBroadcasterSubscriptionPropsCopyWith<
          _$_GetBroadcasterSubscriptionProps>
      get copyWith => throw _privateConstructorUsedError;
}
