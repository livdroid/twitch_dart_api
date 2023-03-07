import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatters_props.freezed.dart';
part 'chatters_props.g.dart';

@freezed
abstract class ChattersProps with _$ChattersProps {
  const factory ChattersProps({
    required String broadcasterId,
    required String moderatorId,
    int? first,
    String? after,
  }) = _ChattersProps;

  factory ChattersProps.fromJson(Map<String, dynamic> json) =>
      _$ChattersPropsFromJson(json);
}
