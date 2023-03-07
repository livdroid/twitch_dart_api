import 'package:json_annotation/json_annotation.dart';

part 'end_poll_props.g.dart';

@JsonSerializable(includeIfNull: false)
class EndPollProps {
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;
  final String id;
  final String status;

  EndPollProps(
      {required this.broadcasterId, required this.id, required this.status});

  Map<String, dynamic> toJson() => _$EndPollPropsToJson(this);

  factory EndPollProps.fromJson(Map<String, dynamic> json) =>
      _$EndPollPropsFromJson(json);
}

enum EndPollStatus { TERMINATED, ARCHIVED }
