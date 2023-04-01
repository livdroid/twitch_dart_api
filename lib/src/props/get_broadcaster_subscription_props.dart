import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_broadcaster_subscription_props.g.dart';

part 'get_broadcaster_subscription_props.freezed.dart';

@freezed
class GetBroadcasterSubscriptionProps with _$GetBroadcasterSubscriptionProps {
  const factory GetBroadcasterSubscriptionProps({
    required String broadcasterId,
    String? userId,
    String? first,
    String? after,
    String? before,
  }) = _GetBroadcasterSubscriptionProps;

  factory GetBroadcasterSubscriptionProps.fromJson(Map<String, dynamic> json) =>
      _$GetBroadcasterSubscriptionPropsFromJson(json);
}
