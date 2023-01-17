// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersProps _$UsersPropsFromJson(Map<String, dynamic> json) {
  return _UsersProps.fromJson(json);
}

/// @nodoc
mixin _$UsersProps {
  String? get id => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersPropsCopyWith<UsersProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersPropsCopyWith<$Res> {
  factory $UsersPropsCopyWith(
          UsersProps value, $Res Function(UsersProps) then) =
      _$UsersPropsCopyWithImpl<$Res, UsersProps>;
  @useResult
  $Res call({String? id, String? login});
}

/// @nodoc
class _$UsersPropsCopyWithImpl<$Res, $Val extends UsersProps>
    implements $UsersPropsCopyWith<$Res> {
  _$UsersPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersPropsCopyWith<$Res>
    implements $UsersPropsCopyWith<$Res> {
  factory _$$_UsersPropsCopyWith(
          _$_UsersProps value, $Res Function(_$_UsersProps) then) =
      __$$_UsersPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? login});
}

/// @nodoc
class __$$_UsersPropsCopyWithImpl<$Res>
    extends _$UsersPropsCopyWithImpl<$Res, _$_UsersProps>
    implements _$$_UsersPropsCopyWith<$Res> {
  __$$_UsersPropsCopyWithImpl(
      _$_UsersProps _value, $Res Function(_$_UsersProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
  }) {
    return _then(_$_UsersProps(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      login: freezed == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersProps implements _UsersProps {
  const _$_UsersProps({this.id, this.login});

  factory _$_UsersProps.fromJson(Map<String, dynamic> json) =>
      _$$_UsersPropsFromJson(json);

  @override
  final String? id;
  @override
  final String? login;

  @override
  String toString() {
    return 'UsersProps(id: $id, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersProps &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersPropsCopyWith<_$_UsersProps> get copyWith =>
      __$$_UsersPropsCopyWithImpl<_$_UsersProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersPropsToJson(
      this,
    );
  }
}

abstract class _UsersProps implements UsersProps {
  const factory _UsersProps({final String? id, final String? login}) =
      _$_UsersProps;

  factory _UsersProps.fromJson(Map<String, dynamic> json) =
      _$_UsersProps.fromJson;

  @override
  String? get id;
  @override
  String? get login;
  @override
  @JsonKey(ignore: true)
  _$$_UsersPropsCopyWith<_$_UsersProps> get copyWith =>
      throw _privateConstructorUsedError;
}
