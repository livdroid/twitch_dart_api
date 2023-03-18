import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/stream_repository.dart';
import 'package:twitch_client/src/props/get_streams_props.dart';
import 'package:twitch_client/src/response/get_streams_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'analytics_repository_test.mocks.dart';

void main() {
  final mockedDataSource = MockTwitchDataSource();
  final repository =
      StreamsRepositoryImpl('token', 'clientid', dataSource: mockedDataSource);
  const String path = 'streams';
  GetStreamsProps props = const GetStreamsProps();
  GetStreamsResponse response =
      const GetStreamsResponse(data: [], pagination: Pagination(cursor: '1'));

  group('getStreams', () {
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
}
