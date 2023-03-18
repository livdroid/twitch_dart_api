import 'package:twitch_client/src/interface/analytics_repository.dart';
import 'package:twitch_client/src/interface/bits_repository.dart';
import 'package:twitch_client/src/interface/channel_points_respository.dart';
import 'package:twitch_client/src/interface/channel_repository.dart';
import 'package:twitch_client/src/interface/chat_repository.dart';
import 'package:twitch_client/src/interface/event_sub_repository.dart';
import 'package:twitch_client/src/interface/moderation_repository.dart';
import 'package:twitch_client/src/interface/polls_repository.dart';
import 'package:twitch_client/src/interface/predictions_repository.dart';
import 'package:twitch_client/src/interface/stream_repository.dart';
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/interface/user_repository.dart';
import 'package:twitch_client/src/interface/video_repository.dart';

abstract class TwitchRepositories {
  factory TwitchRepositories(
          {required String token, required String clientId}) =>
      _TwitchRepositoriesImpl(token, clientId);

  TwitchRepositories get twitchRepositories;

  BitsInterface get bitsRepository;

  ChannelInterface get channelRepository;

  ChatInterface get chatRepository;

  ModerationInterface get moderationRepository;

  TokenInterface get tokenRepository;

  UserInterface get userRepository;

  VideoRepository get videoRepository;

  AnalyticsRepository get analyticsRepository;

  PollsRepository get pollsRepository;

  PredictionRepository get predictionRepository;

  EventSubInterface get eventRepository;

  ChannelPointsRepository get channelPointsRepository;

  StreamsRepository get streamsRepository;
}

class _TwitchRepositoriesImpl implements TwitchRepositories {
  _TwitchRepositoriesImpl(String token, String clientId)
      : analyticsRepository = AnalyticsRepositoryImpl(token, clientId),
        bitsRepository = BitsInterfaceImpl(token, clientId),
        channelRepository = ChannelInterfaceImpl(token, clientId),
        chatRepository = ChatInterfaceImpl(token, clientId),
        moderationRepository = ModerationInterfaceImpl(token, clientId),
        pollsRepository = PollsRepositoryImpl(token, clientId),
        predictionRepository = PredictionsRepositoryImpl(token, clientId),
        tokenRepository = TokenInterfaceImpl(token, clientId),
        userRepository = UserRepositoryImpl(token, clientId),
        videoRepository = VideoRepositoryImpl(token, clientId),
        eventRepository = EventSubInterfaceImpl(token, clientId),
        channelPointsRepository = ChannelPointsRepositoryImpl(token, clientId),
        streamsRepository = StreamsRepositoryImpl(token, clientId);

  @override
  final AnalyticsRepository analyticsRepository;

  @override
  final BitsInterface bitsRepository;

  @override
  final ChannelInterface channelRepository;

  @override
  final ChatInterface chatRepository;

  @override
  final ModerationInterface moderationRepository;

  @override
  final PollsRepository pollsRepository;

  @override
  final PredictionRepository predictionRepository;

  @override
  final TokenInterface tokenRepository;

  @override
  final UserInterface userRepository;

  @override
  final VideoRepository videoRepository;

  @override
  final EventSubInterface eventRepository;

  @override
  TwitchRepositories get twitchRepositories => this;

  @override
  final ChannelPointsRepository channelPointsRepository;

  @override
  final StreamsRepository streamsRepository;
}
