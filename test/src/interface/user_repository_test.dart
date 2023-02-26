import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/user_repository.dart';
import 'package:twitch_client/src/response/pagination_response.dart';
import 'package:twitch_client/src/utils/string_utils.dart';
import 'package:twitch_client/twitch_client.dart';

import 'bits_repository_test.mocks.dart';

void main() {
  final mockTwitchDataSource = MockTwitchDataSource();
  final repository = UserRepositoryImpl(mockTwitchDataSource);
  const String path = 'users';

  group('getUserInformation', () {
    UsersProps props = const UsersProps(id: '123');
    UserResponse response =
        const UserResponse(data: [UserResponseData(description: '123')]);

    test('On success', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getUserInformation(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getUserInformation(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('updateUserInformation', () {
    UserResponse responseLong =
        const UserResponse(data: [UserResponseData(description: '123')]);
    UpdateUserProps updateUserPropsLong =  UpdateUserProps(
        description:getRandom(301));
    UpdateUserProps updateUserProps = const UpdateUserProps(description: '123');
    UserResponse response =
        const UserResponse(data: [UserResponseData(description: '123')]);

    test('On success', () async {
      when(mockTwitchDataSource.put(
          path: path,
          queryParams: updateUserProps.toJson(),
          data: {})).thenAnswer((realInvocation) async => response.toJson());

      final result =
          await repository.updateUserInformation(props: updateUserProps);

      verify(mockTwitchDataSource
          .put(path: path, queryParams: updateUserProps.toJson(), data: {}));
      expect(result.isRight(), true);
      expect(result.asRight().data?.first.description, '123');
    });

    test('On assert error', () async {
      when(mockTwitchDataSource.put(
          path: path,
          queryParams: updateUserPropsLong.toJson(),
          data: {})).thenThrow(AssertionError('message'));

      expect(() => repository.updateUserInformation(props: updateUserPropsLong),
          throwsAssertionError);
      verifyNever(mockTwitchDataSource.put(
          path: path, queryParams: updateUserPropsLong.toJson(), data: {}));
    });

    test('On failure', () async {
      when(mockTwitchDataSource.put(
          path: path,
          queryParams: updateUserProps.toJson(),
          data: {})).thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await repository.updateUserInformation(props: updateUserProps);

      verify(mockTwitchDataSource
          .put(path: path, queryParams: updateUserProps.toJson(), data: {}));
      expect(result.isLeft(), true);
    });
  });

  group('getUserFollow', () {
    UserFollowResponse response = const UserFollowResponse(
        total: 1, data: [], pagination: Pagination(cursor: "1"));
    UserFollowProps props = const UserFollowProps(toId: '123');
    UserFollowProps emptyProps = const UserFollowProps();

    test('On success', () async {
      when(mockTwitchDataSource.get(
              path: '$path/follows/', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getUserFollow(props: props);

      verify(mockTwitchDataSource.get(
          path: '$path/follows/', queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On assert error', () async {
      when(mockTwitchDataSource.get(
              path: '$path/follows/', queryParams: emptyProps.toJson()))
          .thenThrow(AssertionError('message'));

      expect(() => repository.getUserFollow(props: emptyProps),
          throwsAssertionError);
      verifyNever(mockTwitchDataSource.get(
          path: '$path/follows/', queryParams: emptyProps.toJson()));
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(
              path: '$path/follows/', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getUserFollow(props: props);

      verify(mockTwitchDataSource.get(
          path: '$path/follows/', queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('getBlockList', () {
    UserBlockListResponse response = const UserBlockListResponse(data: []);
    UserBlockListProps props = const UserBlockListProps(broadcasterId: '123');

    test('On success', () async {
      when(mockTwitchDataSource.get(
              path: '$path/blocks/', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getBlockList(props: props);

      verify(mockTwitchDataSource.get(
          path: '$path/blocks/', queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(
              path: '$path/blocks/', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getBlockList(props: props);

      verify(mockTwitchDataSource.get(
          path: '$path/blocks/', queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('blockUser', () {
    BlockUserProps props = const BlockUserProps(targetUserId: '123');

    test('On success', () async {
      when(mockTwitchDataSource.put(
          path: '$path/blocks/',
          queryParams: props.toJson(),
          data: {})).thenAnswer((realInvocation) async => {});

      final result = await repository.blockUser(props: props);

      verify(mockTwitchDataSource.put(
          path: '$path/blocks/', queryParams: props.toJson(), data: {}));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.put(
          path: '$path/blocks/',
          queryParams: props.toJson(),
          data: {})).thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.blockUser(props: props);

      verify(mockTwitchDataSource
          .put(path: '$path/blocks/', queryParams: props.toJson(), data: {}));
      expect(result.isLeft(), true);
    });
  });

  group('unblock User', (){
    BlockUserProps props =  const BlockUserProps(targetUserId: '123');
    BlockUserProps emptyProps =  const BlockUserProps(targetUserId: '');

    test('On success', () async {
      when(mockTwitchDataSource.delete(
          path: '$path/blocks/', queryParams: props.toJson(), data: {}))
          .thenAnswer((realInvocation) async => {});

      final result = await repository.unblockUser(props: props);

      verify(mockTwitchDataSource.delete(
          path: '$path/blocks/', queryParams: props.toJson(), data: {}));
      expect(result.isRight(), true);
    });

    test('On assert error', () async {
      when(mockTwitchDataSource.delete(
          path: '$path/blocks/', queryParams: emptyProps.toJson(), data: {}))
          .thenThrow(AssertionError('message'));

      expect(() => repository.unblockUser(props: emptyProps),
          throwsAssertionError);
      verifyNever(mockTwitchDataSource.delete(
          path: '$path/blocks/', queryParams: emptyProps.toJson(), data: {}));
    });

    test('On failure', () async {
      when(mockTwitchDataSource.delete(
          path: '$path/blocks/', queryParams: props.toJson(), data: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.unblockUser(props: props);

      verify(mockTwitchDataSource.delete(
          path: '$path/blocks/', queryParams: props.toJson(), data: {}));
      expect(result.isLeft(), true);
    });
  });
}
