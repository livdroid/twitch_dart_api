import 'package:twitch_client/src/interface/analytics_repository.dart';
import 'package:twitch_client/src/interface/bits_repository.dart';
import 'package:twitch_client/src/interface/channel_points_respository.dart';
import 'package:twitch_client/src/interface/channel_repository.dart';
import 'package:twitch_client/src/interface/chat_repository.dart';
import 'package:twitch_client/src/interface/clip_repository.dart';
import 'package:twitch_client/src/interface/event_sub_repository.dart';
import 'package:twitch_client/src/interface/games_repository.dart';
import 'package:twitch_client/src/interface/moderation_repository.dart';
import 'package:twitch_client/src/interface/polls_repository.dart';
import 'package:twitch_client/src/interface/predictions_repository.dart';
import 'package:twitch_client/src/interface/raid_repository.dart';
import 'package:twitch_client/src/interface/stream_repository.dart';
import 'package:twitch_client/src/interface/subscription_repository.dart';
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/interface/user_repository.dart';
import 'package:twitch_client/src/interface/video_repository.dart';

/// The abstract class representing the collection of Twitch repositories.
///
/// This class provides access to various repositories that interact with different Twitch API endpoints
/// for performing operations related to analytics, bits, channels, chat, moderation, polls, predictions,
/// streams, subscriptions, tokens, users, videos, event subscriptions, channel points, and clips.
///
/// To create an instance of this class, use the [TwitchRepositories] factory constructor,
/// providing the required `token` and `clientId` parameters.
abstract class TwitchRepositories {
  /// Creates an instance of [TwitchRepositories].
  ///
  /// The `token` parameter is the Twitch OAuth token used for authentication.
  ///
  /// The `clientId` parameter is the Twitch application client ID associated with the token.
  factory TwitchRepositories({
    required String token,
    required String clientId,
  }) =>
      _TwitchRepositoriesImpl(token, clientId);

  /// Provides access to the collection of Twitch repositories.
  TwitchRepositories get twitchRepositories;

  /// The repository for interacting with Twitch Bits-related API endpoints.
  BitsInterface get bitsRepository;

  /// The repository for interacting with Twitch channel-related API endpoints.
  ChannelInterface get channelRepository;

  /// The repository for interacting with Twitch chat-related API endpoints.
  ChatInterface get chatRepository;

  /// The repository for interacting with Twitch moderation-related API endpoints.
  ModerationInterface get moderationRepository;

  /// The repository for interacting with Twitch token-related API endpoints.
  TokenInterface get tokenRepository;

  /// The repository for interacting with Twitch user-related API endpoints.
  UserInterface get userRepository;

  /// The repository for interacting with Twitch video-related API endpoints.
  VideoRepository get videoRepository;

  /// The repository for interacting with Twitch analytics-related API endpoints.
  AnalyticsRepository get analyticsRepository;

  /// The repository for interacting with Twitch polls-related API endpoints.
  PollsRepository get pollsRepository;

  /// The repository for interacting with Twitch predictions-related API endpoints.
  PredictionRepository get predictionRepository;

  /// The repository for interacting with Twitch event subscription-related API endpoints.
  EventSubInterface get eventRepository;

  /// The repository for interacting with Twitch channel points-related API endpoints.
  ChannelPointsRepository get channelPointsRepository;

  /// The repository for interacting with Twitch stream-related API endpoints.
  StreamsRepository get streamsRepository;

  /// The repository for interacting with Twitch clip-related API endpoints.
  ClipRepository get clipRepository;

  /// The repository for interacting with Twitch subscription-related API endpoints.
  SubscriptionRepository get subscriptionRepository;

  /// The repository for interacting with Twitch raid-related API endpoints.
  RaidRepository get raidRepository;

  /// The repository for interacting with Twitch games-related API endpoints.
  GamesRepository get gamesRepository;
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
        streamsRepository = StreamsRepositoryImpl(token, clientId),
        clipRepository = ClipRepositoryImpl(token, clientId),
        subscriptionRepository = SubscriptionRepositoryImpl(token, clientId),
        gamesRepository = GamesRepositoryImpl(token, clientId),
        raidRepository = RaidRepositoryImpl(token, clientId);

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

  @override
  final ClipRepository clipRepository;

  @override
  final SubscriptionRepository subscriptionRepository;

  @override
  final RaidRepository raidRepository;

  @override
  final GamesRepository  gamesRepository;
}
