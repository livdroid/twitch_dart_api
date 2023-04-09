import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/channel_repository.dart';
import 'package:twitch_client/twitch_client.dart';

import '../../json/asset_reader.dart';
import 'channel_repository_test.mocks.dart';

@GenerateNiceMocks([MockSpec<TwitchDataSource>()])
void main() {
  const String path = 'channels';
  final mockedDataSource = MockTwitchDataSource();
  final interface =
      ChannelInterfaceImpl('token', 'clientid', dataSource: mockedDataSource);

  group('getChannelInformation', () {
    const props = BroadcasterProps(broadcasterId: '12345');
    String apiResponse = assetReader('response_get_channel_information.json');

    test('On success', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result = await interface.getChannelInformation(props: props);

      verify(mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(
          () => interface.getChannelInformation(
              props: const BroadcasterProps(broadcasterId: '')),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: path,
          queryParams: const BroadcasterProps(broadcasterId: '').toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.get(path: path, queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await interface.getChannelInformation(props: props);

      verify(mockedDataSource.get(path: path, queryParams: props.toJson()));
      expect(result.isLeft(), true);
    });
  });

  group('modifyChannelInformation', () {
    const broadcasterProps = BroadcasterProps(broadcasterId: '12345');
    final modifyChannelInformationProps = ModifyChannelInformationProp(
        title: 'hello', broadcasterLanguage: 'de', gameId: '000');

    test('On success', () async {
      when(mockedDataSource.patch(
              path: path,
              queryParams: broadcasterProps.toJson(),
              data: modifyChannelInformationProps.toJson()))
          .thenAnswer((realInvocation) async => {});

      final result = await interface.modifyChannelInformation(
          broadcasterProps: broadcasterProps,
          modifyChannelInformationProps: modifyChannelInformationProps);

      verify(mockedDataSource.patch(
          path: path,
          queryParams: broadcasterProps.toJson(),
          data: modifyChannelInformationProps.toJson()));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.patch(
              path: path,
              queryParams: broadcasterProps.toJson(),
              data: modifyChannelInformationProps.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(''));

      expect(
          () => interface.modifyChannelInformation(
              modifyChannelInformationProps: ModifyChannelInformationProp(
                  gameId: '', title: '', broadcasterLanguage: ''),
              broadcasterProps: const BroadcasterProps(broadcasterId: '')),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: path,
          queryParams: const BroadcasterProps(broadcasterId: '').toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.patch(
              path: path,
              queryParams: broadcasterProps.toJson(),
              data: modifyChannelInformationProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await interface.modifyChannelInformation(
          modifyChannelInformationProps: modifyChannelInformationProps,
          broadcasterProps: broadcasterProps);

      verify(mockedDataSource.patch(
          path: path,
          queryParams: broadcasterProps.toJson(),
          data: modifyChannelInformationProps.toJson()));

      expect(result.isLeft(), true);
    });
  });

  group('getChannelEditors', () {
    const broadcasterProps = BroadcasterProps(broadcasterId: '12345');
    const emptyBroadcasterProps = BroadcasterProps(broadcasterId: '');
    String apiResponse = assetReader('response_get_channel_editors.json');

    test('On success', () async {
      when(mockedDataSource.get(
              path: '$path/editors', queryParams: broadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result =
          await interface.getChannelEditors(broadcasterProps: broadcasterProps);

      verify(mockedDataSource.get(
          path: '$path/editors', queryParams: broadcasterProps.toJson()));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.get(
              path: '$path/editors',
              queryParams: emptyBroadcasterProps.toJson()))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(
          () => interface.getChannelEditors(
              broadcasterProps: const BroadcasterProps(broadcasterId: '')),
          throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: '$path/editors',
          queryParams: const BroadcasterProps(broadcasterId: '').toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.get(
              path: '$path/editors', queryParams: broadcasterProps.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await interface.getChannelEditors(broadcasterProps: broadcasterProps);

      verify(mockedDataSource.get(
          path: '$path/editors', queryParams: broadcasterProps.toJson()));

      expect(result.isLeft(), true);
    });
  });

  group('startCommercial', () {
    const props = StartCommercialProps(broadcasterId: '1234', length: 30);
    const emptyProps = StartCommercialProps(broadcasterId: '', length: 0);
    const tooLongProps =
        StartCommercialProps(broadcasterId: '2333', length: 2000);
    String apiResponse = assetReader('response_start_commercial.json');

    test('On success', () async {
      when(mockedDataSource.post(
              path: '$path/commercial', data: props.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      final result =
          await interface.startCommercial(startCommercialProps: props);

      verify(mockedDataSource.post(
          path: '$path/commercial', data: props.toJson(), queryParams: {}));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.post(
              path: '$path/commercial',
              data: emptyProps.toJson(),
              queryParams: {}))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(() => interface.startCommercial(startCommercialProps: emptyProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.post(
          path: '$path/commercial',
          data: emptyProps.toJson(),
          queryParams: {}));
    });

    test('On length too long props', () async {
      when(mockedDataSource.post(
              path: '$path/commercial',
              data: tooLongProps.toJson(),
              queryParams: {}))
          .thenAnswer((realInvocation) async => jsonDecode(apiResponse));

      expect(
          () => interface.startCommercial(startCommercialProps: tooLongProps),
          throwsAssertionError);

      verifyNever(mockedDataSource.post(
          path: '$path/commercial',
          data: tooLongProps.toJson(),
          queryParams: {}));
    });

    test('On failure', () async {
      when(mockedDataSource.post(
              path: '$path/commercial', data: props.toJson(), queryParams: {}))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result =
          await interface.startCommercial(startCommercialProps: props);

      verify(mockedDataSource.post(
          path: '$path/commercial', data: props.toJson(), queryParams: {}));

      expect(result.isLeft(), true);
    });
  });

  group('getVips', () {
    const BroadcasterProps emptyProps = BroadcasterProps(broadcasterId: '');
    const BroadcasterProps props = BroadcasterProps(broadcasterId: '123');
    const ChannelVipsResponse response = ChannelVipsResponse(data: [
      ChannelVipsResponseData(userId: '123', userName: 'Joe', userLogin: 'joe')
    ], pagination: Pagination(cursor: '123'));

    test('On success', () async {
      when(mockedDataSource.get(
              path: '$path/vips', queryParams: props.toJson()))
          .thenAnswer((realInvocation) async => response.toJson());

      final result = await interface.getVIPs(props: props);

      verify(mockedDataSource.get(
          path: '$path/vips', queryParams: props.toJson()));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.post(
              path: '$path/vips', data: emptyProps.toJson(), queryParams: {}))
          .thenAnswer((realInvocation) async => response.toJson());

      expect(() => interface.getVIPs(props: emptyProps), throwsAssertionError);

      verifyNever(mockedDataSource.get(
          path: '$path/vips', queryParams: emptyProps.toJson()));
    });

    test('On failure', () async {
      when(mockedDataSource.get(
              path: '$path/vips', queryParams: props.toJson()))
          .thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await interface.getVIPs(props: props);

      verify(mockedDataSource.get(
          path: '$path/vips', queryParams: props.toJson()));

      expect(result.isLeft(), true);
    });
  });

  group('addVips', () {
    const AddVipProps emptyProps = AddVipProps(broadcasterId: '', userId: '');
    const AddVipProps props = AddVipProps(broadcasterId: '123', userId: '123');

    test('On success', () async {
      when(mockedDataSource.post(
          path: '$path/vips',
          queryParams: props.toJson(),
          data: {})).thenAnswer((realInvocation) async => null);

      final result = await interface.addVip(props: props);

      verify(mockedDataSource
          .post(path: '$path/vips', queryParams: props.toJson(), data: {}));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.post(
          path: '$path/vips',
          queryParams: emptyProps.toJson(),
          data: {})).thenAnswer((realInvocation) async => null);

      expect(() => interface.addVip(props: emptyProps), throwsAssertionError);

      verifyNever(mockedDataSource.post(
          path: '$path/vips', queryParams: emptyProps.toJson(), data: {}));
    });

    test('On failure', () async {
      when(mockedDataSource.post(
          path: '$path/vips',
          queryParams: props.toJson(),
          data: {})).thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await interface.addVip(props: props);

      verify(mockedDataSource
          .post(path: '$path/vips', queryParams: props.toJson(), data: {}));

      expect(result.isLeft(), true);
    });
  });

  group('removeVips', () {
    const RemoveVipProps props =
        RemoveVipProps(broadcasterId: '123', userId: '123');
    const RemoveVipProps emptyProps =
        RemoveVipProps(broadcasterId: '', userId: '');

    test('On success', () async {
      when(mockedDataSource.delete(
          path: '$path/vips',
          queryParams: props.toJson(),
          data: {})).thenAnswer((realInvocation) async => null);

      final result = await interface.removeVip(props: props);

      verify(mockedDataSource
          .delete(path: '$path/vips', queryParams: props.toJson(), data: {}));

      expect(result.isRight(), true);
    });

    test('On empty props', () async {
      when(mockedDataSource.delete(
          path: '$path/vips',
          queryParams: emptyProps.toJson(),
          data: {})).thenAnswer((realInvocation) async => null);

      expect(
          () => interface.removeVip(props: emptyProps), throwsAssertionError);

      verifyNever(mockedDataSource.delete(
          path: '$path/vips', queryParams: emptyProps.toJson(), data: {}));
    });

    test('On failure', () async {
      when(mockedDataSource.delete(
          path: '$path/vips',
          queryParams: props.toJson(),
          data: {})).thenThrow(ForbiddenRequestException(message: 'message'));

      final result = await interface.removeVip(props: props);

      verify(mockedDataSource
          .delete(path: '$path/vips', queryParams: props.toJson(), data: {}));

      expect(result.isLeft(), true);
    });
  });
}
