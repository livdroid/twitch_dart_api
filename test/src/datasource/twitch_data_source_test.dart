import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/utils/url_constants.dart';
import 'package:twitch_client/twitch_client.dart';

import '../../json/asset_reader.dart';

void main() {
  const String _baseURL = UrlConstants.apiBaseUrl;
  const String _fakeClientId = '123';
  const String _fakeToken = '123';

  final _dio = Dio(BaseOptions(
      baseUrl: _baseURL, connectTimeout: 5, receiveTimeout: 5, sendTimeout: 5));

  final _dioAdapter = DioAdapter(dio: _dio);
  _dio.httpClientAdapter = _dioAdapter;

  late TwitchApiDataSourceImpl datasource;

  setUp(() {
    datasource = TwitchApiDataSourceImpl(dio: _dio);
    _dio.options.headers = {
      'Authorization': 'Bearer $_fakeToken',
      'Client-Id': _fakeClientId
    };
  });

  group('Twitch Data Source - GET', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$_baseURL$path';

    test('Call is successfull an return a value', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.get(
          path: fullPath, queryParams: BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.reply(204, true),
      );

      final response = await datasource.get(
          path: fullPath, queryParams: BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      _dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - POST', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$_baseURL$path';

    test('Call is successfull an return a value', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.post(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.post(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      _dioAdapter.onPost(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - DELETE', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$_baseURL$path';

    test('Call is successfull an return a value', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.delete(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.delete(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An unknown error 500 was returned', () async {
      _dioAdapter.onDelete(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - PATCH', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$_baseURL$path';

    test('Call is successfull an return a value', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.patch(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.patch(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      _dioAdapter.onPatch(
        fullPath,
        data: BitsLeaderBoardProps().toJson(),
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - PUT', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$_baseURL$path';

    test('Call is successfull an return a value', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.put(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: {});

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.put(
          path: fullPath,
          queryParams: BitsLeaderBoardProps().toJson(),
          data: {});

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      _dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: _baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: _baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<ServerException>()),
      );
    });
  });
}
