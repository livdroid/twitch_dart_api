// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcaster_id_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcasterAndIdProps _$BroadcasterAndIdPropsFromJson(
    Map<String, dynamic> json) {
  return _BroadcasterAndId.fromJson(json);
}

/// @nodoc
mixin _$BroadcasterAndIdProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcasterAndIdPropsCopyWith<BroadcasterAndIdProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcasterAndIdPropsCopyWith<$Res> {
  factory $BroadcasterAndIdPropsCopyWith(BroadcasterAndIdProps value,
          $Res Function(BroadcasterAndIdProps) then) =
      _$BroadcasterAndIdPropsCopyWithImpl<$Res, BroadcasterAndIdProps>;
  @useResult
  $Res call({String broadcasterId, String id});
}

/// @nodoc
class _$BroadcasterAndIdPropsCopyWithImpl<$Res,
        $Val extends BroadcasterAndIdProps>
    implements $BroadcasterAndIdPropsCopyWith<$Res> {
  _$BroadcasterAndIdPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcasterAndIdCopyWith<$Res>
    implements $BroadcasterAndIdPropsCopyWith<$Res> {
  factory _$$_BroadcasterAndIdCopyWith(
          _$_BroadcasterAndId value, $Res Function(_$_BroadcasterAndId) then) =
      __$$_BroadcasterAndIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String id});
}

/// @nodoc
class __$$_BroadcasterAndIdCopyWithImpl<$Res>
    extends _$BroadcasterAndIdPropsCopyWithImpl<$Res, _$_BroadcasterAndId>
    implements _$$_BroadcasterAndIdCopyWith<$Res> {
  __$$_BroadcasterAndIdCopyWithImpl(
      _$_BroadcasterAndId _value, $Res Function(_$_BroadcasterAndId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = null,
  }) {
    return _then(_$_BroadcasterAndId(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
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
class _$_BroadcasterAndId implements _BroadcasterAndId {
  const _$_BroadcasterAndId({required this.broadcasterId, required this.id});

  factory _$_BroadcasterAndId.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcasterAndIdFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String id;

  @override
  String toString() {
    return 'BroadcasterAndIdProps(broadcasterId: $broadcasterId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcasterAndId &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcasterAndIdCopyWith<_$_BroadcasterAndId> get copyWith =>
      __$$_BroadcasterAndIdCopyWithImpl<_$_BroadcasterAndId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcasterAndIdToJson(
      this,
    );
  }
}

abstract class _BroadcasterAndId implements BroadcasterAndIdProps {
  const factory _BroadcasterAndId(
      {required final String broadcasterId,
      required final String id}) = _$_BroadcasterAndId;

  factory _BroadcasterAndId.fromJson(Map<String, dynamic> json) =
      _$_BroadcasterAndId.fromJson;

  @override
  String get broadcasterId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcasterAndIdCopyWith<_$_BroadcasterAndId> get copyWith =>
      throw _privateConstructorUsedError;
}
