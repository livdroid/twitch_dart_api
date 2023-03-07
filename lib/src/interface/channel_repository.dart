import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/response/start_commercial_response.dart';
import 'package:twitch_client/twitch_client.dart';

class ChannelInterfaceImpl implements ChannelInterface {
  static const String _path = 'channels';

  final TwitchDataSource _twitchDataSource;

  ChannelInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

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

  @override
  Future<Either<Failure, bool>> modifyChannelInformation(
      {required BroadcasterProps broadcasterProps,
      required ModifyChannelInformationProp
          modifyChannelInformationProps}) async {
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

abstract class ChannelInterface {
  Future<Either<Failure, ChannelInformationsResponse>> getChannelInformation(
      {required BroadcasterProps props});

  Future<Either<Failure, bool>> modifyChannelInformation(
      {required BroadcasterProps broadcasterProps,
      required ModifyChannelInformationProp modifyChannelInformationProps});

  Future<Either<Failure, ChannelEditorsResponse>> getChannelEditors(
      {required BroadcasterProps broadcasterProps});

  Future<Either<Failure, StartCommercialResponse>> startCommercial(
      {required StartCommercialProps startCommercialProps});

  Future<Either<Failure, ChannelVipsResponse>> getVIPs(
      {required BroadcasterProps props});

  Future<Either<Failure, bool>> addVip({required AddVipProps props});

  Future<Either<Failure, bool>> removeVip({required RemoveVipProps props});
}
