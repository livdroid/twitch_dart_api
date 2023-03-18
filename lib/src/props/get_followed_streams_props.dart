import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_followed_streams_props.g.dart';

part 'get_followed_streams_props.freezed.dart';

@freezed
class GetFollowedStreamsProps with _$GetFollowedStreamsProps {
  const factory GetFollowedStreamsProps(
      {required String userId,
      int? first,
      int? after}) = _GetFollowedStreamsProps;

  factory GetFollowedStreamsProps.fromJson(Map<String, dynamic> json) =>
      _$GetFollowedStreamsPropsFromJson(json);
}
