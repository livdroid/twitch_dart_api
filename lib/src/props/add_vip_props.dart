import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_vip_props.freezed.dart';

part 'add_vip_props.g.dart';

@freezed
class AddVipProps with _$AddVipProps {
  const factory AddVipProps({
    required String broadcasterId,
    required String userId,
  }) = _AddVipProps;

  factory AddVipProps.fromJson(Map<String, dynamic> json) =>
      _$AddVipPropsFromJson(json);
}
