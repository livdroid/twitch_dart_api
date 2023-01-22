// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattersResponse _$ChattersResponseFromJson(Map<String, dynamic> json) {
  return _ChattersResponse.fromJson(json);
}

/// @nodoc
mixin _$ChattersResponse {
  List<ChattersData>? get data => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattersResponseCopyWith<ChattersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattersResponseCopyWith<$Res> {
  factory $ChattersResponseCopyWith(
          ChattersResponse value, $Res Function(ChattersResponse) then) =
      _$ChattersResponseCopyWithImpl<$Res, ChattersResponse>;
  @useResult
  $Res call({List<ChattersData>? data, Pagination? pagination, int? total});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ChattersResponseCopyWithImpl<$Res, $Val extends ChattersResponse>
    implements $ChattersResponseCopyWith<$Res> {
  _$ChattersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChattersData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChattersResponseCopyWith<$Res>
    implements $ChattersResponseCopyWith<$Res> {
  factory _$$_ChattersResponseCopyWith(
          _$_ChattersResponse value, $Res Function(_$_ChattersResponse) then) =
      __$$_ChattersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChattersData>? data, Pagination? pagination, int? total});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_ChattersResponseCopyWithImpl<$Res>
    extends _$ChattersResponseCopyWithImpl<$Res, _$_ChattersResponse>
    implements _$$_ChattersResponseCopyWith<$Res> {
  __$$_ChattersResponseCopyWithImpl(
      _$_ChattersResponse _value, $Res Function(_$_ChattersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ChattersResponse(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChattersData>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChattersResponse implements _ChattersResponse {
  const _$_ChattersResponse(
      {final List<ChattersData>? data, this.pagination, this.total})
      : _data = data;

  factory _$_ChattersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChattersResponseFromJson(json);

  final List<ChattersData>? _data;
  @override
  List<ChattersData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Pagination? pagination;
  @override
  final int? total;

  @override
  String toString() {
    return 'ChattersResponse(data: $data, pagination: $pagination, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChattersResponse &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), pagination, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChattersResponseCopyWith<_$_ChattersResponse> get copyWith =>
      __$$_ChattersResponseCopyWithImpl<_$_ChattersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChattersResponseToJson(
      this,
    );
  }
}

abstract class _ChattersResponse implements ChattersResponse {
  const factory _ChattersResponse(
      {final List<ChattersData>? data,
      final Pagination? pagination,
      final int? total}) = _$_ChattersResponse;

  factory _ChattersResponse.fromJson(Map<String, dynamic> json) =
      _$_ChattersResponse.fromJson;

  @override
  List<ChattersData>? get data;
  @override
  Pagination? get pagination;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_ChattersResponseCopyWith<_$_ChattersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
