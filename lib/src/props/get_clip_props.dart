import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_clip_props.g.dart';

part 'get_clip_props.freezed.dart';

@freezed
class GetClipsProps with _$GetClipsProps {
  factory GetClipsProps({
    required String broadcasterId,
    required String gameId,
    required String id,
    String? startedAt,
    String? endedAt,
    int? first,
    String? before,
    String? after,
  }) = _GetClipsProps;

  factory GetClipsProps.fromJson(Map<String, dynamic> json) =>
      _$GetClipsPropsFromJson(json);
}
