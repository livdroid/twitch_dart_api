import 'package:freezed_annotation/freezed_annotation.dart';

part 'transport.freezed.dart';

part 'transport.g.dart';

@freezed
class Transport with _$Transport {
  const factory Transport({
    String? method,
    String? callback,
    String? secret,
    String? sessionId,
  }) = _Transport;

  factory Transport.fromJson(Map<String, dynamic> json) =>
      _$TransportFromJson(json);
}
