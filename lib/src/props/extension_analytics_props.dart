import 'package:json_annotation/json_annotation.dart';

part 'extension_analytics_props.g.dart';

@JsonSerializable(includeIfNull: false)
class ExtensionAnalyticsProps {
  @JsonKey(name: 'extension_id')
  final String? extensionId;
  final String? type;
  @JsonKey(name: 'started_at')
  final String? startedAt;
  @JsonKey(name: 'ended_at')
  final String? endedAt;
  final String? first;
  final String? after;

  ExtensionAnalyticsProps(
      {this.extensionId,
      this.type,
      this.startedAt,
      this.endedAt,
      this.first,
      this.after});

  Map<String, dynamic> toJson() => _$ExtensionAnalyticsPropsToJson(this);
}
