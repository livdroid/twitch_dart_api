import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/raid_repository.dart';
import 'package:twitch_client/twitch_client.dart';

import 'analytics_repository_test.mocks.dart';

void main() {
  late RaidRepositoryImpl raidRepository;
  late MockTwitchDataSource mockDataSource;
  const props = RaidProps(
    fromBroadcasterId: 'broadcasterId',
    toBroadcasterId: 'targetDisplayName',
  );


  setUp(() {
    mockDataSource = MockTwitchDataSource();
    raidRepository =
        RaidRepositoryImpl('token', 'clientId', dataSource: mockDataSource);
  });

  test('should return a RaidResponse when the request is successful', () async {
    final mockResponse = {
      "data": [
        {"created_at": "2022-02-18T07:20:50.52Z", "is_mature": false}
      ]
    };

    when(mockDataSource.post(
      path: 'raids',
      data: props.toJson(),
      queryParams: {},
    )).thenAnswer((_) async => mockResponse);

    final result = await raidRepository.startRaid(props: props);

    expect(result, equals(Right(RaidResponse.fromJson(mockResponse))));
    verify(mockDataSource.post(
      path: 'raids',
      data: props.toJson(),
      queryParams: {},
    ));
  });

  test('startRaid should return a Failure when the request throws an exception',
      () async {
    // Mock the Twitch API client
    when(mockDataSource.post(
      path: 'raids',
      data: props.toJson(),
      queryParams: {},
    )).thenThrow(ForbiddenRequestException(message: 'message'));

    // Create the repository instance with the mocked Twitch API client
    // Act
    final result = await raidRepository.startRaid(props: props);

    // Assert
    expect(result.isLeft(), true);
    expect(result.asLeft().exception, isA<Exception>());
  });
}
