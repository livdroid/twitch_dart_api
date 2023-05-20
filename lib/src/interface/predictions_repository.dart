import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';

/// The implementation of the [PredictionRepository] interface.
///
/// This class provides methods to interact with the Twitch predictions API,
/// allowing you to retrieve predictions, create new predictions, and end existing predictions.
class PredictionsRepositoryImpl implements PredictionRepository {
  static const String _path = 'predictions';

  final TwitchDataSource _twitchDataSource;

  PredictionsRepositoryImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  /// Retrieve all predictions
  @override
  Future<Either<Failure, PredictionResponse>> getPredictions(
      {required PredictionsProps props}) async {
    try {
      final response =
      await _twitchDataSource.get(path: _path, queryParams: props.toJson());
      return Right(PredictionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// Create a new prediction
  @override
  Future<Either<Failure, PredictionResponse>> createPrediction(
      {required CreatePredictionsProps props}) async {
    try {
      final response = await _twitchDataSource
          .post(path: _path, data: props.toJson(), queryParams: {});
      return Right(PredictionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  /// End a selected prediction
  @override
  Future<Either<Failure, PredictionResponse>> endPrediction(
      {required EndPredictionProps props}) async {
    try {
      final response = await _twitchDataSource
          .patch(path: _path, data: props.toJson(), queryParams: {});
      return Right(PredictionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

/// The interface for interacting with Twitch predictions.
///
/// Use this interface to retrieve predictions, create new predictions, and end existing predictions.
abstract class PredictionRepository {
  /// Retrieve all predictions.
  Future<Either<Failure, PredictionResponse>> getPredictions(
      {required PredictionsProps props});

  /// Create a new prediction.
  Future<Either<Failure, PredictionResponse>> createPrediction(
      {required CreatePredictionsProps props});

  /// End a selected prediction.
  Future<Either<Failure, PredictionResponse>> endPrediction(
      {required EndPredictionProps props});
}

