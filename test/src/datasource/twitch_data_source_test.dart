import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:twitch_client/src/datasource/twitch_data_source.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/utils/url_constants.dart';
import 'package:twitch_client/twitch_client.dart';

import '../../json/asset_reader.dart';

void main() {
  const String baseURL = UrlConstants.apiBaseUrl;

  final dio = Dio(BaseOptions(
      baseUrl: baseURL, connectTimeout: 5, receiveTimeout: 5, sendTimeout: 5));

  final dioAdapter = DioAdapter(dio: dio);
  dio.httpClientAdapter = dioAdapter;

  late TwitchApiDataSourceImpl datasource;

  setUp(() {
    datasource = TwitchApiDataSourceImpl('token', 'clientId', dioClient: dio);
  });

  group('Twitch Data Source - GET', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$baseURL$path';

    test('Call is successfull an return a value', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.get(
          path: fullPath, queryParams: const BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.reply(204, true),
      );

      final response = await datasource.get(
          path: fullPath, queryParams: const BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      dioAdapter.onGet(
        fullPath,
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.get(
            path: fullPath, queryParams: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - POST', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$baseURL$path';

    test('Call is successfull an return a value', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.post(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: const BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.post(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: const BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      dioAdapter.onPost(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.post(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - DELETE', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$baseURL$path';

    test('Call is successfull an return a value', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.delete(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: const BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.delete(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: const BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An unknown error 500 was returned', () async {
      dioAdapter.onDelete(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.delete(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - PATCH', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$baseURL$path';

    test('Call is successfull an return a value', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.patch(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: const BitsLeaderBoardProps().toJson());

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.patch(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: const BitsLeaderBoardProps().toJson());

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      dioAdapter.onPatch(
        fullPath,
        data: const BitsLeaderBoardProps().toJson(),
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.patch(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: const BitsLeaderBoardProps().toJson()),
        throwsA(isA<ServerException>()),
      );
    });
  });

  group('Twitch Data Source - PUT', () {
    final apiResponse = assetReader('response_bitsleaderboard.json');
    const path = 'bits/leaderboard';
    String fullPath = '$baseURL$path';

    test('Call is successfull an return a value', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(200, apiResponse),
      );

      final response = await datasource.put(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: {});

      expect(response, apiResponse);
    });

    test('Call is successfull an return a 204', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.reply(204, true),
      );

      final response = await datasource.put(
          path: fullPath,
          queryParams: const BitsLeaderBoardProps().toJson(),
          data: {});

      expect(response, isA<bool>());
      expect(response, true);
    });

    test('Request is not authorized an return a 403 error', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          403,
          DioError(
            response: Response(
                statusCode: 403,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<ForbiddenRequestException>()),
      );
    });

    test('Request is not correct an return a 400 error', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          400,
          DioError(
            response: Response(
                statusCode: 400,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<BadRequestException>()),
      );
    });

    test('Request is not auth an return a 401 error', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          401,
          DioError(
            response: Response(
                statusCode: 401,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<UnauthorizedException>()),
      );
    });

    test('An unknown error 430 was returned', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          430,
          DioError(
            response: Response(
                statusCode: 430,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<Exception>()),
      );
    });

    test('An error 500 was returned', () async {
      dioAdapter.onPut(
        fullPath,
        data: {},
        queryParameters: const BitsLeaderBoardProps().toJson(),
        (request) => request.throws(
          500,
          DioError(
            response: Response(
                statusCode: 500,
                requestOptions: RequestOptions(
                  baseUrl: baseURL,
                  path: path,
                )),
            requestOptions: RequestOptions(
              baseUrl: baseURL,
              path: path,
            ),
          ),
        ),
      );

      expect(
        () async => await datasource.put(
            path: fullPath,
            queryParams: const BitsLeaderBoardProps().toJson(),
            data: {}),
        throwsA(isA<ServerException>()),
      );
    });
  });
}
