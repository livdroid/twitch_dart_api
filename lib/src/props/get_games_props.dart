import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_games_props.g.dart';

part 'get_games_props.freezed.dart';

@freezed
class GameProps with _$GameProps {
  factory GameProps({
     String? id,
     String? name,
     String? igdbId,
  }) = _GameProps;

  factory GameProps.fromJson(Map<String, dynamic> json) =>
      _$GamePropsFromJson(json);
}