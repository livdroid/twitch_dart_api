import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/game_repository.dart';
import 'package:twitch_client/src/response/pagination_response.dart';
import 'package:twitch_client/src/response/top_games_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'bits_repository_test.mocks.dart';

void main() {
  late TopGamesRepository repository;
  late MockTwitchDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockTwitchDataSource();
    repository =
        TopGamesRepositoryImpl('token', 'clientId', dataSource: mockDataSource);
  });

  test(
      'should return a TopGamesResponse when the call to TwitchDataSource is successful',
      () async {
    when(mockDataSource.get(path: 'games/top', queryParams: {}))
        .thenAnswer((_) async => {
              "data": [
                {
                  "id": "493057",
                  "name": "PUBG: BATTLEGROUNDS",
                  "box_art_url":
                      "https://static-cdn.jtvnw.net/ttv-boxart/493057-{width}x{height}.jpg",
                  "igdb_id": "27789"
                }
              ],
            });

    final result = await repository.getTopGames();

    expect(
        result,
        Right(TopGamesResponse(
          data: [
            TopGame(
              id: "493057",
              name: "PUBG: BATTLEGROUNDS",
              boxArtUrl:
                  "https://static-cdn.jtvnw.net/ttv-boxart/493057-{width}x{height}.jpg",
              igdbId: "27789",
            )
          ],
        )));
    verify(mockDataSource.get(path: 'games/top', queryParams: {}));
  });

  test('should return a Failure when the request fails', () async {
    when(mockDataSource.get(path: 'games/top', queryParams: {}))
        .thenThrow(ForbiddenRequestException(message: 'Failed to fetch data'));

    final result = await repository.getTopGames();

    expect(result.isLeft(), true);
    verify(mockDataSource.get(path: 'games/top', queryParams: {}));
  });
}
