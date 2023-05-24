import 'package:dartz/dartz.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/interface/analytics_repository.dart';
import 'package:twitch_client/twitch_client.dart';

import 'channel_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  group('getGameAnalytics', () {
    late MockTwitchDataSource mockTwitchDataSource;
    late AnalyticsRepository repository;

    setUp(() {
      mockTwitchDataSource = MockTwitchDataSource();
      repository = AnalyticsRepositoryImpl('token', 'clientid',
          dataSource: mockTwitchDataSource);
    });

    final gameAnalyticsProps = GameAnalyticsProps();
    const gameAnalyticsResponse = GameAnalyticsResponse();
    test(
      'should return a GameAnalyticsResponse when the call to TwitchDataSource is successful',
      () async {
        when(mockTwitchDataSource.get(
                path: 'analytics/games',
                queryParams: gameAnalyticsProps.toJson()))
            .thenAnswer((_) async => gameAnalyticsResponse.toJson());

        final result =
            await repository.getGameAnalytics(props: gameAnalyticsProps);

        expect(result, const Right(gameAnalyticsResponse));
        verify(mockTwitchDataSource.get(
            path: 'analytics/games', queryParams: gameAnalyticsProps.toJson()));
      },
    );

    test(
      'should return a Failure when the call to TwitchDataSource throws an exception',
      () async {
        when(mockTwitchDataSource.get(
                path: 'analytics/games',
                queryParams: gameAnalyticsProps.toJson()))
            .thenThrow(Exception());

        final result =
            await repository.getGameAnalytics(props: gameAnalyticsProps);

        expect(result.isLeft(), true);
        verify(mockTwitchDataSource.get(
            path: 'analytics/games', queryParams: gameAnalyticsProps.toJson()));
      },
    );
  });

  group('getExtensionAnalytics', () {
    final tExtensionAnalyticsProps = ExtensionAnalyticsProps();
    const tExtensionAnalyticsResponse = ExtensionAnalyticsResponse(
        data: [], pagination: Pagination(cursor: '1'));
    final jsonResponse = tExtensionAnalyticsResponse.toJson();

    late MockTwitchDataSource mockTwitchDataSource;
    late AnalyticsRepositoryImpl repository;

    setUp(() {
      mockTwitchDataSource = MockTwitchDataSource();
      repository = AnalyticsRepositoryImpl('token', 'clientid',
          dataSource: mockTwitchDataSource);
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
        expect(result, const Right(tExtensionAnalyticsResponse));
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
