// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_games_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameProps _$GamePropsFromJson(Map<String, dynamic> json) {
  return _GameProps.fromJson(json);
}

/// @nodoc
mixin _$GameProps {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get igdbId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamePropsCopyWith<GameProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePropsCopyWith<$Res> {
  factory $GamePropsCopyWith(GameProps value, $Res Function(GameProps) then) =
      _$GamePropsCopyWithImpl<$Res, GameProps>;
  @useResult
  $Res call({String? id, String? name, String? igdbId});
}

/// @nodoc
class _$GamePropsCopyWithImpl<$Res, $Val extends GameProps>
    implements $GamePropsCopyWith<$Res> {
  _$GamePropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? igdbId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      igdbId: freezed == igdbId
          ? _value.igdbId
          : igdbId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GamePropsCopyWith<$Res> implements $GamePropsCopyWith<$Res> {
  factory _$$_GamePropsCopyWith(
          _$_GameProps value, $Res Function(_$_GameProps) then) =
      __$$_GamePropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, String? igdbId});
}

/// @nodoc
class __$$_GamePropsCopyWithImpl<$Res>
    extends _$GamePropsCopyWithImpl<$Res, _$_GameProps>
    implements _$$_GamePropsCopyWith<$Res> {
  __$$_GamePropsCopyWithImpl(
      _$_GameProps _value, $Res Function(_$_GameProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? igdbId = freezed,
  }) {
    return _then(_$_GameProps(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      igdbId: freezed == igdbId
          ? _value.igdbId
          : igdbId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameProps implements _GameProps {
  _$_GameProps({this.id, this.name, this.igdbId});

  factory _$_GameProps.fromJson(Map<String, dynamic> json) =>
      _$$_GamePropsFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? igdbId;

  @override
  String toString() {
    return 'GameProps(id: $id, name: $name, igdbId: $igdbId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameProps &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.igdbId, igdbId) || other.igdbId == igdbId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, igdbId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GamePropsCopyWith<_$_GameProps> get copyWith =>
      __$$_GamePropsCopyWithImpl<_$_GameProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamePropsToJson(
      this,
    );
  }
}

abstract class _GameProps implements GameProps {
  factory _GameProps(
      {final String? id,
      final String? name,
      final String? igdbId}) = _$_GameProps;

  factory _GameProps.fromJson(Map<String, dynamic> json) =
      _$_GameProps.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get igdbId;
  @override
  @JsonKey(ignore: true)
  _$$_GamePropsCopyWith<_$_GameProps> get copyWith =>
      throw _privateConstructorUsedError;
}
