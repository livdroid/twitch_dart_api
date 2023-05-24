import 'dart:convert';

import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/bits_repository.dart';
import 'package:twitch_client/src/props/bits_leaderboard_props.dart';
import 'package:twitch_client/src/props/cheermotes_props.dart';

import '../../json/asset_reader.dart';
import 'bits_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  final mockedDataSource = MockTwitchDataSource();
  final bitsInterface =
      BitsInterfaceImpl('token', 'clientid', dataSource: mockedDataSource);

  group('getBitsLeaderBoard', () {
    const props = BitsLeaderBoardProps();
    const String path = 'bits';
    String apiResponse = assetReader('response_bitsleaderboard.json');

    test('On success', () async {
      when(mockedDataSource.get(
              path: '$path/leaderboard', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result = await bitsInterface.getBitsLeaderBoard(props: props);

      verify(mockedDataSource.get(
          path: '$path/leaderboard', queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.get(
              path: '$path/leaderboard', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await bitsInterface.getBitsLeaderBoard(props: props);

      verify(mockedDataSource.get(
          path: '$path/leaderboard', queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('getCheermotes', () {
    const props = CheermotesProps(broadcasterId: '123');
    const String path = 'bits';
    String apiResponse = assetReader('response_cheermotes.json');

    test('On success', () async {
      when(mockedDataSource.get(
              path: '$path/cheermotes', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result = await bitsInterface.getCheermotes(props: props);

      verify(mockedDataSource.get(
          path: '$path/cheermotes', queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On failure', () async {
      when(mockedDataSource.get(
              path: '$path/cheermotes', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await bitsInterface.getCheermotes(props: props);

      verify(mockedDataSource.get(
          path: '$path/cheermotes', queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });
}
