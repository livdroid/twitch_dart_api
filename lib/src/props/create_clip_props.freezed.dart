// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_clip_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateClipProps _$CreateClipPropsFromJson(Map<String, dynamic> json) {
  return _CreateClipProps.fromJson(json);
}

/// @nodoc
mixin _$CreateClipProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  bool? get hasDelay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateClipPropsCopyWith<CreateClipProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClipPropsCopyWith<$Res> {
  factory $CreateClipPropsCopyWith(
          CreateClipProps value, $Res Function(CreateClipProps) then) =
      _$CreateClipPropsCopyWithImpl<$Res, CreateClipProps>;
  @useResult
  $Res call({String broadcasterId, bool? hasDelay});
}

/// @nodoc
class _$CreateClipPropsCopyWithImpl<$Res, $Val extends CreateClipProps>
    implements $CreateClipPropsCopyWith<$Res> {
  _$CreateClipPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? hasDelay = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      hasDelay: freezed == hasDelay
          ? _value.hasDelay
          : hasDelay // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateClipPropsCopyWith<$Res>
    implements $CreateClipPropsCopyWith<$Res> {
  factory _$$_CreateClipPropsCopyWith(
          _$_CreateClipProps value, $Res Function(_$_CreateClipProps) then) =
      __$$_CreateClipPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, bool? hasDelay});
}

/// @nodoc
class __$$_CreateClipPropsCopyWithImpl<$Res>
    extends _$CreateClipPropsCopyWithImpl<$Res, _$_CreateClipProps>
    implements _$$_CreateClipPropsCopyWith<$Res> {
  __$$_CreateClipPropsCopyWithImpl(
      _$_CreateClipProps _value, $Res Function(_$_CreateClipProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? hasDelay = freezed,
  }) {
    return _then(_$_CreateClipProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      hasDelay: freezed == hasDelay
          ? _value.hasDelay
          : hasDelay // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateClipProps implements _CreateClipProps {
  const _$_CreateClipProps({required this.broadcasterId, this.hasDelay});

  factory _$_CreateClipProps.fromJson(Map<String, dynamic> json) =>
      _$$_CreateClipPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final bool? hasDelay;

  @override
  String toString() {
    return 'CreateClipProps(broadcasterId: $broadcasterId, hasDelay: $hasDelay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateClipProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.hasDelay, hasDelay) ||
                other.hasDelay == hasDelay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, hasDelay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateClipPropsCopyWith<_$_CreateClipProps> get copyWith =>
      __$$_CreateClipPropsCopyWithImpl<_$_CreateClipProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateClipPropsToJson(
      this,
    );
  }
}

abstract class _CreateClipProps implements CreateClipProps {
  const factory _CreateClipProps(
      {required final String broadcasterId,
      final bool? hasDelay}) = _$_CreateClipProps;

  factory _CreateClipProps.fromJson(Map<String, dynamic> json) =
      _$_CreateClipProps.fromJson;

  @override
  String get broadcasterId;
  @override
  bool? get hasDelay;
  @override
  @JsonKey(ignore: true)
  _$$_CreateClipPropsCopyWith<_$_CreateClipProps> get copyWith =>
      throw _privateConstructorUsedError;
}
