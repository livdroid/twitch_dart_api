// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatters_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattersData _$ChattersDataFromJson(Map<String, dynamic> json) {
  return _ChattersData.fromJson(json);
}

/// @nodoc
mixin _$ChattersData {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattersDataCopyWith<ChattersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattersDataCopyWith<$Res> {
  factory $ChattersDataCopyWith(
          ChattersData value, $Res Function(ChattersData) then) =
      _$ChattersDataCopyWithImpl<$Res, ChattersData>;
  @useResult
  $Res call({String? userId, String? userName, String? createdAt});
}

/// @nodoc
class _$ChattersDataCopyWithImpl<$Res, $Val extends ChattersData>
    implements $ChattersDataCopyWith<$Res> {
  _$ChattersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChattersDataCopyWith<$Res>
    implements $ChattersDataCopyWith<$Res> {
  factory _$$_ChattersDataCopyWith(
          _$_ChattersData value, $Res Function(_$_ChattersData) then) =
      __$$_ChattersDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? userName, String? createdAt});
}

/// @nodoc
class __$$_ChattersDataCopyWithImpl<$Res>
    extends _$ChattersDataCopyWithImpl<$Res, _$_ChattersData>
    implements _$$_ChattersDataCopyWith<$Res> {
  __$$_ChattersDataCopyWithImpl(
      _$_ChattersData _value, $Res Function(_$_ChattersData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ChattersData(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChattersData implements _ChattersData {
  const _$_ChattersData({this.userId, this.userName, this.createdAt});

  factory _$_ChattersData.fromJson(Map<String, dynamic> json) =>
      _$$_ChattersDataFromJson(json);

  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'ChattersData(userId: $userId, userName: $userName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChattersData &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChattersDataCopyWith<_$_ChattersData> get copyWith =>
      __$$_ChattersDataCopyWithImpl<_$_ChattersData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChattersDataToJson(
      this,
    );
  }
}

abstract class _ChattersData implements ChattersData {
  const factory _ChattersData(
      {final String? userId,
      final String? userName,
      final String? createdAt}) = _$_ChattersData;

  factory _ChattersData.fromJson(Map<String, dynamic> json) =
      _$_ChattersData.fromJson;

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChattersDataCopyWith<_$_ChattersData> get copyWith =>
      throw _privateConstructorUsedError;
}
