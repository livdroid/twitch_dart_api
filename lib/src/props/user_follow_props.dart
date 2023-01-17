import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_follow_props.freezed.dart';

part 'user_follow_props.g.dart';

@freezed
class UserFollowProps with _$UserFollowProps {
  const factory UserFollowProps({
    String? fromId,
    String? toId,
    int? first,
    String? after,
  }) = _UserFollowProps;

  factory UserFollowProps.fromJson(Map<String, dynamic> json) =>
      _$UserFollowPropsFromJson(json);
}
