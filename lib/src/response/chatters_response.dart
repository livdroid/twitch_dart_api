import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/response/chatters_data_response.dart';
import 'package:twitch_client/src/response/pagination_response.dart';

part 'chatters_response.freezed.dart';

part 'chatters_response.g.dart';

@freezed
class ChattersResponse with _$ChattersResponse {
  const factory ChattersResponse(
      {List<ChattersData>? data,
      Pagination? pagination,
      int? total}) = _ChattersResponse;

  factory ChattersResponse.fromJson(Map<String, dynamic> json) =>
      _$ChattersResponseFromJson(json);
}
