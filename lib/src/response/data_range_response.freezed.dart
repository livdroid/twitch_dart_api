// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_range_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DateRange _$DateRangeFromJson(Map<String, dynamic> json) {
  return _DateRange.fromJson(json);
}

/// @nodoc
mixin _$DateRange {
  String? get startedAt => throw _privateConstructorUsedError;
  String? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateRangeCopyWith<DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateRangeCopyWith<$Res> {
  factory $DateRangeCopyWith(DateRange value, $Res Function(DateRange) then) =
      _$DateRangeCopyWithImpl<$Res, DateRange>;
  @useResult
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class _$DateRangeCopyWithImpl<$Res, $Val extends DateRange>
    implements $DateRangeCopyWith<$Res> {
  _$DateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_value.copyWith(
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateRangeCopyWith<$Res> implements $DateRangeCopyWith<$Res> {
  factory _$$_DateRangeCopyWith(
          _$_DateRange value, $Res Function(_$_DateRange) then) =
      __$$_DateRangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class __$$_DateRangeCopyWithImpl<$Res>
    extends _$DateRangeCopyWithImpl<$Res, _$_DateRange>
    implements _$$_DateRangeCopyWith<$Res> {
  __$$_DateRangeCopyWithImpl(
      _$_DateRange _value, $Res Function(_$_DateRange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_$_DateRange(
      freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateRange implements _DateRange {
  const _$_DateRange(this.startedAt, this.endedAt);

  factory _$_DateRange.fromJson(Map<String, dynamic> json) =>
      _$$_DateRangeFromJson(json);

  @override
  final String? startedAt;
  @override
  final String? endedAt;

  @override
  String toString() {
    return 'DateRange(startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateRange &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startedAt, endedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateRangeCopyWith<_$_DateRange> get copyWith =>
      __$$_DateRangeCopyWithImpl<_$_DateRange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateRangeToJson(
      this,
    );
  }
}

abstract class _DateRange implements DateRange {
  const factory _DateRange(final String? startedAt, final String? endedAt) =
      _$_DateRange;

  factory _DateRange.fromJson(Map<String, dynamic> json) =
      _$_DateRange.fromJson;

  @override
  String? get startedAt;
  @override
  String? get endedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DateRangeCopyWith<_$_DateRange> get copyWith =>
      throw _privateConstructorUsedError;
}
