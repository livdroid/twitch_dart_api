import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twitch_client/twitch_client.dart';

part 'top_games_response.freezed.dart';
part 'top_games_response.g.dart';

@freezed
class GamesResponse with _$GamesResponse {
  factory GamesResponse({
     List<Game?>? data,
    Pagination? pagination,
  }) = _GamesResponse;

  factory GamesResponse.fromJson(Map<String, dynamic> json) =>
      _$GamesResponseFromJson(json);
}

@freezed
class Game with _$Game {
  factory Game({
     String? id,
     String? name,
     String? boxArtUrl,
     String? igdbId,
  }) = _Game;

  factory Game.fromJson(Map<String, dynamic> json) =>
      _$GameFromJson(json);
}