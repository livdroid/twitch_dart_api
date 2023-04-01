import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:twitch_client/src/response/pagination_response.dart';

part 'get_broadcaster_subscription_response.freezed.dart';

part 'get_broadcaster_subscription_response.g.dart';

@freezed
class GetBroadcasterSubscriptionResponse
    with _$GetBroadcasterSubscriptionResponse {
  const factory GetBroadcasterSubscriptionResponse({
    List<GetBroadcasterSubscriptionResponseData>? data,
    Pagination? pagination,
    int? total,
    int? points,
  }) = _GetBroadcasterSubscriptionResponse;

  factory GetBroadcasterSubscriptionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetBroadcasterSubscriptionResponseFromJson(json);
}

@freezed
class GetBroadcasterSubscriptionResponseData
    with _$GetBroadcasterSubscriptionResponseData {
  const factory GetBroadcasterSubscriptionResponseData({
    String? broadcasterId,
    String? broadcasterLogin,
    String? broadcasterName,
    String? gifterId,
    String? gifterLogin,
    String? gifterName,
    bool? isGift,
    String? tier,
    String? planName,
    String? userId,
    String? userName,
    String? userLogin,
  }) = _GetBroadcasterSubscriptionResponseData;

  factory GetBroadcasterSubscriptionResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$GetBroadcasterSubscriptionResponseDataFromJson(json);
}
