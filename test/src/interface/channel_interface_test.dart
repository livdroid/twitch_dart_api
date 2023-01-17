import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/channel_repository.dart';
import 'package:twitch_client/twitch_client.dart';

import '../../json/asset_reader.dart';
import 'channel_interface_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  const String _path = 'channels';
  final mockedDataSource = MockTwitchDataSource();
  final interface = ChannelInterfaceImpl(mockedDataSource);

  group('getChannelInformation', () {
    final props = BroadcasterProps(broadcasterId: '12345');
    String apiResponse = assetReader('response_get_channel_information.json');

    test('On success', () async {
      when(mockedDataSource.get(path: _path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result =
          await interface.getChannelInformation(props: props);

      verify(mockedDataSource.get(path: _path, queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.get(path: _path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(
          () => interface.getChannelInformation(
              props: BroadcasterProps(broadcasterId: '')),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: _path,
          queryParams: BroadcasterProps(broadcasterId: '').toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: _path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await interface.getChannelInformation(props: props);

      verify(mockedDataSource.get(path: _path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('modifyChannelInformation', () {
    final broadcasterProps = BroadcasterProps(broadcasterId: '12345');
    final modifyChannelInformationProps = ModifyChannelInformationProp(
        title: 'hello', broadcasterLanguage: 'de', gameId: '000');

    test('On success', () async {
      when(mockedDataSource.patch(
              path: _path,
              queryParams: broadcasterProps.toJson(),
              data: modifyChannelInformationProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      final result = await interface.modifyChannelInformation(
          broadcasterProps: broadcasterProps,
          modifyChannelInformationProps: modifyChannelInformationProps);

      verify(mockedDataSource.patch(
          path: _path,
          queryParams: broadcasterProps.toJson(),
          data: modifyChannelInformationProps.toJson()));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.patch(
              path: _path,
              queryParams: broadcasterProps.toJson(),
              data: modifyChannelInformationProps.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(''));

      expect(
          () => interface.modifyChannelInformation(
              modifyChannelInformationProps: ModifyChannelInformationProp(
                  gameId: '', title: '', broadcasterLanguage: ''),
              broadcasterProps: BroadcasterProps(broadcasterId: '')),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: _path,
          queryParams: BroadcasterProps(broadcasterId: '').toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.patch(
              path: _path,
              queryParams: broadcasterProps.toJson(),
              data: modifyChannelInformationProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await interface.modifyChannelInformation(
          modifyChannelInformationProps: modifyChannelInformationProps,
          broadcasterProps: broadcasterProps);

      verify(mockedDataSource.patch(
          path: _path,
          queryParams: broadcasterProps.toJson(),
          data: modifyChannelInformationProps.toJson()));

      expect(result.isLeft(), true);
    });
  });

  group('getChannelEditors', () {
    final broadcasterProps = BroadcasterProps(broadcasterId: '12345');
    final emptyBroadcasterProps = BroadcasterProps(broadcasterId: '');
    String apiResponse = assetReader('response_get_channel_editors.json');

    test('On success', () async {
      when(mockedDataSource.get(
              path: '$_path/editors', queryParams: broadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result =
          await interface.getChannelEditors(broadcasterProps: broadcasterProps);

      verify(mockedDataSource.get(
          path: '$_path/editors', queryParams: broadcasterProps.toJson()));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.get(
              path: '$_path/editors',
              queryParams: emptyBroadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(
          () => interface.getChannelEditors(
              broadcasterProps: BroadcasterProps(broadcasterId: '')),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: '$_path/editors',
          queryParams: BroadcasterProps(broadcasterId: '').toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.get(
              path: '$_path/editors', queryParams: broadcasterProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await interface.getChannelEditors(broadcasterProps: broadcasterProps);

      verify(mockedDataSource.get(
          path: '$_path/editors', queryParams: broadcasterProps.toJson()));

      expect(result.isLeft(), true);
    });
  });

  group('startCommercial', () {
    final props = StartCommercialProps(broadcasterId: '1234', length: 30);
    final emptyProps = StartCommercialProps(broadcasterId: '', length: 0);
    final tooLongProps =
        StartCommercialProps(broadcasterId: '2333', length: 2000);
    String apiResponse = assetReader('response_start_commercial.json');

    test('On success', () async {
      when(mockedDataSource.post(
              path: '$_path/commercial', data: props.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result =
          await interface.startCommercial(startCommercialProps: props);

      verify(mockedDataSource.post(
          path: '$_path/commercial', data: props.toJson(), queryParams: {}));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.post(
              path: '$_path/commercial',
              data: emptyProps.toJson(),
              queryParams: {}))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(() => interface.startCommercial(startCommercialProps: emptyProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.post(
          path: '$_path/commercial',
          data: emptyProps.toJson(),
          queryParams: {}));
    });

    test('On too length too long props', () async {
      when(mockedDataSource.post(
              path: '$_path/commercial',
              data: tooLongProps.toJson(),
              queryParams: {}))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(
          () => interface.startCommercial(startCommercialProps: tooLongProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.post(
          path: '$_path/commercial',
          data: tooLongProps.toJson(),
          queryParams: {}));
    });

    test('On failure', () async {
      when(mockedDataSource.post(
              path: '$_path/commercial', data: props.toJson(), queryParams: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await interface.startCommercial(startCommercialProps: props);

      verify(mockedDataSource.post(
          path: '$_path/commercial', data: props.toJson(), queryParams: {}));

      expect(result.isLeft(), true);
    });
  });
}
