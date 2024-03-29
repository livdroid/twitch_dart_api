import 'package:twitch_client/src/error/exceptions.dart';
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
import 'package:twitch_client/src/interface/twitch_repositories.dart';
import 'package:twitch_client/src/interface/user_repository.dart';
import 'package:twitch_client/src/interface/video_repository.dart';
import 'package:twitch_client/src/model/token_status.dart';
import 'package:twitch_client/src/response/validate_token_response.dart';
import 'package:twitch_client/src/utils/url_constants.dart';

/// This is the main object you will use to communicate with the Twitch API
class TwitchInterface {
  /// User the clientID you got from the Twitch developper console
  final String clientId;

  /// User any URL you need, be sure to whitelist it on dev console
  final String? redirectionURL;

  /// Token retrieved from redirect url after user logged in
  String? accessToken;

  /// User token data
  ValidateTokenResponse? tokenResponse;

  String get userId => tokenResponse?.userId ?? '';

  /// Access all requests
  late TwitchRepositories twitchRepositories;

  BitsInterface get bits => twitchRepositories.bitsRepository;

  ChannelInterface get channel => twitchRepositories.channelRepository;

  ChatInterface get chat => twitchRepositories.chatRepository;

  ModerationInterface get moderation => twitchRepositories.moderationRepository;

  TokenInterface get token => twitchRepositories.tokenRepository;

  UserInterface get user => twitchRepositories.userRepository;

  VideoRepository get video => twitchRepositories.videoRepository;

  AnalyticsRepository get analytics => twitchRepositories.analyticsRepository;

  PollsRepository get polls => twitchRepositories.pollsRepository;

  PredictionRepository get prediction =>
      twitchRepositories.predictionRepository;

  EventSubInterface get event => twitchRepositories.eventRepository;

  ChannelPointsRepository get channelPoints =>
      twitchRepositories.channelPointsRepository;

  StreamsRepository get streamsRepository =>
      twitchRepositories.streamsRepository;

  ClipRepository get clip => twitchRepositories.clipRepository;

  SubscriptionRepository get subscription =>
      twitchRepositories.subscriptionRepository;

  RaidRepository get raid => twitchRepositories.raidRepository;

  GamesRepository get games => twitchRepositories.gamesRepository;

  TwitchInterface(
      {required this.clientId,
      required this.redirectionURL,
      this.accessToken = ''});

  /// Create a URL with the given scopes
  /// First, call this method and use the Uri in webview or open in browser
  Uri getConnectionUrl({required List<String> scopes}) {
    assert(scopes.isNotEmpty);

    final queryScopes = scopes.join(' ');
    const authority = UrlConstants.connectAuthority;
    const path = UrlConstants.connectPath;
    final params = {
      'response_type': 'token',
      'client_id': clientId,
      'redirect_uri': redirectionURL,
      'scope': queryScopes,
    };
    return Uri.https(authority, path, params);
  }

  /// Init all repos with data retrieved from givenUrl
  /// Call this after getConnectionURL
  /// Give the url the user was redirected to after loggin in
  /// After this, user is considered logged in and repos can be called
  /// You can save the redirected url and use this method when user
  /// comes back to the app
  /// returns false if there was an issue parsing the URL
  Future<bool> init({String url = ''}) async {
    String userToken = accessToken ?? '';
    if (url.isNotEmpty) {
      userToken = parseUrl(url: url);
    }
    if (userToken.isEmpty) return false;
    _setTokenAndClient(token: userToken);
    await validateToken();
    return true;
  }

  /// Verify the validity of the token, must be used hourly based on the
  /// Twitch api documentation
  /// [TokenStatus.invalid] you must make the user reconnect to get a valid
  /// token
  /// [TokenStatus.error] the api sent an error back but it's not related to
  /// the token validity
  /// [TokenStatus.unknown] other exception without context
  Future<TokenStatus> validateToken() async {
    final verify = await token.verifyToken();
    return verify.fold((l) {
      if (l.exception is UnauthorizedException) {
        return TokenStatus.invalid;
      }
      return TokenStatus.error;
    }, (r) {
      tokenResponse = r;
      return TokenStatus.valid;
    });
  }

  /// Initiate client to prepare repos
  void _setTokenAndClient({required String token}) {
    accessToken = token;
    twitchRepositories = TwitchRepositories(token: token, clientId: clientId);
  }

  /// Parses the URL and returns the access token if it exists in the URL fragment.
  ///
  /// Throws a [FormatException] if the [url] parameter is not a valid URL string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// String url = 'https://example.com/#access_token=abc123&expires_in=3600';
  /// String token = _parseUrl(url: url);
  /// print(token); // 'abc123'
  /// ```
  ///
  /// Returns an empty string if the access token is not found in the URL fragment.
  String parseUrl({required String url}) {
    try {
      final uri = Uri.parse(url);
      final fragment = uri.fragment;
      if (fragment.isEmpty) return '';
      final params = Uri.splitQueryString(fragment);
      final token = params['access_token'];
      return token != null ? Uri.decodeComponent(token) : '';
    } on Exception {
      return '';
    }
  }
}
