// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_custom_reward_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteCustomRewardProps _$DeleteCustomRewardPropsFromJson(
    Map<String, dynamic> json) {
  return _DeleteCustomRewardProps.fromJson(json);
}

/// @nodoc
mixin _$DeleteCustomRewardProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCustomRewardPropsCopyWith<DeleteCustomRewardProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCustomRewardPropsCopyWith<$Res> {
  factory $DeleteCustomRewardPropsCopyWith(DeleteCustomRewardProps value,
          $Res Function(DeleteCustomRewardProps) then) =
      _$DeleteCustomRewardPropsCopyWithImpl<$Res, DeleteCustomRewardProps>;
  @useResult
  $Res call({String broadcasterId, String id});
}

/// @nodoc
class _$DeleteCustomRewardPropsCopyWithImpl<$Res,
        $Val extends DeleteCustomRewardProps>
    implements $DeleteCustomRewardPropsCopyWith<$Res> {
  _$DeleteCustomRewardPropsCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeleteCustomRewardPropsCopyWith<$Res>
    implements $DeleteCustomRewardPropsCopyWith<$Res> {
  factory _$$_DeleteCustomRewardPropsCopyWith(_$_DeleteCustomRewardProps value,
          $Res Function(_$_DeleteCustomRewardProps) then) =
      __$$_DeleteCustomRewardPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String id});
}

/// @nodoc
class __$$_DeleteCustomRewardPropsCopyWithImpl<$Res>
    extends _$DeleteCustomRewardPropsCopyWithImpl<$Res,
        _$_DeleteCustomRewardProps>
    implements _$$_DeleteCustomRewardPropsCopyWith<$Res> {
  __$$_DeleteCustomRewardPropsCopyWithImpl(_$_DeleteCustomRewardProps _value,
      $Res Function(_$_DeleteCustomRewardProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = null,
  }) {
    return _then(_$_DeleteCustomRewardProps(
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
class _$_DeleteCustomRewardProps implements _DeleteCustomRewardProps {
  const _$_DeleteCustomRewardProps(
      {required this.broadcasterId, required this.id});

  factory _$_DeleteCustomRewardProps.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteCustomRewardPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String id;

  @override
  String toString() {
    return 'DeleteCustomRewardProps(broadcasterId: $broadcasterId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteCustomRewardProps &&
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
  _$$_DeleteCustomRewardPropsCopyWith<_$_DeleteCustomRewardProps>
      get copyWith =>
          __$$_DeleteCustomRewardPropsCopyWithImpl<_$_DeleteCustomRewardProps>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteCustomRewardPropsToJson(
      this,
    );
  }
}

abstract class _DeleteCustomRewardProps implements DeleteCustomRewardProps {
  const factory _DeleteCustomRewardProps(
      {required final String broadcasterId,
      required final String id}) = _$_DeleteCustomRewardProps;

  factory _DeleteCustomRewardProps.fromJson(Map<String, dynamic> json) =
      _$_DeleteCustomRewardProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteCustomRewardPropsCopyWith<_$_DeleteCustomRewardProps>
      get copyWith => throw _privateConstructorUsedError;
}
