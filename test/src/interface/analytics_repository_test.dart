import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/interface/analytics_repository.dart';
import 'package:twitch_client/src/props/extension_analytics_props.dart';
import 'package:twitch_client/src/props/game_analytics_props.dart';
import 'package:twitch_client/src/response/extension_analytics_response.dart';
import 'package:twitch_client/src/response/game_analytics_response.dart';
import 'package:twitch_client/src/response/moderator_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'channel_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  group('getGameAnalytics', () {
    late MockTwitchDataSource mockTwitchDataSource;
    late AnalyticsRepositoryImpl repository;

    setUp(() {
      mockTwitchDataSource = MockTwitchDataSource();
      repository = AnalyticsRepositoryImpl(mockTwitchDataSource);
    });

    final gameAnalyticsProps = GameAnalyticsProps();
    final gameAnalyticsResponse = const GameAnalyticsResponse();
    test(
      'should return a GameAnalyticsResponse when the call to TwitchDataSource is successful',
      () async {
        // Arrange
        when(mockTwitchDataSource.get(
                path: 'analytics/games',
                queryParams: gameAnalyticsProps.toJson()))
            .thenAnswer((_) async => gameAnalyticsResponse.toJson());
        // Act
        final result =
            await repository.getGameAnalytics(props: gameAnalyticsProps);
        // Assert
        expect(result, Right(gameAnalyticsResponse));
        verify(mockTwitchDataSource.get(
            path: 'analytics/games', queryParams: gameAnalyticsProps.toJson()));
      },
    );

    test(
      'should return a Failure when the call to TwitchDataSource throws an exception',
      () async {
        // Arrange
        when(mockTwitchDataSource.get(
                path: 'analytics/games',
                queryParams: gameAnalyticsProps.toJson()))
            .thenThrow(Exception());
        // Act
        final result =
            await repository.getGameAnalytics(props: gameAnalyticsProps);
        // Assert
        expect(result.isLeft(), true);
        verify(mockTwitchDataSource.get(
            path: 'analytics/games', queryParams: gameAnalyticsProps.toJson()));
      },
    );
  });

  group('getExtensionAnalytics', () {
    final tExtensionAnalyticsProps = ExtensionAnalyticsProps();
    final tExtensionAnalyticsResponse = ExtensionAnalyticsResponse(
        data: [], pagination: Pagination(cursor: '1'));
    final jsonResponse = tExtensionAnalyticsResponse.toJson();

    late MockTwitchDataSource mockTwitchDataSource;
    late AnalyticsRepositoryImpl repository;

    setUp(() {
      mockTwitchDataSource = MockTwitchDataSource();
      repository = AnalyticsRepositoryImpl(mockTwitchDataSource);
    });

    test(
      'should return a ExtensionAnalyticsResponse when the call to TwitchDataSource is successful',
      () async {
        // Arrange
        when(mockTwitchDataSource.get(
                path: 'analytics/extensions',
                queryParams: tExtensionAnalyticsProps.toJson()))
            .thenAnswer((_) async => jsonResponse);
        // Act
        final result = await repository.getExtensionAnalytics(
            props: tExtensionAnalyticsProps);
        // Assert
        expect(result, Right(tExtensionAnalyticsResponse));
        verify(mockTwitchDataSource.get(
            path: 'analytics/extensions',
            queryParams: tExtensionAnalyticsProps.toJson()));
      },
    );

    test(
      'should return a Failure when the call to TwitchDataSource throws an exception',
      () async {
        // Arrange
        when(mockTwitchDataSource.get(
                path: 'analytics/extensions',
                queryParams: tExtensionAnalyticsProps.toJson()))
            .thenThrow(Exception());
        // Act
        final result = await repository.getExtensionAnalytics(
            props: tExtensionAnalyticsProps);
        // Assert
        expect(result.isLeft(), true);
        verify(mockTwitchDataSource.get(
            path: 'analytics/extensions',
            queryParams: tExtensionAnalyticsProps.toJson()));
      },
    );
  });
}
