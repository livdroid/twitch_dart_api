import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/video_repository.dart';
import 'package:twitch_client/src/response/pagination_response.dart';
import 'package:twitch_client/twitch_client.dart';

import 'bits_repository_test.mocks.dart';

void main() {
  final mockTwitchDataSource = MockTwitchDataSource();
  final repository = VideoRepositoryImpl(mockTwitchDataSource);
  const String path = 'videos';
  VideoProps props = const VideoProps(id: '123');
  VideoResponse response = const VideoResponse(data: [], pagination: Pagination(cursor: '1'));

  group('getVideo', () {
    test('On success', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.getVideo(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.getVideo(props: props);

      verify(
          mockTwitchDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('deleteVideo', () {

    test('On success', () async {
      when(mockTwitchDataSource.delete(
          path: path, queryParams: props.toJson(), data: {}))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await repository.deleteVideo(props: props);

      verify(mockTwitchDataSource.delete(
          path: path, queryParams: props.toJson(), data: {}));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockTwitchDataSource.delete(
          path: path, queryParams: props.toJson(), data: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await repository.deleteVideo(props: props);

      verify(mockTwitchDataSource.delete(
          path: path, queryParams: props.toJson(), data: {}));
      expect(result.isLeft(), true);
    });
  });
}
