import 'package:dio/dio.dart';
import 'package:twitch_client/src/datasource/dio_logger.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/interface/analytics_repository.dart';
import 'package:twitch_client/src/interface/bits_repository.dart';
import 'package:twitch_client/src/interface/channel_repository.dart';
import 'package:twitch_client/src/interface/chat_repository.dart';
import 'package:twitch_client/src/interface/event_sub_repository.dart';
import 'package:twitch_client/src/interface/moderation_repository.dart';
import 'package:twitch_client/src/interface/polls_repository.dart';
import 'package:twitch_client/src/interface/predictions_repository.dart';
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/interface/user_repository.dart';
import 'package:twitch_client/src/interface/video_repository.dart';
import 'package:twitch_client/src/model/token_status.dart';
import 'package:twitch_client/src/response/validate_token_response.dart';
import 'package:twitch_client/src/utils/url_constants.dart';

/// This is the main object you will use to communicate with the Twitch API
class TwitchInterface {
  /// User the clientID you got from the Twitch developper console
  final String? clientId;

  /// User any URL you need, be sure to whitelist it on dev console
  final String? redirectionURL;

  /// Time in seconds before the attempt to connect is considered a failure
  final int? connectTimeout;

  /// Time in seconds before the attempt to receive response is considered a failure
  final int? receiveTimeout;

  /// Time in seconds before the attempt to send data is considered a failure
  final int? sendTimeout;

  /// Show logs of requests, careful it will be shown in production
  /// You can use kDebugMode if you want to show it only on debug build
  final bool showRequestLogs;

  /// Token retrieved from redirect url after user logged in
  String? accessToken;

  /// Everything related to Twitch Api's data
  late final TwitchApiDataSourceImpl _twitchApiDataSourceImpl;

  /// Everything related to user connection to the API
  late final TwitchApiDataSourceImpl _twitchIdDataSourceImpl;

  late BitsInterface? bitsInterface;
  late ChannelInterface? channelInterface;
  late ChatInterface? chatInterface;
  late ModerationInterface? moderationInterface;
  late EventSubInterface? eventSubInterface;
  late TokenInterface? tokenInterface;
  late UserInterface? userInterface;
  late VideoRepository? videoRepository;
  late AnalyticsRepository? analyticsRepository;
  late PollsRepository? pollsRepository;
  late PredictionRepository? predictionRepository;

  TwitchInterface(
      {required this.clientId,
      required this.redirectionURL,
      this.connectTimeout = 5000,
      this.receiveTimeout = 5000,
      this.sendTimeout = 5000,
      this.showRequestLogs = false,
      this.accessToken = ''})
      : _twitchApiDataSourceImpl = TwitchApiDataSourceImpl(
            dio: Dio(BaseOptions(
                baseUrl: UrlConstants.apiBaseUrl,
                connectTimeout: connectTimeout,
                receiveTimeout: receiveTimeout,
                sendTimeout: sendTimeout))),
        _twitchIdDataSourceImpl = TwitchApiDataSourceImpl(
            dio: Dio(BaseOptions(
                baseUrl: UrlConstants.idBaseUrl,
                connectTimeout: connectTimeout,
                receiveTimeout: receiveTimeout,
                sendTimeout: sendTimeout)));

  late ValidateTokenResponse tokenResponse;

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
  Future<bool> init({required String url}) async {
    assert(url.isNotEmpty);
    final userToken = _parseUrl(url: url);
    if (userToken.isEmpty) return false;
    _setTokenAndClient(token: userToken);
    _initRepos();
    return true;
  }

  /// Init all repos with your settings
  Future<void> _initRepos() async {
    // id.twitch.tv interfaces
    bitsInterface = BitsInterfaceImpl(_twitchApiDataSourceImpl);
    channelInterface = ChannelInterfaceImpl(_twitchApiDataSourceImpl);
    chatInterface = ChatInterfaceImpl(_twitchApiDataSourceImpl);
    moderationInterface = ModerationInterfaceImpl(_twitchApiDataSourceImpl);
    eventSubInterface = EventSubInterfaceImpl(_twitchApiDataSourceImpl);
    userInterface = UserRepositoryImpl(_twitchApiDataSourceImpl);
    videoRepository = VideoRepositoryImpl(_twitchApiDataSourceImpl);
    analyticsRepository = AnalyticsRepositoryImpl(_twitchApiDataSourceImpl);
    pollsRepository = PollsRepositoryImpl(_twitchApiDataSourceImpl);
    predictionRepository = PredictionsRepositoryImpl(_twitchApiDataSourceImpl);

    // api.twitch.tv interfaces
    tokenInterface = TokenInterfaceImpl(_twitchIdDataSourceImpl);
  }

  /// Verify the validity of the token, must be used hourly based on the
  /// Twitch api documentation
  /// [TokenStatus.invalid] you must make the user reconnect to get a valid
  /// token
  /// [TokenStatus.error] the api sent an error back but it's not related to
  /// the token validity
  /// [TokenStatus.unknown] other exception without context
  Future<TokenStatus> validateToken() async {
    final verify = await tokenInterface?.verifyToken();
    return verify!.fold((l) {
      if (l.exception is UnauthorizedException) {
        return TokenStatus.invalid;
      }
      return TokenStatus.error;
    }, (r) {
      tokenResponse = r;
      return TokenStatus.valid;
    });
  }

  /// Set up the [token] as Bearer token for the api calls
  void setAccessToken(String token) {
    assert(token.isNotEmpty);
    accessToken = token;
    _setTokenAndClient(token: token);
  }

  /// Initiate client to prepare repos
  void _setTokenAndClient({required String token}) {
    assert(token.isNotEmpty);
    accessToken = token;

    _twitchApiDataSourceImpl.dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
      'Client-Id': clientId
    };

    if (showRequestLogs) {
      if (!_twitchApiDataSourceImpl.dio.interceptors
          .contains(dioLoggerInterceptor)) {
        _twitchApiDataSourceImpl.dio.interceptors.add(dioLoggerInterceptor);
      }
    }

    _twitchIdDataSourceImpl.dio.options.headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/x-www-form-urlencoded'
    };

    if (showRequestLogs) {
      if (!_twitchIdDataSourceImpl.dio.interceptors
          .contains(dioLoggerInterceptor)) {
        _twitchIdDataSourceImpl.dio.interceptors.add(dioLoggerInterceptor);
      }
    }
  }

  /// Parse the url user was redirected to after loggin in to the
  /// Twitch Api
  String _parseUrl({required String url}) {
    var uri = Uri.parse(url);
    final frag = uri.fragment.split('&').toList();
    for (var element in frag) {
      if (element.contains('access_token')) {
        return element.split('=')[1];
      }
    }
    return '';
  }
}
