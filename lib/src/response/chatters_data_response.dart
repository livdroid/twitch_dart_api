import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatters_data_response.freezed.dart';

part 'chatters_data_response.g.dart';

@freezed
class ChattersData with _$ChattersData {
  const factory ChattersData({
    String? userId,
    String? userName,
    String? createdAt,
  }) = _ChattersData;

  factory ChattersData.fromJson(Map<String, dynamic> json) =>
      _$ChattersDataFromJson(json);
}
