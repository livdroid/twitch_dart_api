// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_annoucement_props.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatAnnouncementProps _$$_ChatAnnouncementPropsFromJson(
        Map<String, dynamic> json) =>
    _$_ChatAnnouncementProps(
      message: json['message'] as String,
      color: $enumDecodeNullable(_$AnnouncementColorEnumMap, json['color']),
    );

Map<String, dynamic> _$$_ChatAnnouncementPropsToJson(
    _$_ChatAnnouncementProps instance) {
  final val = <String, dynamic>{
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', _$AnnouncementColorEnumMap[instance.color]);
  return val;
}

const _$AnnouncementColorEnumMap = {
  AnnouncementColor.blue: 'blue',
  AnnouncementColor.green: 'green',
  AnnouncementColor.orange: 'orange',
  AnnouncementColor.purple: 'purple',
  AnnouncementColor.primary: 'primary',
};
