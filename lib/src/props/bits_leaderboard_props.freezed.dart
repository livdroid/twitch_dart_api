// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bits_leaderboard_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BitsLeaderBoardProps _$BitsLeaderBoardPropsFromJson(Map<String, dynamic> json) {
  return _BitsLeaderBoardProps.fromJson(json);
}

/// @nodoc
mixin _$BitsLeaderBoardProps {
  int? get count => throw _privateConstructorUsedError;
  String? get period => throw _privateConstructorUsedError;
  String? get startedAt => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BitsLeaderBoardPropsCopyWith<BitsLeaderBoardProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitsLeaderBoardPropsCopyWith<$Res> {
  factory $BitsLeaderBoardPropsCopyWith(BitsLeaderBoardProps value,
          $Res Function(BitsLeaderBoardProps) then) =
      _$BitsLeaderBoardPropsCopyWithImpl<$Res, BitsLeaderBoardProps>;
  @useResult
  $Res call({int? count, String? period, String? startedAt, String? userId});
}

/// @nodoc
class _$BitsLeaderBoardPropsCopyWithImpl<$Res,
        $Val extends BitsLeaderBoardProps>
    implements $BitsLeaderBoardPropsCopyWith<$Res> {
  _$BitsLeaderBoardPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? period = freezed,
    Object? startedAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BitsLeaderBoardPropsCopyWith<$Res>
    implements $BitsLeaderBoardPropsCopyWith<$Res> {
  factory _$$_BitsLeaderBoardPropsCopyWith(_$_BitsLeaderBoardProps value,
          $Res Function(_$_BitsLeaderBoardProps) then) =
      __$$_BitsLeaderBoardPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, String? period, String? startedAt, String? userId});
}

/// @nodoc
class __$$_BitsLeaderBoardPropsCopyWithImpl<$Res>
    extends _$BitsLeaderBoardPropsCopyWithImpl<$Res, _$_BitsLeaderBoardProps>
    implements _$$_BitsLeaderBoardPropsCopyWith<$Res> {
  __$$_BitsLeaderBoardPropsCopyWithImpl(_$_BitsLeaderBoardProps _value,
      $Res Function(_$_BitsLeaderBoardProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? period = freezed,
    Object? startedAt = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_BitsLeaderBoardProps(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BitsLeaderBoardProps implements _BitsLeaderBoardProps {
  const _$_BitsLeaderBoardProps(
      {this.count, this.period, this.startedAt, this.userId});

  factory _$_BitsLeaderBoardProps.fromJson(Map<String, dynamic> json) =>
      _$$_BitsLeaderBoardPropsFromJson(json);

  @override
  final int? count;
  @override
  final String? period;
  @override
  final String? startedAt;
  @override
  final String? userId;

  @override
  String toString() {
    return 'BitsLeaderBoardProps(count: $count, period: $period, startedAt: $startedAt, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BitsLeaderBoardProps &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, count, period, startedAt, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BitsLeaderBoardPropsCopyWith<_$_BitsLeaderBoardProps> get copyWith =>
      __$$_BitsLeaderBoardPropsCopyWithImpl<_$_BitsLeaderBoardProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BitsLeaderBoardPropsToJson(
      this,
    );
  }
}

abstract class _BitsLeaderBoardProps implements BitsLeaderBoardProps {
  const factory _BitsLeaderBoardProps(
      {final int? count,
      final String? period,
      final String? startedAt,
      final String? userId}) = _$_BitsLeaderBoardProps;

  factory _BitsLeaderBoardProps.fromJson(Map<String, dynamic> json) =
      _$_BitsLeaderBoardProps.fromJson;

  @override
  int? get count;
  @override
  String? get period;
  @override
  String? get startedAt;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_BitsLeaderBoardPropsCopyWith<_$_BitsLeaderBoardProps> get copyWith =>
      throw _privateConstructorUsedError;
}
