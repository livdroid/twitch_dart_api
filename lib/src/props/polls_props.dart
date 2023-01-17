import 'package:json_annotation/json_annotation.dart';

part 'polls_props.g.dart';

@JsonSerializable(includeIfNull: false)
class PollsProps {
  @JsonKey(name: 'broadcaster_id')
  final String broadcasterId;
  final String? id;
  final String? first;
  final String? after;

  PollsProps({required this.broadcasterId, this.id, this.first, this.after});

  factory PollsProps.fromJson(Map<String, dynamic> json) =>
      _$PollsPropsFromJson(json);

  Map<String, dynamic> toJson() => _$PollsPropsToJson(this);
}
