import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// Implementation of the UserInterface that interacts with the Twitch API to retrieve user information and perform user-related actions.
class UserRepositoryImpl implements UserInterface {
  static const String _path = 'users';

  final TwitchDataSource _twitchDataSource;

  UserRepositoryImpl(String token, String clientId, {TwitchDataSource? dataSource})
      : _twitchDataSource = dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Get user information.
  ///
  /// Retrieves detailed information about a user specified by the [props].
  ///
  /// Returns an `Either` object that represents either a [UserResponse] containing the user information on the right side,
  /// or a [Failure] on the left side if an error occurs.
  @override
  Future<Either<Failure, UserResponse>> getUserInformation({required UsersProps props}) async {
    try {
      final response = await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(UserResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Update user information.
  ///
  /// Updates the information of the authenticated user. Only the channel description can be modified.
  ///
  /// The [props] parameter contains the updated user properties.
  ///
  /// Returns an `Either` object that represents either a [UserResponse] containing the updated user information on the right side,
  /// or a [Failure] on the left side if an error occurs.
  @override
  Future<Either<Failure, UserResponse>> updateUserInformation({required UpdateUserProps props}) async {
    assert(props.description.length <= 300);

    try {
      final response = await _twitchDataSource.put(path: _path, queryParams: props.toJson(), data: {});
      return Right(UserResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /*
  * This method uses a deprecated Twitch API endpoint that
  * will be decommissioned on August 3, 2023.
  * Access to this endpoint is limited to client IDs that have
  * called the endpoint on or before February 17, 2023.
  */
  /// Get the users a user follows.
  ///
  /// Retrieves a list of users that the specified user either follows or is followed by, based on the [props] parameters.
  ///
  /// Returns an `Either` object that represents either a [UserFollowResponse] containing the list of followed users on the right side,
  /// or a [Failure] on the left side if an error occurs.
  @override
  Future<Either<Failure, UserFollowResponse>> getUserFollow({required UserFollowProps props}) async {
    assert(props.toId != null || props.fromId != null);

    try {
      final response = await _twitchDataSource.get(path: '$_path/follows/', queryParams: props.toJson());
      return Right(UserFollowResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Get the blocked users for a user.
  ///
  /// Retrieves a list of users blocked by the authenticated user.
  ///
  /// Returns an `Either` object that represents either a [UserBlockListResponse] containing the list of blocked users on the right side,
  /// or a [Failure] on the left side if an error occurs.
  @override
  Future<Either<Failure, UserBlockListResponse>> getBlockList({required UserBlockListProps props}) async {
    try {
      final response = await _twitchDataSource.get(path: '$_path/blocks/', queryParams: props.toJson());
      return Right(UserBlockListResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Add a user to the blocked users.
  ///
  /// Blocks the specified user identified by the [props.targetUserId].
  ///
  /// Returns an `Either` object that represents either a boolean value of `true` on the right side if the user was successfully blocked,
  /// or a [Failure] on the left side if an error occurs.
  @override
  Future<Either<Failure, bool>> blockUser({required BlockUserProps props}) async {
    try {
      await _twitchDataSource.put(path: '$_path/blocks/', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Unblock a user.
  ///
  /// Removes the specified user identified by the [props.targetUserId] from the blocked users list.
  ///
  /// Returns an `Either` object that represents either a boolean value of `true` on the right side if the user was successfully unblocked,
  /// or a [Failure] on the left side if an error occurs.
  @override
  Future<Either<Failure, bool>> unblockUser({required BlockUserProps props}) async {
    try {
      assert(props.targetUserId.isNotEmpty);

      await _twitchDataSource.delete(path: '$_path/blocks/', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The interface for interacting with Twitch user-related operations.
abstract class UserInterface {
  /// Get user information.
  ///
  /// Retrieves detailed information about a user specified by the [props].
  ///
  /// Returns an `Either` object that represents either a [UserResponse] containing the user information on the right side,
  /// or a [Failure] on the left side if an error occurs.
  Future<Either<Failure, UserResponse>> getUserInformation({required UsersProps props});

  /// Update user information.
  ///
  /// Updates the information of the authenticated user. Only the channel description can be modified.
  ///
  /// The [props] parameter contains the updated user properties.
  ///
  /// Returns an `Either` object that represents either a [UserResponse] containing the updated user information on the right side,
  /// or a [Failure] on the left side if an error occurs.
  Future<Either<Failure, UserResponse>> updateUserInformation({required UpdateUserProps props});

  /// Get the users a user follows.
  ///
  /// Retrieves a list of users that the specified user either follows or is followed by, based on the [props] parameters.
  ///
  /// Returns an `Either` object that represents either a [UserFollowResponse] containing the list of followed users on the right side,
  /// or a [Failure] on the left side if an error occurs.
  Future<Either<Failure, UserFollowResponse>> getUserFollow({required UserFollowProps props});

  /// Get the blocked users for a user.
  ///
  /// Retrieves a list of users blocked by the authenticated user.
  ///
  /// Returns an `Either` object that represents either a [UserBlockListResponse] containing the list of blocked users on the right side,
  /// or a [Failure] on the left side if an error occurs.
  Future<Either<Failure, UserBlockListResponse>> getBlockList({required UserBlockListProps props});

  /// Add a user to the blocked users.
  ///
  /// Blocks the specified user identified by the [props.targetUserId].
  ///
  /// Returns an `Either` object that represents either a boolean value of `true` on the right side if the user was successfully blocked,
  /// or a [Failure] on the left side if an error occurs.
  Future<Either<Failure, bool>> blockUser({required BlockUserProps props});

  /// Unblock a user.
  ///
  /// Removes the specified user identified by the [props.targetUserId] from the blocked users list.
  ///
  /// Returns an `Either` object that represents either a boolean value of `true` on the right side if the user was successfully unblocked,
  /// or a [Failure] on the left side if an error occurs.
  Future<Either<Failure, bool>> unblockUser({required BlockUserProps props});
}

