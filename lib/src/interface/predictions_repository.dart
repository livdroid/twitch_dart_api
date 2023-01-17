import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/props/create_prediction_props.dart';
import 'package:twitch_client/src/props/end_prediction_props.dart';
import 'package:twitch_client/src/props/predictions_props.dart';
import 'package:twitch_client/src/response/prediction_response.dart';
import 'package:twitch_client/twitch_client.dart';

class PredictionsRepositoryImpl implements PredictionRepository {
  static const String _path = 'predictions';

  final TwitchDataSource _twitchDataSource;

  PredictionsRepositoryImpl(this._twitchDataSource);

  @override
  Future<Either<Failure, PredictionResponse>> getPredictions(
      {required PredictionsProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path', queryParams: props.toJson());
      return Right(PredictionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, PredictionResponse>> createPrediction(
      {required CreatePredictionsProps props}) async {
    try {
      final response = await _twitchDataSource
          .post(path: '$_path', data: props.toJson(), queryParams: {});
      return Right(PredictionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, PredictionResponse>> endPrediction(
      {required EndPredictionProps props}) async {
    try {
      final response = await _twitchDataSource
          .patch(path: '$_path', data: props.toJson(), queryParams: {});
      return Right(PredictionResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }
}

abstract class PredictionRepository {
  Future<Either<Failure, PredictionResponse>> getPredictions(
      {required PredictionsProps props});

  Future<Either<Failure, PredictionResponse>> createPrediction(
      {required CreatePredictionsProps props});

  Future<Either<Failure, PredictionResponse>> endPrediction(
      {required EndPredictionProps props});
}
