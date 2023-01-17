// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ban_user_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BanUserProps _$BanUserPropsFromJson(Map<String, dynamic> json) {
  return _BanUserProps.fromJson(json);
}

/// @nodoc
mixin _$BanUserProps {
  BanUserData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BanUserPropsCopyWith<BanUserProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanUserPropsCopyWith<$Res> {
  factory $BanUserPropsCopyWith(
          BanUserProps value, $Res Function(BanUserProps) then) =
      _$BanUserPropsCopyWithImpl<$Res, BanUserProps>;
  @useResult
  $Res call({BanUserData data});

  $BanUserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$BanUserPropsCopyWithImpl<$Res, $Val extends BanUserProps>
    implements $BanUserPropsCopyWith<$Res> {
  _$BanUserPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BanUserData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BanUserDataCopyWith<$Res> get data {
    return $BanUserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BanUserPropsCopyWith<$Res>
    implements $BanUserPropsCopyWith<$Res> {
  factory _$$_BanUserPropsCopyWith(
          _$_BanUserProps value, $Res Function(_$_BanUserProps) then) =
      __$$_BanUserPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BanUserData data});

  @override
  $BanUserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_BanUserPropsCopyWithImpl<$Res>
    extends _$BanUserPropsCopyWithImpl<$Res, _$_BanUserProps>
    implements _$$_BanUserPropsCopyWith<$Res> {
  __$$_BanUserPropsCopyWithImpl(
      _$_BanUserProps _value, $Res Function(_$_BanUserProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_BanUserProps(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BanUserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BanUserProps implements _BanUserProps {
  const _$_BanUserProps({required this.data});

  factory _$_BanUserProps.fromJson(Map<String, dynamic> json) =>
      _$$_BanUserPropsFromJson(json);

  @override
  final BanUserData data;

  @override
  String toString() {
    return 'BanUserProps(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BanUserProps &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BanUserPropsCopyWith<_$_BanUserProps> get copyWith =>
      __$$_BanUserPropsCopyWithImpl<_$_BanUserProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BanUserPropsToJson(
      this,
    );
  }
}

abstract class _BanUserProps implements BanUserProps {
  const factory _BanUserProps({required final BanUserData data}) =
      _$_BanUserProps;

  factory _BanUserProps.fromJson(Map<String, dynamic> json) =
      _$_BanUserProps.fromJson;

  @override
  BanUserData get data;
  @override
  @JsonKey(ignore: true)
  _$$_BanUserPropsCopyWith<_$_BanUserProps> get copyWith =>
      throw _privateConstructorUsedError;
}
