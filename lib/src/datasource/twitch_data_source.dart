import 'package:dio/dio.dart';
import 'package:twitch_client/src/error/exceptions.dart';

/// Interface between client and dio package
class TwitchApiDataSourceImpl implements TwitchDataSource {
  final Dio dio;

  TwitchApiDataSourceImpl({required this.dio});

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
