// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_analytics_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExtensionAnalyticsResponseData _$ExtensionAnalyticsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ExtensionAnalyticsResponseData.fromJson(json);
}

/// @nodoc
mixin _$ExtensionAnalyticsResponseData {
  String? get extensionId => throw _privateConstructorUsedError;
  String? get URL => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateRange? get dateRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtensionAnalyticsResponseDataCopyWith<ExtensionAnalyticsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtensionAnalyticsResponseDataCopyWith<$Res> {
  factory $ExtensionAnalyticsResponseDataCopyWith(
          ExtensionAnalyticsResponseData value,
          $Res Function(ExtensionAnalyticsResponseData) then) =
      _$ExtensionAnalyticsResponseDataCopyWithImpl<$Res,
          ExtensionAnalyticsResponseData>;
  @useResult
  $Res call(
      {String? extensionId, String? URL, String? type, DateRange? dateRange});

  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class _$ExtensionAnalyticsResponseDataCopyWithImpl<$Res,
        $Val extends ExtensionAnalyticsResponseData>
    implements $ExtensionAnalyticsResponseDataCopyWith<$Res> {
  _$ExtensionAnalyticsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extensionId = freezed,
    Object? URL = freezed,
    Object? type = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(_value.copyWith(
      extensionId: freezed == extensionId
          ? _value.extensionId
          : extensionId // ignore: cast_nullable_to_non_nullable
              as String?,
      URL: freezed == URL
          ? _value.URL
          : URL // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      dateRange: freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateRangeCopyWith<$Res>? get dateRange {
    if (_value.dateRange == null) {
      return null;
    }

    return $DateRangeCopyWith<$Res>(_value.dateRange!, (value) {
      return _then(_value.copyWith(dateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExtensionAnalyticsResponseDataCopyWith<$Res>
    implements $ExtensionAnalyticsResponseDataCopyWith<$Res> {
  factory _$$_ExtensionAnalyticsResponseDataCopyWith(
          _$_ExtensionAnalyticsResponseData value,
          $Res Function(_$_ExtensionAnalyticsResponseData) then) =
      __$$_ExtensionAnalyticsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? extensionId, String? URL, String? type, DateRange? dateRange});

  @override
  $DateRangeCopyWith<$Res>? get dateRange;
}

/// @nodoc
class __$$_ExtensionAnalyticsResponseDataCopyWithImpl<$Res>
    extends _$ExtensionAnalyticsResponseDataCopyWithImpl<$Res,
        _$_ExtensionAnalyticsResponseData>
    implements _$$_ExtensionAnalyticsResponseDataCopyWith<$Res> {
  __$$_ExtensionAnalyticsResponseDataCopyWithImpl(
      _$_ExtensionAnalyticsResponseData _value,
      $Res Function(_$_ExtensionAnalyticsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extensionId = freezed,
    Object? URL = freezed,
    Object? type = freezed,
    Object? dateRange = freezed,
  }) {
    return _then(_$_ExtensionAnalyticsResponseData(
      freezed == extensionId
          ? _value.extensionId
          : extensionId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == URL
          ? _value.URL
          : URL // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == dateRange
          ? _value.dateRange
          : dateRange // ignore: cast_nullable_to_non_nullable
              as DateRange?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtensionAnalyticsResponseData
    implements _ExtensionAnalyticsResponseData {
  const _$_ExtensionAnalyticsResponseData(
      this.extensionId, this.URL, this.type, this.dateRange);

  factory _$_ExtensionAnalyticsResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$$_ExtensionAnalyticsResponseDataFromJson(json);

  @override
  final String? extensionId;
  @override
  final String? URL;
  @override
  final String? type;
  @override
  final DateRange? dateRange;

  @override
  String toString() {
    return 'ExtensionAnalyticsResponseData(extensionId: $extensionId, URL: $URL, type: $type, dateRange: $dateRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtensionAnalyticsResponseData &&
            (identical(other.extensionId, extensionId) ||
                other.extensionId == extensionId) &&
            (identical(other.URL, URL) || other.URL == URL) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dateRange, dateRange) ||
                other.dateRange == dateRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, extensionId, URL, type, dateRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtensionAnalyticsResponseDataCopyWith<_$_ExtensionAnalyticsResponseData>
      get copyWith => __$$_ExtensionAnalyticsResponseDataCopyWithImpl<
          _$_ExtensionAnalyticsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtensionAnalyticsResponseDataToJson(
      this,
    );
  }
}

abstract class _ExtensionAnalyticsResponseData
    implements ExtensionAnalyticsResponseData {
  const factory _ExtensionAnalyticsResponseData(
      final String? extensionId,
      final String? URL,
      final String? type,
      final DateRange? dateRange) = _$_ExtensionAnalyticsResponseData;

  factory _ExtensionAnalyticsResponseData.fromJson(Map<String, dynamic> json) =
      _$_ExtensionAnalyticsResponseData.fromJson;

  @override
  String? get extensionId;
  @override
  String? get URL;
  @override
  String? get type;
  @override
  DateRange? get dateRange;
  @override
  @JsonKey(ignore: true)
  _$$_ExtensionAnalyticsResponseDataCopyWith<_$_ExtensionAnalyticsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}
