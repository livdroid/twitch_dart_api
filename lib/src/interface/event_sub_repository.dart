import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/failure.dart';
import 'package:twitch_client/src/props/create_event_sub_props.dart';
import 'package:twitch_client/src/props/get_event_subs_props.dart';
import 'package:twitch_client/src/response/event_sub_response.dart';
import 'package:twitch_client/src/response/ws_event_response.dart';
import 'package:twitch_client/twitch_client.dart';
import 'package:web_socket_channel/io.dart';

class EventSubInterfaceImpl implements EventSubInterface {
  static const String _path = 'eventsub/';

  final TwitchDataSource _twitchDataSource;

  EventSubInterfaceImpl(this._twitchDataSource);

  final StreamController<WSEventResponse> _controller =
      StreamController<WSEventResponse>.broadcast();
  Stream<WSEventResponse> get stream => _controller.stream;

  @override
  Future<Either<Failure, EventSubResponse>> createEventSubSubscription(
      {required CreateEventSubProps props}) async {
    try {
      final response = await _twitchDataSource.post(
          path: '$_path/subscriptions', queryParams: {}, data: props.toJson());
      return Right(EventSubResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, EventSubResponse>> getEventSubSubscriptions(
      {required GetEventSubProps props}) async {
    try {
      final response = await _twitchDataSource.get(
          path: '$_path/subscriptions', queryParams: props.toJson());
      return Right(EventSubResponse.fromJson(response ?? {}));
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteEventSubSubscriptions(
      {required GetEventSubProps props}) async {
    try {
      await _twitchDataSource.delete(
          path: '$_path/subscriptions', queryParams: props.toJson(), data: {});
      return Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Stream<WSEventResponse>> subscribeTo(
      {required String type, required String userId}) async {
    final channel = IOWebSocketChannel.connect(
        Uri.parse('wss://eventsub-beta.wss.twitch.tv/ws'));

    channel.stream.listen((message) async {
      print(message);
      final event = WSEventResponse.fromJson(jsonDecode(message));
      _controller.add(event);
    }).onData((data) async {
      final newEvent = WSEventResponse.fromJson(jsonDecode(data));
      _controller.add(newEvent);

      if (newEvent.payload?.session?.id?.isNotEmpty ?? false) {
        final response = await createEventSubSubscription(
            props: CreateEventSubProps(
                type: type,
                version: '1',
                condition: Condition(userId: userId),
                transport: Transport(
                    method: 'websocket',
                    sessionId: newEvent?.payload?.session?.id)));
      }
    });
    return stream;
  }
}

abstract class EventSubInterface {
  Future<Either<Failure, EventSubResponse>> createEventSubSubscription(
      {required CreateEventSubProps props});

  Future<Either<Failure, EventSubResponse>> getEventSubSubscriptions(
      {required GetEventSubProps props});

  Future<Either<Failure, bool>> deleteEventSubSubscriptions(
      {required GetEventSubProps props});

  Future<Stream<WSEventResponse>> subscribeTo(
      {required String type, required String userId});
}
