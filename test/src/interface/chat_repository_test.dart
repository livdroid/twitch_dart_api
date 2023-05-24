import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/chat_repository.dart';
import 'package:twitch_client/src/utils/string_utils.dart';
import 'package:twitch_client/twitch_client.dart';

import 'bits_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  final mockedDataSource = MockTwitchDataSource();
  final repository =
      ChatInterfaceImpl('token', 'clientid', dataSource: mockedDataSource);

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
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getChatters(props: props);

      verify(mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getChatters(props: props);

      verify(mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.get(path: path, queryParams: emptyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getChatters(props: emptyProps),
          throwsA(const TypeMatcher<AssertionError>()));

      verifyNever(
          mockedDataSource.get(path: path, queryParams: emptyProps.toJson()));
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
      when(mockedDataSource.get(
              path: path, queryParams: broadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getChatSettings(props: broadcasterProps);

      verify(mockedDataSource.get(
          path: path, queryParams: broadcasterProps.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.get(
              path: path, queryParams: broadcasterProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getChatSettings(props: broadcasterProps);

      verify(mockedDataSource.get(
          path: path, queryParams: broadcasterProps.toJson()));
      expect(result.isLeft(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.get(
              path: path, queryParams: emptyBroadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getChatSettings(props: emptyBroadcasterProps),
          throwsA(const TypeMatcher<AssertionError>()));

      verifyNever(mockedDataSource.get(
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
      when(mockedDataSource.patch(
              path: path,
              queryParams: props.toJson(),
              data: modifyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.updateChatSettings(
          props: props, chatProps: modifyProps);

      verify(mockedDataSource.patch(
          path: path, queryParams: props.toJson(), data: modifyProps.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<ChatSettingsResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.patch(
              path: path,
              queryParams: props.toJson(),
              data: modifyProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.updateChatSettings(
          props: props, chatProps: modifyProps);

      verify(mockedDataSource.patch(
          path: path, queryParams: props.toJson(), data: modifyProps.toJson()));
      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.patch(
              path: path,
              queryParams: emptyBroadcasterProps.toJson(),
              data: modifyProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(
          () => repository.updateChatSettings(
              props: emptyBroadcasterProps, chatProps: modifyProps),
          throwsA(const TypeMatcher<AssertionError>()));

      verifyNever(mockedDataSource.patch(
          path: path,
          queryParams: emptyBroadcasterProps.toJson(),
          data: modifyProps.toJson()));
    });
  });

  group('sendChatAnnouncement', () {
    const String path = 'chat/announcements';
    BroadcasterModeratorProps props = const BroadcasterModeratorProps(
        broadcasterId: '123', moderatorId: '345');
    BroadcasterModeratorProps emptyBroadcasterProps =
        const BroadcasterModeratorProps(broadcasterId: '', moderatorId: '');
    ChatAnnouncementProps chatProps =
        const ChatAnnouncementProps(message: '123');

    final longMessage = getRandom(501);
    ChatAnnouncementProps longChatProps =
        ChatAnnouncementProps(message: longMessage);

    test('On success', () async {
      when(mockedDataSource.post(
              path: path,
              queryParams: props.toJson(),
              data: chatProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      final result = await repository.sendChatAnnouncement(
          props: props, chatProps: chatProps);

      verify(mockedDataSource.post(
          path: path, queryParams: props.toJson(), data: chatProps.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<bool>());
    });

    test('On failure', () async {
      when(mockedDataSource.post(
              path: path,
              queryParams: props.toJson(),
              data: chatProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.sendChatAnnouncement(
          props: props, chatProps: chatProps);

      verify(mockedDataSource.post(
          path: path, queryParams: props.toJson(), data: chatProps.toJson()));
      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.post(
              path: path,
              queryParams: emptyBroadcasterProps.toJson(),
              data: chatProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(
          () => repository.sendChatAnnouncement(
              props: emptyBroadcasterProps, chatProps: chatProps),
          throwsA(const TypeMatcher<AssertionError>()));

      verifyNever(mockedDataSource.post(
          path: path,
          queryParams: emptyBroadcasterProps.toJson(),
          data: chatProps.toJson()));
    });

    test('On too long message props', () async {
      when(mockedDataSource.post(
              path: path,
              queryParams: props.toJson(),
              data: longChatProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(
          () => repository.sendChatAnnouncement(
              props: props, chatProps: longChatProps),
          throwsA(const TypeMatcher<AssertionError>()));

      verifyNever(mockedDataSource.post(
          path: path,
          queryParams: props.toJson(),
          data: longChatProps.toJson()));
    });
  });
}
