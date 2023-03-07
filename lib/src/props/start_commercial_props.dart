import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_commercial_props.freezed.dart';
part 'start_commercial_props.g.dart';

@freezed
class StartCommercialProps with _$StartCommercialProps {
  const factory StartCommercialProps({
    required String broadcasterId,
    required int length,
  }) = _StartCommercialProps;

  factory StartCommercialProps.fromJson(Map<String, dynamic> json) =>
      _$StartCommercialPropsFromJson(json);
}
