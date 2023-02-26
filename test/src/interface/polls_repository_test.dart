import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/polls_repository.dart';
import 'package:twitch_client/src/response/polls_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'analytics_repository_test.mocks.dart';

void main() {
  final mockTwitchDataSource = MockTwitchDataSource();
  final repository = PollsRepositoryImpl(mockTwitchDataSource);

  group('getPolls', () {
    const String path = 'polls';
    PollsProps props = PollsProps(broadcasterId: '123');
    PollsResponse response = const PollsResponse();

    test('On success', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getPolls(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<PollsResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getPolls(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('createPoll', () {
    const String path = 'polls';
    CreatePollProps props = CreatePollProps(
        broadcasterId: '123', title: 'title', choices: [], duration: 1);
    PollsResponse response = const PollsResponse();

    test('On success', () async {
      when(mockTwitchDataSource
              .post(path: path, data: props.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.createPoll(props: props);

      verify(mockTwitchDataSource
          .post(path: path, data: props.toJson(), queryParams: {}));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<PollsResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource
              .post(path: path, data: props.toJson(), queryParams: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.createPoll(props: props);

      verify(mockTwitchDataSource
          .post(path: path, data: props.toJson(), queryParams: {}));
      expect(result.isLeft(), true);
    });
  });

  group('endPoll', () {
    const String path = 'polls';
    EndPollProps props =
        EndPollProps(broadcasterId: '123', id: '1', status: 'terminated');
    PollsResponse response = const PollsResponse();

    test('On success', () async {
      when(mockTwitchDataSource
              .patch(path: path, data: props.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.endPoll(props: props);

      verify(mockTwitchDataSource
          .patch(path: path, data: props.toJson(), queryParams: {}));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<PollsResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource
              .patch(path: path, data: props.toJson(), queryParams: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.endPoll(props: props);

      verify(mockTwitchDataSource
          .patch(path: path, data: props.toJson(), queryParams: {}));
      expect(result.isLeft(), true);
    });
  });
}
