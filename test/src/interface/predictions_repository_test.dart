import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/predictions_repository.dart';
import 'package:twitch_client/src/response/polls_response.dart';
import 'package:twitch_client/src/response/prediction_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'analytics_repository_test.mocks.dart';

void main() {
  final mockTwitchDataSource = MockTwitchDataSource();
  final repository = PredictionsRepositoryImpl(mockTwitchDataSource);
  PredictionResponse response = PredictionResponse();
  const String _path = 'predictions';

  group('getPredictions', () {
    PredictionsProps props = PredictionsProps(broadcasterId: '123');

    test('On success', () async {
      when(mockTwitchDataSource.get(path: _path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getPredictions(props: props);

      verify(
          mockTwitchDataSource.get(path: _path, queryParams: props.toJson()));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<PredictionResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(path: _path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getPredictions(props: props);

      verify(
          mockTwitchDataSource.get(path: _path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('createPrediction', () {
    CreatePredictionsProps props = CreatePredictionsProps(
        broadcasterId: '123', title: 'title', outcomes: [], predictionWindow: 1);

    test('On success', () async {
      when(mockTwitchDataSource
          .post(path: _path, data: props.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.createPrediction(props: props);

      verify(mockTwitchDataSource
          .post(path: _path, data: props.toJson(), queryParams: {}));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<PredictionResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource
          .post(path: _path, data: props.toJson(), queryParams: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.createPrediction(props: props);

      verify(mockTwitchDataSource
          .post(path: _path, data: props.toJson(), queryParams: {}));
      expect(result.isLeft(), true);
    });
  });

  group('endPrediction', () {
    EndPredictionProps props =
    EndPredictionProps(broadcasterId: '123', id: '1', status: 'terminated');
    PollsResponse response = const PollsResponse();

    test('On success', () async {
      when(mockTwitchDataSource
          .patch(path: _path, data: props.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.endPrediction(props: props);

      verify(mockTwitchDataSource
          .patch(path: _path, data: props.toJson(), queryParams: {}));
      expect(result.isRight(), true);
      expect(result.asRight(), isA<PredictionResponse>());
    });

    test('On failure', () async {
      when(mockTwitchDataSource
          .patch(path: _path, data: props.toJson(), queryParams: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.endPrediction(props: props);

      verify(mockTwitchDataSource
          .patch(path: _path, data: props.toJson(), queryParams: {}));
      expect(result.isLeft(), true);
    });
  });
}
