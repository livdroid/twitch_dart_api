// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_commercial_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StartCommercialProps _$StartCommercialPropsFromJson(Map<String, dynamic> json) {
  return _StartCommercialProps.fromJson(json);
}

/// @nodoc
mixin _$StartCommercialProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartCommercialPropsCopyWith<StartCommercialProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartCommercialPropsCopyWith<$Res> {
  factory $StartCommercialPropsCopyWith(StartCommercialProps value,
          $Res Function(StartCommercialProps) then) =
      _$StartCommercialPropsCopyWithImpl<$Res, StartCommercialProps>;
  @useResult
  $Res call({String broadcasterId, int length});
}

/// @nodoc
class _$StartCommercialPropsCopyWithImpl<$Res,
        $Val extends StartCommercialProps>
    implements $StartCommercialPropsCopyWith<$Res> {
  _$StartCommercialPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartCommercialPropsCopyWith<$Res>
    implements $StartCommercialPropsCopyWith<$Res> {
  factory _$$_StartCommercialPropsCopyWith(_$_StartCommercialProps value,
          $Res Function(_$_StartCommercialProps) then) =
      __$$_StartCommercialPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, int length});
}

/// @nodoc
class __$$_StartCommercialPropsCopyWithImpl<$Res>
    extends _$StartCommercialPropsCopyWithImpl<$Res, _$_StartCommercialProps>
    implements _$$_StartCommercialPropsCopyWith<$Res> {
  __$$_StartCommercialPropsCopyWithImpl(_$_StartCommercialProps _value,
      $Res Function(_$_StartCommercialProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? length = null,
  }) {
    return _then(_$_StartCommercialProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StartCommercialProps implements _StartCommercialProps {
  const _$_StartCommercialProps(
      {required this.broadcasterId, required this.length});

  factory _$_StartCommercialProps.fromJson(Map<String, dynamic> json) =>
      _$$_StartCommercialPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final int length;

  @override
  String toString() {
    return 'StartCommercialProps(broadcasterId: $broadcasterId, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartCommercialProps &&
            (identical(other.broadcasterId, broadcasterId) ||
                other.broadcasterId == broadcasterId) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, broadcasterId, length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartCommercialPropsCopyWith<_$_StartCommercialProps> get copyWith =>
      __$$_StartCommercialPropsCopyWithImpl<_$_StartCommercialProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StartCommercialPropsToJson(
      this,
    );
  }
}

abstract class _StartCommercialProps implements StartCommercialProps {
  const factory _StartCommercialProps(
      {required final String broadcasterId,
      required final int length}) = _$_StartCommercialProps;

  factory _StartCommercialProps.fromJson(Map<String, dynamic> json) =
      _$_StartCommercialProps.fromJson;

  @override
  String get broadcasterId;
  @override
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$_StartCommercialPropsCopyWith<_$_StartCommercialProps> get copyWith =>
      throw _privateConstructorUsedError;
}
