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
  const cancelProps = BroadcasterProps(
    broadcasterId: 'broadcasterId',
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
      queryParams: props.toJson(),
      data: {},
    )).thenAnswer((_) async => mockResponse);

    final result = await raidRepository.startRaid(props: props);

    expect(result, equals(Right(RaidResponse.fromJson(mockResponse))));
    verify(mockDataSource.post(
      path: 'raids',
      queryParams: props.toJson(),
      data: {},
    ));
  });

  test('startRaid should return a Failure when the request throws an exception',
      () async {
    when(mockDataSource.post(
      path: 'raids',
      queryParams: props.toJson(),
      data: {},
    )).thenThrow(ForbiddenRequestException(message: 'message'));

    final result = await raidRepository.startRaid(props: props);

    expect(result.isLeft(), true);
    expect(result.asLeft().exception, isA<Exception>());
  });

  /// Cancel
  test('should return a RaidResponse when the request is successful', () async {
    when(mockDataSource.delete(
      path: 'raids',
      queryParams: cancelProps.toJson(),
      data: {},
    )).thenAnswer((_) async => true);

    final result = await raidRepository.cancelRaid(props: cancelProps);

    expect(result, equals(const Right(true)));
    verify(mockDataSource.delete(
      path: 'raids',
      queryParams: cancelProps.toJson(),
      data: {},
    ));
  });

  test(
      'cancelRaid should return a Failure when the request throws an exception',
      () async {
    when(mockDataSource.delete(
      path: 'raids',
      queryParams: cancelProps.toJson(),
      data: {},
    )).thenThrow(ForbiddenRequestException(message: 'message'));

    final result = await raidRepository.cancelRaid(props: cancelProps);

    expect(result.isLeft(), true);
    expect(result.asLeft().exception, isA<Exception>());
  });
}
