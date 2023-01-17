// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_poll_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EndPollProps _$EndPollPropsFromJson(Map<String, dynamic> json) => EndPollProps(
      broadcasterId: json['broadcaster_id'] as String,
      id: json['id'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$EndPollPropsToJson(EndPollProps instance) =>
    <String, dynamic>{
      'broadcaster_id': instance.broadcasterId,
      'id': instance.id,
      'status': instance.status,
    };
