// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_blocked_terms_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveBlockedTermsProps _$RemoveBlockedTermsPropsFromJson(
    Map<String, dynamic> json) {
  return _RemoveBlockedTermsProps.fromJson(json);
}

/// @nodoc
mixin _$RemoveBlockedTermsProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get moderatorId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveBlockedTermsPropsCopyWith<RemoveBlockedTermsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveBlockedTermsPropsCopyWith<$Res> {
  factory $RemoveBlockedTermsPropsCopyWith(RemoveBlockedTermsProps value,
          $Res Function(RemoveBlockedTermsProps) then) =
      _$RemoveBlockedTermsPropsCopyWithImpl<$Res, RemoveBlockedTermsProps>;
  @useResult
  $Res call({String broadcasterId, String moderatorId, String id});
}

/// @nodoc
class _$RemoveBlockedTermsPropsCopyWithImpl<$Res,
        $Val extends RemoveBlockedTermsProps>
    implements $RemoveBlockedTermsPropsCopyWith<$Res> {
  _$RemoveBlockedTermsPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoveBlockedTermsPropsCopyWith<$Res>
    implements $RemoveBlockedTermsPropsCopyWith<$Res> {
  factory _$$_RemoveBlockedTermsPropsCopyWith(_$_RemoveBlockedTermsProps value,
          $Res Function(_$_RemoveBlockedTermsProps) then) =
      __$$_RemoveBlockedTermsPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String moderatorId, String id});
}

/// @nodoc
class __$$_RemoveBlockedTermsPropsCopyWithImpl<$Res>
    extends _$RemoveBlockedTermsPropsCopyWithImpl<$Res,
        _$_RemoveBlockedTermsProps>
    implements _$$_RemoveBlockedTermsPropsCopyWith<$Res> {
  __$$_RemoveBlockedTermsPropsCopyWithImpl(_$_RemoveBlockedTermsProps _value,
      $Res Function(_$_RemoveBlockedTermsProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? moderatorId = null,
    Object? id = null,
  }) {
    return _then(_$_RemoveBlockedTermsProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      moderatorId: null == moderatorId
          ? _value.moderatorId
          : moderatorId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoveBlockedTermsProps implements _RemoveBlockedTermsProps {
  const _$_RemoveBlockedTermsProps(
      {required this.broadcasterId,
      required this.moderatorId,
      required this.id});

  factory _$_RemoveBlockedTermsProps.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveBlockedTermsPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String moderatorId;
  @override
  final String id;

  @override
  String toString() {
    return 'RemoveBlockedTermsProps(broadcasterId: $broadcasterId, moderatorId: $moderatorId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveBlockedTermsProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.moderatorId, moderatorId) ||
                other.moderatorId == moderatorId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, moderatorId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveBlockedTermsPropsCopyWith<_$_RemoveBlockedTermsProps>
      get copyWith =>
          __$$_RemoveBlockedTermsPropsCopyWithImpl<_$_RemoveBlockedTermsProps>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoveBlockedTermsPropsToJson(
      this,
    );
  }
}

abstract class _RemoveBlockedTermsProps implements RemoveBlockedTermsProps {
  const factory _RemoveBlockedTermsProps(
      {required final String broadcasterId,
      required final String moderatorId,
      required final String id}) = _$_RemoveBlockedTermsProps;

  factory _RemoveBlockedTermsProps.fromJson(Map<String, dynamic> json) =
      _$_RemoveBlockedTermsProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get moderatorId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RemoveBlockedTermsPropsCopyWith<_$_RemoveBlockedTermsProps>
      get copyWith => throw _privateConstructorUsedError;
}
