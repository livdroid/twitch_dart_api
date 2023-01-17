// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cheermotes_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheermotesProps _$CheermotesPropsFromJson(Map<String, dynamic> json) {
  return _CheermotesProps.fromJson(json);
}

/// @nodoc
mixin _$CheermotesProps {
  String get broadcasterId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheermotesPropsCopyWith<CheermotesProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheermotesPropsCopyWith<$Res> {
  factory $CheermotesPropsCopyWith(
          CheermotesProps value, $Res Function(CheermotesProps) then) =
      _$CheermotesPropsCopyWithImpl<$Res, CheermotesProps>;
  @useResult
  $Res call({String broadcasterId});
}

/// @nodoc
class _$CheermotesPropsCopyWithImpl<$Res, $Val extends CheermotesProps>
    implements $CheermotesPropsCopyWith<$Res> {
  _$CheermotesPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CheermotesPropsCopyWith<$Res>
    implements $CheermotesPropsCopyWith<$Res> {
  factory _$$_CheermotesPropsCopyWith(
          _$_CheermotesProps value, $Res Function(_$_CheermotesProps) then) =
      __$$_CheermotesPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId});
}

/// @nodoc
class __$$_CheermotesPropsCopyWithImpl<$Res>
    extends _$CheermotesPropsCopyWithImpl<$Res, _$_CheermotesProps>
    implements _$$_CheermotesPropsCopyWith<$Res> {
  __$$_CheermotesPropsCopyWithImpl(
      _$_CheermotesProps _value, $Res Function(_$_CheermotesProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
  }) {
    return _then(_$_CheermotesProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheermotesProps implements _CheermotesProps {
  const _$_CheermotesProps({required this.broadcasterId});

  factory _$_CheermotesProps.fromJson(Map<String, dynamic> json) =>
      _$$_CheermotesPropsFromJson(json);

  @override
  final String broadcasterId;

  @override
  String toString() {
    return 'CheermotesProps(broadcasterId: $broadcasterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheermotesProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheermotesPropsCopyWith<_$_CheermotesProps> get copyWith =>
      __$$_CheermotesPropsCopyWithImpl<_$_CheermotesProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheermotesPropsToJson(
      this,
    );
  }
}

abstract class _CheermotesProps implements CheermotesProps {
  const factory _CheermotesProps({required final String broadcasterId}) =
      _$_CheermotesProps;

  factory _CheermotesProps.fromJson(Map<String, dynamic> json) =
      _$_CheermotesProps.fromJson;

  @override
  String get broadcasterId;
  @override
  @JsonKey(ignore: true)
  _$$_CheermotesPropsCopyWith<_$_CheermotesProps> get copyWith =>
      throw _privateConstructorUsedError;
}
