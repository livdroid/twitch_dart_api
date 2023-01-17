// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatters_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattersProps _$ChattersPropsFromJson(Map<String, dynamic> json) {
  return _ChattersProps.fromJson(json);
}

/// @nodoc
mixin _$ChattersProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get moderatorId => throw _privateConstructorUsedError;
  int? get first => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattersPropsCopyWith<ChattersProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattersPropsCopyWith<$Res> {
  factory $ChattersPropsCopyWith(
          ChattersProps value, $Res Function(ChattersProps) then) =
      _$ChattersPropsCopyWithImpl<$Res, ChattersProps>;
  @useResult
  $Res call(
      {String broadcasterId, String moderatorId, int? first, String? after});
}

/// @nodoc
class _$ChattersPropsCopyWithImpl<$Res, $Val extends ChattersProps>
    implements $ChattersPropsCopyWith<$Res> {
  _$ChattersPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
    Object? first = freezed,
    Object? after = freezed,
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
abstract class _$$_ChattersPropsCopyWith<$Res>
    implements $ChattersPropsCopyWith<$Res> {
  factory _$$_ChattersPropsCopyWith(
          _$_ChattersProps value, $Res Function(_$_ChattersProps) then) =
      __$$_ChattersPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String broadcasterId, String moderatorId, int? first, String? after});
}

/// @nodoc
class __$$_ChattersPropsCopyWithImpl<$Res>
    extends _$ChattersPropsCopyWithImpl<$Res, _$_ChattersProps>
    implements _$$_ChattersPropsCopyWith<$Res> {
  __$$_ChattersPropsCopyWithImpl(
      _$_ChattersProps _value, $Res Function(_$_ChattersProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_$_ChattersProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: null == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
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
class _$_ChattersProps implements _ChattersProps {
  const _$_ChattersProps(
      {required this.broadcasterId,
      required this.moderatorId,
      this.first,
      this.after});

  factory _$_ChattersProps.fromJson(Map<String, dynamic> json) =>
      _$$_ChattersPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String moderatorId;
  @override
  final int? first;
  @override
  final String? after;

  @override
  String toString() {
    return 'ChattersProps(broadcasterId: $broadcasterId, moderatorId: $moderatorId, first: $first, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChattersProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, broadcasterId, moderatorId, first, after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChattersPropsCopyWith<_$_ChattersProps> get copyWith =>
      __$$_ChattersPropsCopyWithImpl<_$_ChattersProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChattersPropsToJson(
      this,
    );
  }
}

abstract class _ChattersProps implements ChattersProps {
  const factory _ChattersProps(
      {required final String broadcasterId,
      required final String moderatorId,
      final int? first,
      final String? after}) = _$_ChattersProps;

  factory _ChattersProps.fromJson(Map<String, dynamic> json) =
      _$_ChattersProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get moderatorId;
  @override
  int? get first;
  @override
  String? get after;
  @override
  @JsonKey(ignore: true)
  _$$_ChattersPropsCopyWith<_$_ChattersProps> get copyWith =>
      throw _privateConstructorUsedError;
}
