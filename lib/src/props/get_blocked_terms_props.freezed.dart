// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_blocked_terms_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetBlockedTermsProps _$GetBlockedTermsPropsFromJson(Map<String, dynamic> json) {
  return _GetBlockedTermsProps.fromJson(json);
}

/// @nodoc
mixin _$GetBlockedTermsProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get moderatorId => throw _privateConstructorUsedError;
  int? get first => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetBlockedTermsPropsCopyWith<GetBlockedTermsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBlockedTermsPropsCopyWith<$Res> {
  factory $GetBlockedTermsPropsCopyWith(GetBlockedTermsProps value,
          $Res Function(GetBlockedTermsProps) then) =
      _$GetBlockedTermsPropsCopyWithImpl<$Res, GetBlockedTermsProps>;
  @useResult
  $Res call(
      {String broadcasterId, String moderatorId, int? first, String? after});
}

/// @nodoc
class _$GetBlockedTermsPropsCopyWithImpl<$Res,
        $Val extends GetBlockedTermsProps>
    implements $GetBlockedTermsPropsCopyWith<$Res> {
  _$GetBlockedTermsPropsCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetBlockedTermsPropsCopyWith<$Res>
    implements $GetBlockedTermsPropsCopyWith<$Res> {
  factory _$$_GetBlockedTermsPropsCopyWith(_$_GetBlockedTermsProps value,
          $Res Function(_$_GetBlockedTermsProps) then) =
      __$$_GetBlockedTermsPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String broadcasterId, String moderatorId, int? first, String? after});
}

/// @nodoc
class __$$_GetBlockedTermsPropsCopyWithImpl<$Res>
    extends _$GetBlockedTermsPropsCopyWithImpl<$Res, _$_GetBlockedTermsProps>
    implements _$$_GetBlockedTermsPropsCopyWith<$Res> {
  __$$_GetBlockedTermsPropsCopyWithImpl(_$_GetBlockedTermsProps _value,
      $Res Function(_$_GetBlockedTermsProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
    Object? first = freezed,
    Object? after = freezed,
  }) {
    return _then(_$_GetBlockedTermsProps(
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
class _$_GetBlockedTermsProps implements _GetBlockedTermsProps {
  const _$_GetBlockedTermsProps(
      {required this.broadcasterId,
      required this.moderatorId,
      this.first,
      this.after});

  factory _$_GetBlockedTermsProps.fromJson(Map<String, dynamic> json) =>
      _$$_GetBlockedTermsPropsFromJson(json);

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
    return 'GetBlockedTermsProps(broadcasterId: $broadcasterId, moderatorId: $moderatorId, first: $first, after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetBlockedTermsProps &&
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
  _$$_GetBlockedTermsPropsCopyWith<_$_GetBlockedTermsProps> get copyWith =>
      __$$_GetBlockedTermsPropsCopyWithImpl<_$_GetBlockedTermsProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetBlockedTermsPropsToJson(
      this,
    );
  }
}

abstract class _GetBlockedTermsProps implements GetBlockedTermsProps {
  const factory _GetBlockedTermsProps(
      {required final String broadcasterId,
      required final String moderatorId,
      final int? first,
      final String? after}) = _$_GetBlockedTermsProps;

  factory _GetBlockedTermsProps.fromJson(Map<String, dynamic> json) =
      _$_GetBlockedTermsProps.fromJson;

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
  _$$_GetBlockedTermsPropsCopyWith<_$_GetBlockedTermsProps> get copyWith =>
      throw _privateConstructorUsedError;
}
