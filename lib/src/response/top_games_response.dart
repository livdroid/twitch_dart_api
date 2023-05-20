import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/twitch_client.dart';

part 'top_games_response.freezed.dart';
part 'top_games_response.g.dart';

@freezed
class TopGamesResponse with _$TopGamesResponse {
  factory TopGamesResponse({
     List<TopGame?>? data,
    Pagination? pagination,
  }) = _TopGamesResponse;

  factory TopGamesResponse.fromJson(Map<String, dynamic> json) =>
      _$TopGamesResponseFromJson(json);
}

@freezed
class TopGame with _$TopGame {
  factory TopGame({
     String? id,
     String? name,
     String? boxArtUrl,
     String? igdbId,
  }) = _TopGame;

  factory TopGame.fromJson(Map<String, dynamic> json) =>
      _$TopGameFromJson(json);
}