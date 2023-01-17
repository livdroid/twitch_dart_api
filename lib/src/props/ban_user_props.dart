import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/src/props/ban_user_data_props.dart';

part 'ban_user_props.freezed.dart';

part 'ban_user_props.g.dart';

@freezed
class BanUserProps with _$BanUserProps {
  const factory BanUserProps({
    required BanUserData data,
  }) = _BanUserProps;

  factory BanUserProps.fromJson(Map<String, dynamic> json) =>
      _$BanUserPropsFromJson(json);
}
