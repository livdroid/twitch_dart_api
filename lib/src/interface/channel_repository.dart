import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the ChannelInterface.
///
/// This class provides methods to interact with Twitch Channel API, allowing you to retrieve channel information,
/// modify channel details, manage channel editors, start commercials, and manage VIP users.
class ChannelInterfaceImpl implements ChannelInterface {
  static const String _path = 'channels';

  final TwitchDataSource _twitchDataSource;

  /// Creates an instance of [ChannelInterfaceImpl].
  ///
  /// The [token] is the access token required for authentication with the Twitch API.
  /// The [clientId] is the client ID associated with the Twitch application.
  /// The optional [dataSource] parameter allows injecting a custom [TwitchDataSource] implementation.
  ChannelInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Get channel information.
  ///
  /// The [props] parameter contains the properties required to fetch channel information.
  /// Returns a [Future] that either yields a [Right] containing the [ChannelInformationsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, ChannelInformationsResponse>> getChannelInformation(
      {required BroadcasterProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response =
      await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(ChannelInformationsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Modify channel information.
  ///
  /// The [broadcasterProps] parameter contains the properties of the broadcaster associated with the channel.
  /// The [modifyChannelInformationProps] parameter contains the properties to update the channel information.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> modifyChannelInformation(
      {required BroadcasterProps broadcasterProps,
        required ModifyChannelInformationProp modifyChannelInformationProps}) async {
    assert(broadcasterProps.broadcasterId.isNotEmpty);
    try {
      await _twitchDataSource.patch(
          path: _path,
          queryParams: broadcasterProps.toJson(),
          data: modifyChannelInformationProps.toJson());
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve a channel's editors.
  ///
  /// The [broadcasterProps] parameter contains the properties of the broadcaster associated with the channel.
  /// Returns a [Future] that either yields a [Right] containing the [ChannelEditorsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, ChannelEditorsResponse>> getChannelEditors(
      {required BroadcasterProps broadcasterProps}) async {
    assert(broadcasterProps.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/editors', queryParams: broadcasterProps.toJson());
      return Right(ChannelEditorsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Start a commercial.
  ///
  /// The [startCommercialProps] parameter contains the properties required to start a commercial.
  /// Returns a [Future] that either yields a [Right] containing the [StartCommercialResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, StartCommercialResponse>> startCommercial(
      {required StartCommercialProps startCommercialProps}) async {
    assert(startCommercialProps.broadcasterId.isNotEmpty);
    assert(startCommercialProps.length <= 180);
    try {
      final response = await _twitchDataSource.post(
          path: '$_path/commercial',
          data: startCommercialProps.toJson(),
          queryParams: {});
      return Right(StartCommercialResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Retrieve all VIP users from a channel.
  ///
  /// The [props] parameter contains the properties required to fetch VIP users.
  /// Returns a [Future] that either yields a [Right] containing the [ChannelVipsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, ChannelVipsResponse>> getVIPs(
      {required BroadcasterProps props}) async {
    assert(props.broadcasterId.isNotEmpty);

    try {
      final response = await _twitchDataSource.get(
          path: '$_path/vips', queryParams: props.toJson());
      return Right(ChannelVipsResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Add a VIP user to a channel.
  ///
  /// The [props] parameter contains the properties required to add a VIP user.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> addVip({required AddVipProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.userId.isNotEmpty);

    try {
      await _twitchDataSource
          .post(path: '$_path/vips', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Remove a VIP user from a channel.
  ///
  /// The [props] parameter contains the properties required to remove a VIP user.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  @override
  Future<Either<Failure, bool>> removeVip(
      {required RemoveVipProps props}) async {
    assert(props.broadcasterId.isNotEmpty);
    assert(props.userId.isNotEmpty);

    try {
      await _twitchDataSource
          .delete(path: '$_path/vips', queryParams: props.toJson(), data: {});
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The contract for the ChannelInterface.
///
/// This abstract class defines the methods to interact with Twitch Channel API,
/// allowing you to retrieve channel information, modify channel details, manage channel editors,
/// start commercials, and manage VIP users.
abstract class ChannelInterface {
  /// Get channel information.
  ///
  /// The [props] parameter contains the properties required to fetch channel information.
  /// Returns a [Future] that either yields a [Right] containing the [ChannelInformationsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ChannelInformationsResponse>> getChannelInformation(
      {required BroadcasterProps props});

  /// Modify channel information.
  ///
  /// The [broadcasterProps] parameter contains the properties of the broadcaster associated with the channel.
  /// The [modifyChannelInformationProps] parameter contains the properties to update the channel information.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, bool>> modifyChannelInformation(
      {required BroadcasterProps broadcasterProps,
        required ModifyChannelInformationProp modifyChannelInformationProps});

  /// Retrieve a channel's editors.
  ///
  /// The [broadcasterProps] parameter contains the properties of the broadcaster associated with the channel.
  /// Returns a [Future] that either yields a [Right] containing the [ChannelEditorsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ChannelEditorsResponse>> getChannelEditors(
      {required BroadcasterProps broadcasterProps});

  /// Start a commercial.
  ///
  /// The [startCommercialProps] parameter contains the properties required to start a commercial.
  /// Returns a [Future] that either yields a [Right] containing the [StartCommercialResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, StartCommercialResponse>> startCommercial(
      {required StartCommercialProps startCommercialProps});

  /// Retrieve all VIP users from a channel.
  ///
  /// The [props] parameter contains the properties required to fetch VIP users.
  /// Returns a [Future] that either yields a [Right] containing the [ChannelVipsResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, ChannelVipsResponse>> getVIPs(
      {required BroadcasterProps props});

  /// Add a VIP user to a channel.
  ///
  /// The [props] parameter contains the properties required to add a VIP user.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, bool>> addVip({required AddVipProps props});

  /// Remove a VIP user from a channel.
  ///
  /// The [props] parameter contains the properties required to remove a VIP user.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, bool>> removeVip({required RemoveVipProps props});
}
