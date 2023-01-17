// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transport _$$_TransportFromJson(Map<String, dynamic> json) => _$_Transport(
      method: json['method'] as String?,
      callback: json['callback'] as String?,
      secret: json['secret'] as String?,
      sessionId: json['session_id'] as String?,
    );

Map<String, dynamic> _$$_TransportToJson(_$_Transport instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('method', instance.method);
  writeNotNull('callback', instance.callback);
  writeNotNull('secret', instance.secret);
  writeNotNull('session_id', instance.sessionId);
  return val;
}
