import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/chat_repository.dart';
import 'package:twitch_client/src/response/pagination_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'bits_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  final mockTwitchDataSource = MockTwitchDataSource();
  final repository = ChatInterfaceImpl(mockTwitchDataSource);

  group('getChatters', () {
    const String path = 'chat/chatters';
    ChattersProps props =
        const ChattersProps(broadcasterId: '123', moderatorId: '456');
    ChattersProps emptyProps =
        const ChattersProps(broadcasterId: '', moderatorId: '');
    ChattersResponse response = const ChattersResponse(
        data: [ChattersData(userName: 'Name', userId: '111')],
        pagination: Pagination(cursor: '123'),
        total: 0);

    test('On success', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getChatters(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getChatters(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });

    test('On empty props', () async {
      when(mockTwitchDataSource.get(
              path: path, queryParams: emptyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getChatters(props: emptyProps),
          throwsAssertionError);

      verifyNever(mockTwitchDataSource.get(
          path: path, queryParams: emptyProps.toJson()));
    });
  });

  group('getChatSettings', () {
    const String path = 'chat/settings';
    BroadcasterProps broadcasterProps =
        const BroadcasterProps(broadcasterId: '123');
    BroadcasterProps emptyBroadcasterProps =
        const BroadcasterProps(broadcasterId: '');
    ChatSettingsResponse response =
        const ChatSettingsResponse(data: [ChatSettingsData()]);

    test('On success', () async {
      when(mockTwitchDataSource.get(
              path: path, queryParams: broadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getChatSettings(props: broadcasterProps);

      verify(mockTwitchDataSource.get(
          path: path, queryParams: broadcasterProps.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(
              path: path, queryParams: broadcasterProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getChatSettings(props: broadcasterProps);

      verify(mockTwitchDataSource.get(
          path: path, queryParams: broadcasterProps.toJson()));
      expect(result.isLeft(), true);
    });

    test('On empty props', () async {
      when(mockTwitchDataSource.get(
              path: path, queryParams: emptyBroadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getChatSettings(props: emptyBroadcasterProps),
          throwsAssertionError);

      verifyNever(mockTwitchDataSource.get(
          path: path, queryParams: emptyBroadcasterProps.toJson()));
    });
  });

  group('updateChatSettings', () {
    const String path = 'chat/settings';
    BroadcasterModeratorProps props = const BroadcasterModeratorProps(
        broadcasterId: '123', moderatorId: '345');
    BroadcasterModeratorProps emptyBroadcasterProps =
        const BroadcasterModeratorProps(broadcasterId: '', moderatorId: '');
    ChatModifyProps modifyProps = const ChatModifyProps(slowMode: false);
    ChatSettingsResponse response =
        const ChatSettingsResponse(data: [ChatSettingsData()]);

    test('On success', () async {
      when(mockTwitchDataSource.patch(
              path: path,
              queryParams: props.toJson(),
              data: modifyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.updateChatSettings(
          props: props, chatProps: modifyProps);

      verify(mockTwitchDataSource.patch(
          path: path,
          queryParams: props.toJson(),
          data: modifyProps.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<ChatSettingsResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource.patch(
              path: path,
              queryParams: props.toJson(),
              data: modifyProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.updateChatSettings(
          props: props, chatProps: modifyProps);

      verify(mockTwitchDataSource.patch(
          path: path,
          queryParams: props.toJson(),
          data: modifyProps.toJson()));
      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockTwitchDataSource.patch(
              path: path,
              queryParams: emptyBroadcasterProps.toJson(),
              data: modifyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(
          () => repository.updateChatSettings(
              props: emptyBroadcasterProps, chatProps: modifyProps),
          throwsAssertionError);

      verifyNever(mockTwitchDataSource.patch(
          path: path,
          queryParams: emptyBroadcasterProps.toJson(),
          data: modifyProps.toJson()));
    });
  });
}
