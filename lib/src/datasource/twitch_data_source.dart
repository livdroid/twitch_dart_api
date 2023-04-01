import 'package:dio/dio.dart';
import 'package:twitch_client/src/error/exceptions.dart';
import 'package:twitch_client/src/utils/url_constants.dart';

/// A concrete implementation of the [TwitchDataSource] contract.
/// This implementation uses the Dio HTTP client library to communicate with the Twitch API.
///
/// This implementation supports GET, POST, DELETE, PATCH, and PUT requests.
///
/// [dio] is the Dio instance used to communicate with the API.
///
/// [url] is the base URL of the API. By default, it is set to [UrlConstants.apiBaseUrl].
///
/// [TwitchApiDataSourceImpl] also handles exceptions based on the Twitch API documentation.
class TwitchApiDataSourceImpl implements TwitchDataSource {
  final Dio dio;
  final String url;

  TwitchApiDataSourceImpl(String token, String clientId,
      {this.url = UrlConstants.apiBaseUrl, Dio? dioClient})
      : dio = dioClient ??
            Dio(
              url == UrlConstants.apiBaseUrl
                  ? BaseOptions(baseUrl: url, headers: {
                      'Content-Type': 'application/json',
                      'Authorization': 'Bearer $token',
                      'Client-Id': clientId,
                    })
                  : BaseOptions(baseUrl: url, headers: {
                      'Authorization': 'Bearer $token',
                      'Content-Type': 'application/x-www-form-urlencoded'
                    }),
            );

  /// Makes a GET request to the Twitch API with the specified [path] and [queryParams].
  /// Returns the response data if the request is successful.
  /// Throws an exception if the request fails.
  @override
  Future<dynamic> get(
      {required String path, required Map<String, dynamic> queryParams}) async {
    try {
      final response = await dio.get(path, queryParameters: queryParams);
      return response.data;
    } on Exception catch (e) {
      if (e is DioError) {
        _responseHandler(e);
      } else {
        throw Exception('Unknown Exception');
      }
    }
  }

  // Makes a POST request to the Twitch API with the specified [path], [data], and [queryParams].
  /// Returns the response data if the request is successful.
  /// Throws an exception if the request fails.
  @override
  Future<dynamic> post(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams}) async {
    try {
      final response =
          await dio.post(path, data: data, queryParameters: queryParams);
      if (response.statusCode == 204) return true;
      return response.data;
    } on Exception catch (e) {
      if (e is DioError) {
        _responseHandler(e);
      } else {
        throw Exception('Unknown Exception');
      }
    }
  }

  /// Makes a DELETE request to the Twitch API with the specified [path], [data], and [queryParams].
  /// Returns the response data if the request is successful.
  /// Throws an exception if the request fails.
  @override
  Future<dynamic> delete(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams}) async {
    try {
      final response =
          await dio.delete(path, data: data, queryParameters: queryParams);
      if (response.statusCode == 204) return true;
      return response.data;
    } on Exception catch (e) {
      if (e is DioError) {
        _responseHandler(e);
      } else {
        throw Exception('Unknown Exception');
      }
    }
  }

  /// Makes a PATCH request to the Twitch API with the specified [path], [data], and [queryParams].
  /// Returns the response data if the request is successful.
  /// Throws an exception if the request fails.
  @override
  Future<dynamic> patch(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams}) async {
    try {
      final response =
          await dio.patch(path, data: data, queryParameters: queryParams);
      return response.data;
    } on Exception catch (e) {
      if (e is DioError) {
        _responseHandler(e);
      } else {
        throw Exception('Unknown Exception');
      }
    }
  }

  /// Makes a PUT request to the Twitch API with the specified [path], [data], and [queryParams].
  /// Returns the response data if the request is successful.
  /// Throws an exception if the request fails.
  @override
  Future put(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams}) async {
    try {
      final response =
          await dio.put(path, data: data, queryParameters: queryParams);
      return response.data;
    } on Exception catch (e) {
      if (e is DioError) {
        _responseHandler(e);
      } else {
        throw Exception('Unknown Exception');
      }
    }
  }

  ///Private method to handle Dio errors and throw appropriate exceptions
  ///based on the Twitch API documentation
  ///param error The DioError that needs to be handled
  ///throws ForbiddenRequestException if the HTTP status code is 403
  ///throws BadRequestException if the HTTP status code is 400
  ///throws UnauthorizedException if the HTTP status code is 401
  ///throws ServerException if the HTTP status code is 500
  void _responseHandler(DioError error) {
    final message = error.response?.data?['message'] ?? 'Unknown error';
    if (error.response?.statusCode == 403) {
      throw ForbiddenRequestException(message: message);
    } else if (error.response?.statusCode == 400) {
      throw BadRequestException(message: message);
    } else if (error.response?.statusCode == 401) {
      throw UnauthorizedException(message: message);
    } else if (error.response?.statusCode == 500) {
      throw ServerException(message: message);
    } else {
      throw Exception(message);
    }
  }
}

abstract class TwitchDataSource {
  Future<dynamic> get(
      {required String path, required Map<String, dynamic> queryParams});

  Future<dynamic> patch(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams});

  Future<dynamic> post(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams});

  Future<dynamic> delete(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams});

  Future<dynamic> put(
      {required String path,
      required Map<String, dynamic> data,
      required Map<String, dynamic> queryParams});
}
