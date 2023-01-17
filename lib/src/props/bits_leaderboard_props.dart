import 'package:freezed_annotation/freezed_annotation.dart';

part 'bits_leaderboard_props.freezed.dart';

part 'bits_leaderboard_props.g.dart';

@freezed
class BitsLeaderBoardProps with _$BitsLeaderBoardProps {
  const factory BitsLeaderBoardProps({
    int? count,
    String? period,
    String? startedAt,
    String? userId,
  }) = _BitsLeaderBoardProps;

  factory BitsLeaderBoardProps.fromJson(Map<String, dynamic> json) =>
      _$BitsLeaderBoardPropsFromJson(json);
}
