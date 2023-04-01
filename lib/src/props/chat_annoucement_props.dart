import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_annoucement_props.freezed.dart';

part 'chat_annoucement_props.g.dart';

@freezed
class ChatAnnouncementProps with _$ChatAnnouncementProps {
  const factory ChatAnnouncementProps({
    required String message,
    AnnouncementColor? color,
  }) = _ChatAnnouncementProps;

  factory ChatAnnouncementProps.fromJson(Map<String, dynamic> json) =>
      _$ChatAnnouncementPropsFromJson(json);
}

enum AnnouncementColor { blue, green, orange, purple, primary }
