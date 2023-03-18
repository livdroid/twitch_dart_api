import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/stream_repository.dart';
import 'package:twitch_client/src/props/get_followed_streams_props.dart';
import 'package:twitch_client/src/props/get_streams_props.dart';
import 'package:twitch_client/src/response/get_streams_response.dart';
import 'package:twitch_client/src/response/pagination_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'analytics_repository_test.mocks.dart';

void main() {
  final mockedDataSource = MockTwitchDataSource();
  final repository =
      StreamsRepositoryImpl('token', 'clientid', dataSource: mockedDataSource);
  const String path = 'streams';
  GetStreamsResponse response =
      const GetStreamsResponse(data: [], pagination: Pagination(cursor: '1'));

  group('getStreams', () {
    GetStreamsProps props = const GetStreamsProps();

    test('On success', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getStreams(props: props);

      verify(mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<GetStreamsResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getStreams(props: props);

      verify(mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('getStreams', () {
    GetFollowedStreamsProps props = GetFollowedStreamsProps(userId: '123');
    GetFollowedStreamsProps emptyProps = GetFollowedStreamsProps(userId: '');

    test('On success', () async {
      when(mockedDataSource.get(path: '$path/followed', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getFollowedStreams(props: props);

      verify(mockedDataSource.get(path: '$path/followed', queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<GetStreamsResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: '$path/followed', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getFollowedStreams(props: props);

      verify(mockedDataSource.get(path: '$path/followed', queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });

    test('On empty props return failure', () async {
      when(mockedDataSource.get(path: '$path/followed', queryParams: emptyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getFollowedStreams(props: emptyProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: '$path/followed', queryParams: emptyProps.toJson()));
    });
  });

  group('getStreamKey', () {
    BroadcasterProps props = BroadcasterProps(broadcasterId: '123');
    BroadcasterProps emptyProps = BroadcasterProps(broadcasterId: '');

    test('On success', () async {
      when(mockedDataSource.get(path: '$path/key', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => StreamKeyResponse(data:[ StreamKeyResponseData(streamKey: '123')]).toJson());

      final result = await repository.getStreamKey(props: props);

      verify(mockedDataSource.get(path: '$path/key', queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<StreamKeyResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: '$path/key', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getStreamKey(props: props);

      verify(mockedDataSource.get(path: '$path/key', queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });

    test('On empty props return failure', () async {
      when(mockedDataSource.get(path: '$path/key', queryParams: emptyProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.getStreamKey(props: emptyProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: '$path/key', queryParams: emptyProps.toJson()));
    });
  });
}
