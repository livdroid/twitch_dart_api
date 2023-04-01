import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_clip_props.freezed.dart';

part 'create_clip_props.g.dart';

@freezed
class CreateClipProps with _$CreateClipProps {
  const factory CreateClipProps(
      {required String broadcasterId, bool? hasDelay}) = _CreateClipProps;

  factory CreateClipProps.fromJson(Map<String, dynamic> json) =>
      _$CreateClipPropsFromJson(json);
}
