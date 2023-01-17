import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_user_props.freezed.dart';

part 'block_user_props.g.dart';

@freezed
class BlockUserProps with _$BlockUserProps {
  const factory BlockUserProps(
      {required String targetUserId,
      String? sourceContext,
      String? reason}) = _BlockUserProps;

  factory BlockUserProps.fromJson(Map<String, dynamic> json) =>
      _$BlockUserPropsFromJson(json);
}

enum BlockUserLocation { chat, whisper }

enum BlockUserReason { harassment, spam, other }
