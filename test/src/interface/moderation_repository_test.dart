import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/moderation_repository.dart';
import 'package:twitch_client/src/response/moderator_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'moderation_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  final mockedDataSource = MockTwitchDataSource();
  final repository = ModerationInterfaceImpl('token', 'clientid', dataSource: mockedDataSource);

  group('getBannedUsers', () {
    const String path = 'moderation/banned';
    BroadcasterProps props = const BroadcasterProps(broadcasterId: '123');
    BroadcasterProps empryProps = const BroadcasterProps(broadcasterId: '');
    BannedUsersResponse response =
        const BannedUsersResponse(data: [BannedUser(userId: '123', userName: '12', userLogin: '12', reason: '12', createdAt: '12')]);

    test('On success', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getBannedUsers(props: props);

      verify(
          mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<BannedUsersResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getBannedUsers(props: props);

      verify(
          mockedDataSource.get(path: path, queryParams: props.toJson()));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.get(
              path: path, queryParams: empryProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getBannedUsers(props: empryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: path, queryParams: empryProps.toJson()));
    });
  });

  group('unbanUser', () {
    const String path = 'moderation/bans';
    ModerationProps props = ModerationProps(broadcasterId: '123', moderatorId: '3312', userId: '1222');
    ModerationProps empryProps = ModerationProps(broadcasterId: '', moderatorId: '', userId: '');

    test('On success', () async {
      when(mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      final result = await repository.unbanUser(props: props);

      verify(
          mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.unbanUser(props: props);

      verify(
          mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.delete(
          path: path, queryParams: empryProps.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.unbanUser(props: empryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.delete(
          path: path, queryParams: empryProps.toJson(), data: {}));
    });
  });

  group('banUser', () {
    const String path = 'moderation/bans';
    BanUserProps props = const BanUserProps(data: BanUserData(userId: '123', reason: '123', duration: 1));
    BroadcasterModeratorProps queryProps = const BroadcasterModeratorProps(broadcasterId: '123', moderatorId: '3312');
    BroadcasterModeratorProps emptyQueryProps = const BroadcasterModeratorProps(broadcasterId: '', moderatorId: '');
    BanUserResponse response = const BanUserResponse(data: [BanUserResponseData(broadcasterId: '123')]);

    test('On success', () async {
      when(mockedDataSource.post(path: path, queryParams: queryProps.toJson(), data: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.banUser(props: props, queryProps: queryProps);

      verify(
          mockedDataSource.post(path: path, queryParams: queryProps.toJson(), data: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.post(path: path, queryParams: queryProps.toJson(), data: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.banUser(props: props, queryProps: queryProps);

      verify(
          mockedDataSource.post(path: path, queryParams: queryProps.toJson(), data: props.toJson()));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.delete(
          path: path, queryParams: emptyQueryProps.toJson(), data: props.toJson()))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.banUser(props: props, queryProps: emptyQueryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.post(path: path, queryParams: emptyQueryProps.toJson(), data: props.toJson()));
    });
  });

  group('getModerators', () {
    const String path = 'moderation/moderators';
    BroadcasterProps props = const BroadcasterProps(broadcasterId: '123');
    BroadcasterProps empryProps = const BroadcasterProps(broadcasterId: '');
    ModeratorResponse response = const ModeratorResponse(data: [Moderator(userLogin: '123')]);

    test('On success', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getModerators(props: props);

      verify(
          mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<ModeratorResponse>());
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getModerators(props: props);

      verify(
          mockedDataSource.get(path: path, queryParams: props.toJson()));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.get(
          path: path, queryParams: empryProps.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => repository.getModerators(props: empryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: path, queryParams: empryProps.toJson()));
    });
  });

  group('addModerator', () {
    const String path = 'moderation/moderators';
    AddModeratorProps props = const AddModeratorProps(broadcasterId: '123', userId: '1223');
    AddModeratorProps emptyprops = const AddModeratorProps(broadcasterId: '', userId: '');

    test('On success', () async {
      when(mockedDataSource.post(path: path, queryParams: props.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      final result = await repository.addModerator(props: props);

      verify(
          mockedDataSource.post(path: path, queryParams: props.toJson(), data: {}));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.post(path: path, queryParams: props.toJson(), data: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.addModerator(props: props);

      verify(
          mockedDataSource.post(path: path, queryParams: props.toJson(), data: {}));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.delete(
          path: path, queryParams: emptyprops.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.addModerator(props: emptyprops),
          throwsAssertionError);

      verifyNever(mockedDataSource.post(path: path, queryParams: emptyprops.toJson(), data: {}));
    });
  });

  group('removeModerator', () {
    const String path = 'moderation/moderators';
    RemoveModeratorProps props = const RemoveModeratorProps(broadcasterId: '123', userId: '1222');
    RemoveModeratorProps empryProps = const RemoveModeratorProps(broadcasterId: '', userId: '');

    test('On success', () async {
      when(mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      final result = await repository.removeModerator(props: props);

      verify(
          mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.removeModerator(props: props);

      verify(
          mockedDataSource.delete(path: path, queryParams: props.toJson(), data: {}));

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<ForbiddenRequestException>());
    });

    test('On empty props', () async {
      when(mockedDataSource.delete(
          path: path, queryParams: empryProps.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      expect(() => repository.removeModerator(props: empryProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.delete(
          path: path, queryParams: empryProps.toJson(), data: {}));
    });
  });
}
