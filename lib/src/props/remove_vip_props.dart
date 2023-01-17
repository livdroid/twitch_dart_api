import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_vip_props.freezed.dart';

part 'remove_vip_props.g.dart';

@freezed
class RemoveVipProps with _$RemoveVipProps {
  const factory RemoveVipProps(
      {required String broadcasterId,
      required String userId}) = _RemoveVipProps;

  factory RemoveVipProps.fromJson(Map<String, dynamic> json) =>
      _$RemoveVipPropsFromJson(json);
}
