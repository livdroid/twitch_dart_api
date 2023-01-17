// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predictions_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PredictionsProps _$PredictionsPropsFromJson(Map<String, dynamic> json) {
  return _PredictionsProps.fromJson(json);
}

/// @nodoc
mixin _$PredictionsProps {
  String get broadcasterId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictionsPropsCopyWith<PredictionsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionsPropsCopyWith<$Res> {
  factory $PredictionsPropsCopyWith(
          PredictionsProps value, $Res Function(PredictionsProps) then) =
      _$PredictionsPropsCopyWithImpl<$Res, PredictionsProps>;
  @useResult
  $Res call({String broadcasterId, String? id});
}

/// @nodoc
class _$PredictionsPropsCopyWithImpl<$Res, $Val extends PredictionsProps>
    implements $PredictionsPropsCopyWith<$Res> {
  _$PredictionsPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PredictionsPropsCopyWith<$Res>
    implements $PredictionsPropsCopyWith<$Res> {
  factory _$$_PredictionsPropsCopyWith(
          _$_PredictionsProps value, $Res Function(_$_PredictionsProps) then) =
      __$$_PredictionsPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String broadcasterId, String? id});
}

/// @nodoc
class __$$_PredictionsPropsCopyWithImpl<$Res>
    extends _$PredictionsPropsCopyWithImpl<$Res, _$_PredictionsProps>
    implements _$$_PredictionsPropsCopyWith<$Res> {
  __$$_PredictionsPropsCopyWithImpl(
      _$_PredictionsProps _value, $Res Function(_$_PredictionsProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasterId = null,
    Object? id = freezed,
  }) {
    return _then(_$_PredictionsProps(
      broadcasterId: null == broadcasterId
          ? _value.broadcasterId
          : broadcasterId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PredictionsProps implements _PredictionsProps {
  const _$_PredictionsProps({required this.broadcasterId, this.id});

  factory _$_PredictionsProps.fromJson(Map<String, dynamic> json) =>
      _$$_PredictionsPropsFromJson(json);

  @override
  final String broadcasterId;
  @override
  final String? id;

  @override
  String toString() {
    return 'PredictionsProps(broadcasterId: $broadcasterId, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PredictionsProps &&
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
  _$$_PredictionsPropsCopyWith<_$_PredictionsProps> get copyWith =>
      __$$_PredictionsPropsCopyWithImpl<_$_PredictionsProps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PredictionsPropsToJson(
      this,
    );
  }
}

abstract class _PredictionsProps implements PredictionsProps {
  const factory _PredictionsProps(
      {required final String broadcasterId,
      final String? id}) = _$_PredictionsProps;

  factory _PredictionsProps.fromJson(Map<String, dynamic> json) =
      _$_PredictionsProps.fromJson;

  @override
  String get broadcasterId;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_PredictionsPropsCopyWith<_$_PredictionsProps> get copyWith =>
      throw _privateConstructorUsedError;
}
