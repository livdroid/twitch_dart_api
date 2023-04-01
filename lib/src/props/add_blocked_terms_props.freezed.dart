// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_blocked_terms_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddBlockedTermsProps _$AddBlockedTermsPropsFromJson(Map<String, dynamic> json) {
  return _AddBlockedTermsProps.fromJson(json);
}

/// @nodoc
mixin _$AddBlockedTermsProps {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddBlockedTermsPropsCopyWith<AddBlockedTermsProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddBlockedTermsPropsCopyWith<$Res> {
  factory $AddBlockedTermsPropsCopyWith(AddBlockedTermsProps value,
          $Res Function(AddBlockedTermsProps) then) =
      _$AddBlockedTermsPropsCopyWithImpl<$Res, AddBlockedTermsProps>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$AddBlockedTermsPropsCopyWithImpl<$Res,
        $Val extends AddBlockedTermsProps>
    implements $AddBlockedTermsPropsCopyWith<$Res> {
  _$AddBlockedTermsPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddBlockedTermsPropsCopyWith<$Res>
    implements $AddBlockedTermsPropsCopyWith<$Res> {
  factory _$$_AddBlockedTermsPropsCopyWith(_$_AddBlockedTermsProps value,
          $Res Function(_$_AddBlockedTermsProps) then) =
      __$$_AddBlockedTermsPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_AddBlockedTermsPropsCopyWithImpl<$Res>
    extends _$AddBlockedTermsPropsCopyWithImpl<$Res, _$_AddBlockedTermsProps>
    implements _$$_AddBlockedTermsPropsCopyWith<$Res> {
  __$$_AddBlockedTermsPropsCopyWithImpl(_$_AddBlockedTermsProps _value,
      $Res Function(_$_AddBlockedTermsProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_AddBlockedTermsProps(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddBlockedTermsProps implements _AddBlockedTermsProps {
  const _$_AddBlockedTermsProps({required this.text});

  factory _$_AddBlockedTermsProps.fromJson(Map<String, dynamic> json) =>
      _$$_AddBlockedTermsPropsFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'AddBlockedTermsProps(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddBlockedTermsProps &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddBlockedTermsPropsCopyWith<_$_AddBlockedTermsProps> get copyWith =>
      __$$_AddBlockedTermsPropsCopyWithImpl<_$_AddBlockedTermsProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddBlockedTermsPropsToJson(
      this,
    );
  }
}

abstract class _AddBlockedTermsProps implements AddBlockedTermsProps {
  const factory _AddBlockedTermsProps({required final String text}) =
      _$_AddBlockedTermsProps;

  factory _AddBlockedTermsProps.fromJson(Map<String, dynamic> json) =
      _$_AddBlockedTermsProps.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_AddBlockedTermsPropsCopyWith<_$_AddBlockedTermsProps> get copyWith =>
      throw _privateConstructorUsedError;
}
