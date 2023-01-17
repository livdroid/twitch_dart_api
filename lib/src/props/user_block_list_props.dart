import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_block_list_props.freezed.dart';
part 'user_block_list_props.g.dart';

@freezed
class UserBlockListProps with _$UserBlockListProps {
  const factory UserBlockListProps({
    required String broadcasterId,
    int? first,
    String? after,
  }) = _UserBlockListProps;

  factory UserBlockListProps.fromJson(Map<String, dynamic> json) => _$UserBlockListPropsFromJson(json);
}
