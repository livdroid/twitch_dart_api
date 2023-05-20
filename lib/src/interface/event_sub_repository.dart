import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/twitch_client.dart';
import 'package:web_socket_channel/io.dart';

/// The implementation of the EventSubInterface.
///
/// This class provides methods to interact with the Twitch EventSub API,
/// allowing you to create and manage event subscriptions, as well as listen for incoming events.
class EventSubInterfaceImpl implements EventSubInterface {
  static const String _path = 'eventsub';

  final TwitchDataSource _twitchDataSource;

  EventSubInterfaceImpl(String token, String clientId,
      {TwitchDataSource? dataSource})
      : _twitchDataSource =
      dataSource ?? TwitchApiDataSourceImpl(token, clientId);

  final StreamController<dynamic> _controller =
  StreamController<dynamic>.broadcast();

  /// The stream that broadcasts incoming events.
  Stream<dynamic> get stream => _controller.stream;

  /// Create an EventSub subscription.
  ///
  /// The [props] parameter contains the properties required to create the event subscription.
  /// Returns a [Future] that either yields a [Right] containing the [EventSubResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Get EventSub subscriptions.
  ///
  /// The [props] parameter contains the properties required to fetch event subscriptions.
  /// Returns a [Future] that either yields a [Right] containing the [EventSubResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Delete EventSub subscriptions.
  ///
  /// The [props] parameter contains the properties required to delete event subscriptions.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
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

  /// Subscribe to events of a specific type for a user.
  ///
  /// The [type] parameter specifies the type of event to subscribe to.
  /// The [userId] parameter specifies the ID of the user to subscribe to.
  /// Returns a [Stream] that broadcasts incoming events.
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

/// The contract for the EventSubInterface.
///
/// This abstract class defines the methods to interact with the Twitch EventSub API,
/// allowing you to create and manage event subscriptions, as well as listen for incoming events.
abstract class EventSubInterface {
  /// Create an EventSub subscription.
  ///
  /// The [props] parameter contains the properties required to create the event subscription.
  /// Returns a [Future] that either yields a [Right] containing the [EventSubResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, EventSubResponse>> createEventSubSubscription(
      {required CreateEventSubProps props});

  /// Get EventSub subscriptions.
  ///
  /// The [props] parameter contains the properties required to fetch event subscriptions.
  /// Returns a [Future] that either yields a [Right] containing the [EventSubResponse] on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, EventSubResponse>> getEventSubSubscriptions(
      {required GetEventSubProps props});

  /// Delete EventSub subscriptions.
  ///
  /// The [props] parameter contains the properties required to delete event subscriptions.
  /// Returns a [Future] that either yields a [Right] containing `true` on success,
  /// or a [Left] containing a [Failure] on failure.
  Future<Either<Failure, bool>> deleteEventSubSubscriptions(
      {required GetEventSubProps props});

  /// Subscribe to events of a specific type for a user.
  ///
  /// The [type] parameter specifies the type of event to subscribe to.
  /// The [userId] parameter specifies the ID of the user to subscribe to.
  /// Returns a [Stream] that broadcasts incoming events.
  Future<Stream<dynamic>> subscribeTo(
      {required String type, required String userId});
}
