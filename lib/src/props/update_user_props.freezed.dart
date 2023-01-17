// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserProps _$UpdateUserPropsFromJson(Map<String, dynamic> json) {
  return _UpdateUserProps.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserProps {
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserPropsCopyWith<UpdateUserProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserPropsCopyWith<$Res> {
  factory $UpdateUserPropsCopyWith(
          UpdateUserProps value, $Res Function(UpdateUserProps) then) =
      _$UpdateUserPropsCopyWithImpl<$Res, UpdateUserProps>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class _$UpdateUserPropsCopyWithImpl<$Res, $Val extends UpdateUserProps>
    implements $UpdateUserPropsCopyWith<$Res> {
  _$UpdateUserPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateUserPropsCopyWith<$Res>
    implements $UpdateUserPropsCopyWith<$Res> {
  factory _$$_UpdateUserPropsCopyWith(
          _$_UpdateUserProps value, $Res Function(_$_UpdateUserProps) then) =
      __$$_UpdateUserPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$_UpdateUserPropsCopyWithImpl<$Res>
    extends _$UpdateUserPropsCopyWithImpl<$Res, _$_UpdateUserProps>
    implements _$$_UpdateUserPropsCopyWith<$Res> {
  __$$_UpdateUserPropsCopyWithImpl(
      _$_UpdateUserProps _value, $Res Function(_$_UpdateUserProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$_UpdateUserProps(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateUserProps implements _UpdateUserProps {
  const _$_UpdateUserProps({required this.description});

  factory _$_UpdateUserProps.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserPropsFromJson(json);

  @override
  final String description;

  @override
  String toString() {
    return 'UpdateUserProps(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserProps &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateUserPropsCopyWith<_$_UpdateUserProps> get copyWith =>
      __$$_UpdateUserPropsCopyWithImpl<_$_UpdateUserProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserPropsToJson(
      this,
    );
  }
}

abstract class _UpdateUserProps implements UpdateUserProps {
  const factory _UpdateUserProps({required final String description}) =
      _$_UpdateUserProps;

  factory _UpdateUserProps.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserProps.fromJson;

  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserPropsCopyWith<_$_UpdateUserProps> get copyWith =>
      throw _privateConstructorUsedError;
}
