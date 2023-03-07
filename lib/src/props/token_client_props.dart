import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_client_props.freezed.dart';
part 'token_client_props.g.dart';

@freezed
class TokenClientProps with _$TokenClientProps {
  const factory TokenClientProps({
    required String token,
    required String clientId,
  }) = _TokenClientProps;

  factory TokenClientProps.fromJson(Map<String, dynamic> json) =>
      _$TokenClientPropsFromJson(json);
}
