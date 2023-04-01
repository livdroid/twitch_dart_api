// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_annoucement_props.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatAnnouncementProps _$ChatAnnouncementPropsFromJson(
    Map<String, dynamic> json) {
  return _ChatAnnouncementProps.fromJson(json);
}

/// @nodoc
mixin _$ChatAnnouncementProps {
  String get message => throw _privateConstructorUsedError;
  AnnouncementColor? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatAnnouncementPropsCopyWith<ChatAnnouncementProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatAnnouncementPropsCopyWith<$Res> {
  factory $ChatAnnouncementPropsCopyWith(ChatAnnouncementProps value,
          $Res Function(ChatAnnouncementProps) then) =
      _$ChatAnnouncementPropsCopyWithImpl<$Res, ChatAnnouncementProps>;
  @useResult
  $Res call({String message, AnnouncementColor? color});
}

/// @nodoc
class _$ChatAnnouncementPropsCopyWithImpl<$Res,
        $Val extends ChatAnnouncementProps>
    implements $ChatAnnouncementPropsCopyWith<$Res> {
  _$ChatAnnouncementPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as AnnouncementColor?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatAnnouncementPropsCopyWith<$Res>
    implements $ChatAnnouncementPropsCopyWith<$Res> {
  factory _$$_ChatAnnouncementPropsCopyWith(_$_ChatAnnouncementProps value,
          $Res Function(_$_ChatAnnouncementProps) then) =
      __$$_ChatAnnouncementPropsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AnnouncementColor? color});
}

/// @nodoc
class __$$_ChatAnnouncementPropsCopyWithImpl<$Res>
    extends _$ChatAnnouncementPropsCopyWithImpl<$Res, _$_ChatAnnouncementProps>
    implements _$$_ChatAnnouncementPropsCopyWith<$Res> {
  __$$_ChatAnnouncementPropsCopyWithImpl(_$_ChatAnnouncementProps _value,
      $Res Function(_$_ChatAnnouncementProps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? color = freezed,
  }) {
    return _then(_$_ChatAnnouncementProps(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as AnnouncementColor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatAnnouncementProps implements _ChatAnnouncementProps {
  const _$_ChatAnnouncementProps({required this.message, this.color});

  factory _$_ChatAnnouncementProps.fromJson(Map<String, dynamic> json) =>
      _$$_ChatAnnouncementPropsFromJson(json);

  @override
  final String message;
  @override
  final AnnouncementColor? color;

  @override
  String toString() {
    return 'ChatAnnouncementProps(message: $message, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatAnnouncementProps &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatAnnouncementPropsCopyWith<_$_ChatAnnouncementProps> get copyWith =>
      __$$_ChatAnnouncementPropsCopyWithImpl<_$_ChatAnnouncementProps>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatAnnouncementPropsToJson(
      this,
    );
  }
}

abstract class _ChatAnnouncementProps implements ChatAnnouncementProps {
  const factory _ChatAnnouncementProps(
      {required final String message,
      final AnnouncementColor? color}) = _$_ChatAnnouncementProps;

  factory _ChatAnnouncementProps.fromJson(Map<String, dynamic> json) =
      _$_ChatAnnouncementProps.fromJson;

  @override
  String get message;
  @override
  AnnouncementColor? get color;
  @override
  @JsonKey(ignore: true)
  _$$_ChatAnnouncementPropsCopyWith<_$_ChatAnnouncementProps> get copyWith =>
      throw _privateConstructorUsedError;
}
