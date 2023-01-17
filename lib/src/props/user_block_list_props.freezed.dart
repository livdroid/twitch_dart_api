// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_block_list_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserBlockListProps _$UserBlockListPropsFromJson(Map<String, dynamic> json) {
  return _UserBlockListProps.fromJson(json);
}

/// @nodoc
mixin _$UserBlockListProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  int? get first => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBlockListPropsCopyWith<UserBlockListProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockListPropsCopyWith<$Res> {
  factory $UserBlockListPropsCopyWith(
          UserBlockListProps value, $Res Function(UserBlockListProps) then) =
      _$UserBlockListPropsCopyWithImpl<$Res, UserBlockListProps>;
  @useResult
  $Res call({String broadcasterId, int? first, String? after});
}

/// @nodoc
class _$UserBlockListPropsCopyWithImpl<$Res, $Val extends UserBlockListProps>
    implements $UserBlockListPropsCopyWith<$Res> {
  _$UserBlockListPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_UserBlockListPropsCopyWith<$Res>
    implements $UserBlockListPropsCopyWith<$Res> {
  factory _$$_UserBlockListPropsCopyWith(_$_UserBlockListProps value,
          $Res Function(_$_UserBlockListProps) then) =
      __$$_UserBlockListPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, int? first, String? after});
}

/// @nodoc
class __$$_UserBlockListPropsCopyWithImpl<$Res>
    extends _$UserBlockListPropsCopyWithImpl<$Res, _$_UserBlockListProps>
    implements _$$_UserBlockListPropsCopyWith<$Res> {
  __$$_UserBlockListPropsCopyWithImpl(
      _$_UserBlockListProps _value, $Res Function(_$_UserBlockListProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_$_UserBlockListProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_UserBlockListProps implements _UserBlockListProps {
  const _$_UserBlockListProps(
      {required this.broadcasterId, this.first, this.after});

  factory _$_UserBlockListProps.fromJson(Map<String, dynamic> json) =>
      _$$_UserBlockListPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final int? first;
  @override
  final String? after;

  @override
  String toString() {
    return 'UserBlockListProps(broadcasterId: $broadcasterId, first: $first, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserBlockListProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, first, after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserBlockListPropsCopyWith<_$_UserBlockListProps> get copyWith =>
      __$$_UserBlockListPropsCopyWithImpl<_$_UserBlockListProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserBlockListPropsToJson(
      this,
    );
  }
}

abstract class _UserBlockListProps implements UserBlockListProps {
  const factory _UserBlockListProps(
      {required final String broadcasterId,
      final int? first,
      final String? after}) = _$_UserBlockListProps;

  factory _UserBlockListProps.fromJson(Map<String, dynamic> json) =
      _$_UserBlockListProps.fromJson;

  @override
  String get broadcasterId;
  @override
  int? get first;
  @override
  String? get after;
  @override
  @JsonKey(ignore: true)
  _$$_UserBlockListPropsCopyWith<_$_UserBlockListProps> get copyWith =>
      throw _privateConstructorUsedError;
}
