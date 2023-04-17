import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';
import 'package:web_socket_channel/io.dart';

class EventSubInterfaceImpl implements EventSubInterface {
  static const String _path = 'eventsub';

  final TwitchDataSource _twitchDataSource;

  EventSubInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
            dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  final StreamController<dynamic> _controller =
      StreamController<dynamic>.broadcast();

  Stream<dynamic> get stream => _controller.stream;

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
      return const Right(true);
    } on Exception catch (e) {
      return Left(Failure(e));
    }
  }

  @override
  Future<Stream<dynamic>> subscribeTo(
      {required String type, required String userId}) async {
    final channel =
        IOWebSocketChannel.connect(Uri.parse('wss://eventsub.wss.twitch.tv/ws'));
    channel.stream.listen((message) async {
      print('message');
    }).onData((eventData) async {
      final newEvent = WSEventResponse.fromJson(jsonDecode(eventData));
      if (newEvent.payload?.session?.id?.isNotEmpty ?? false) {
        /// Connect Event
        await createEventSubSubscription(
            props: CreateEventSubProps(
                type: type,
                version: '1',
                condition: Condition(userId: userId),
                transport: Transport(
                    method: 'websocket',
                    sessionId: newEvent.payload?.session?.id)));
      } else {
        final eventD = jsonDecode(eventData);
        if (eventD['metadata']['message_type'] == 'session_keepalive') {
          /// KeepAlive Event
          /// TODO : Do something with it
        } else {
          /// Notification Event
          final data = eventD['payload']['event'];
          final event = Event.fromJson(data);
          final cat = TwitchSubscriptionType.allSubscriptions.singleWhere(
              (element) => element == eventD['metadata']['subscription_type'],
              orElse: () => '');
          final subEvent =
              SubscriptionEvent(subscriptionType: cat, event: event);
          _controller.add(subEvent);
        }
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

  Future<Stream<dynamic>> subscribeTo(
      {required String type, required String userId});
}
