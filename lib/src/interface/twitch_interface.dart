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
import 'package:twitch_client/src/interface/token_repository.dart';
import 'package:twitch_client/src/model/token_status.dart';
import 'package:twitch_client/src/interface/user_repository.dart';
import 'package:twitch_client/src/interface/video_repository.dart';
import 'package:twitch_client/src/interface/polls_repository.dart';
import 'package:twitch_client/src/interface/predictions_repository.dart';
import 'package:twitch_client/src/response/validate_token_response.dart';
import 'package:twitch_client/src/utils/url_constants.dart';

class TwitchInterface {
  final String? clientId;
  final String? redirectionURL;
  final int? connectTimeout;
  final int? receiveTimeout;

  final int? sendTimeout;
  final bool showRequestLogs;
  String? accessToken;

  late final TwitchApiDataSourceImpl _twitchApiDataSourceImpl;
  late final TwitchApiDataSourceImpl _twitchIdDataSourceImpl;
  late BitsInterface? bitsInterface;
  ChannelInterface? channelInterface;
  ChatInterface? chatInterface;
  ModerationInterface? moderationInterface;
  EventSubInterface? eventSubInterface;
  TokenInterface? tokenInterface;
  UserInterface? userInterface;
  VideoRepository? videoRepository;
  AnalyticsRepository? analyticsRepository;
  PollsRepository? pollsRepository;
  PredictionRepository? predictionRepository;

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

  Future<void> init({required String url}) async {
    assert(url.isNotEmpty);
    final userToken = _parseUrl(url: url);
    _setTokenAndClient(token: userToken);
    _initRepos();
  }

  Future<void> _initRepos() async {
    // id.twitch.tv interfaces
    bitsInterface = BitsInterfaceImpl(_twitchApiDataSourceImpl);
    channelInterface = ChannelInterfaceImpl(_twitchApiDataSourceImpl);
    chatInterface = ChatInterfaceImpl(_twitchApiDataSourceImpl);
    moderationInterface = ModerationInterfaceImpl(_twitchApiDataSourceImpl);
    eventSubInterface = EventSubInterfaceImpl(_twitchApiDataSourceImpl);
    userInterface = UserInterfaceImpl(_twitchApiDataSourceImpl);
    videoRepository = VideoRepositoryImpl(_twitchApiDataSourceImpl);
    analyticsRepository = AnalyticsRepositoryImpl(_twitchApiDataSourceImpl);
    pollsRepository = PollsRepositoryImpl(_twitchApiDataSourceImpl);
    predictionRepository = PredictionsRepositoryImpl(_twitchApiDataSourceImpl);

    // api.twitch.tv interfaces
    tokenInterface = TokenInterfaceImpl(_twitchIdDataSourceImpl);
  }

  Future<TokenStatus> verifyToken() async {
    final verify = await tokenInterface?.verifyToken();
    verify?.fold((l) {
      if (l.exception is UnauthorizedException) {
        return TokenStatus.invalid;
      }
      return TokenStatus.error;
    }, (r) {
      tokenResponse = r;

      return TokenStatus.valid;
    });
    return TokenStatus.unknown;
  }

  void setAccessToken(String token) {
    assert(token.isNotEmpty);
    accessToken = token;

    _setTokenAndClient(token: token);
  }

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
