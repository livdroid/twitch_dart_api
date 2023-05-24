import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/interface/clip_repository.dart';
import 'package:twitch_client/twitch_client.dart';

import '../../json/asset_reader.dart';
import 'analytics_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  late ClipRepository repository;
  late MockTwitchDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockTwitchDataSource();
    repository =
        ClipRepositoryImpl('token', 'clientId', dataSource: mockDataSource);
  });

  group('createClip', () {
    const props = CreateClipProps(broadcasterId: "123");
    final response = jsonDecode(assetReader('response_create_clip.json'));

    test('should return CreateClipResponse when the request is successful',
        () async {
      when(mockDataSource.post(
              path: anyNamed('path'),
              queryParams: anyNamed('queryParams'),
              data: anyNamed('data')))
          .thenAnswer((_) async => response);

      final result = await repository.createClip(props: props);

      expect(result, Right(CreateClipResponse.fromJson(response)));
    });

    test('should return Failure when the request fails', () async {
      when(mockDataSource.post(
              path: anyNamed('path'),
              queryParams: anyNamed('queryParams'),
              data: anyNamed('data')))
          .thenThrow(Exception('Something went wrong'));

      final result = await repository.createClip(props: props);

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<Exception>());
    });

    test('should throw AssertionError if broadcasterId is empty', () async {
      const invalidProps = CreateClipProps(broadcasterId: '');

      expect(() => repository.createClip(props: invalidProps),
          throwsA(isA<AssertionError>()));
    });
  });

  group('getClip', () {
    final props = GetClipsProps(broadcasterId: "123", gameId: "456", id: "789");
    final response = jsonDecode(assetReader('response_get_clips.json'));

    test('should return GetClipResponse when the request is successful',
        () async {
      when(mockDataSource.get(
              path: anyNamed('path'), queryParams: anyNamed('queryParams')))
          .thenAnswer((_) async => response);

      final result = await repository.getClips(props: props);

      expect(result, Right(GetClipsResponse.fromJson(response)));
    });

    test('should return Failure when the request fails', () async {
      when(mockDataSource.get(
              path: anyNamed('path'), queryParams: anyNamed('queryParams')))
          .thenThrow(Exception('Something went wrong'));

      final result = await repository.getClips(props: props);

      expect(result.isLeft(), true);
      expect(result.asLeft().exception, isA<Exception>());
    });
  });
}
