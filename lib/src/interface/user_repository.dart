import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

class UserRepositoryImpl implements UserInterface {
  static const String _path = 'users';

  final TwitchDataSource _twitchDataSource;

  UserRepositoryImpl(this._twitchDataSource);

  @override
  Future<Either<Failure, UserResponse>> getUserInformation(
      {required UsersProps props}) async {
    try {
      final response =
          await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(UserResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, UserResponse>> updateUserInformation(
      {required UpdateUserProps props}) async {
    assert(props.description.length <= 300);

    try {
      final response = await _twitchDataSource
          .put(path: _path, queryParams: props.toJson(), data: {});
      return Right(UserResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, UserFollowResponse>> getUserFollow(
      {required UserFollowProps props}) async {
    assert(props.toId != null || props.fromId != null);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/follows/', queryParams: props.toJson());
      return Right(UserFollowResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, UserBlockListResponse>> getBlockList(
      {required UserBlockListProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/blocks/', queryParams: props.toJson());
      return Right(UserBlockListResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> blockUser(
      {required BlockUserProps props}) async {
    try {
      await _twitchDataSource
          .put(path: '$_path/blocks/', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> unblockUser(
      {required BlockUserProps props}) async {
    try {
      assert(props.targetUserId.isNotEmpty);

      await _twitchDataSource.delete(
          path: '$_path/blocks/', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class UserInterface {
  Future<Either<Failure, UserResponse>> getUserInformation(
      {required UsersProps props});

  Future<Either<Failure, UserResponse>> updateUserInformation(
      {required UpdateUserProps props});

  Future<Either<Failure, UserFollowResponse>> getUserFollow(
      {required UserFollowProps props});

  Future<Either<Failure, UserBlockListResponse>> getBlockList(
      {required UserBlockListProps props});

  Future<Either<Failure, bool>> blockUser({required BlockUserProps props});

  Future<Either<Failure, bool>> unblockUser({required BlockUserProps props});
}
