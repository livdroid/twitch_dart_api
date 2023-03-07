import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

final dioLoggerInterceptor =
    InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
  String headers = "HIDDEN";
  /*
  options.headers.forEach((key, value) {
    headers += "| $key: $value";
  });
   */

  debugPrint(
      "┌------------------------------------------------------------------------------");
  debugPrint('''| [DIO] Request: ${options.method} ${options.uri}
| Data: \n${options.data.toString()}
| Headers:\n$headers''');
  debugPrint(
      "├------------------------------------------------------------------------------");
  handler.next(options); //continue
}, onResponse: (Response response, handler) async {
  debugPrint(
      "| [DIO] Response [code ${response.statusCode}]: ${response.data.toString()}");
  debugPrint(
      "└------------------------------------------------------------------------------");
  handler.next(response);
  // return response; // continue
}, onError: (DioError error, handler) async {
  debugPrint("| [DIO] Error: ${error.error}: ${error.response.toString()}");
  debugPrint(
      "└------------------------------------------------------------------------------");
  handler.next(error); //continue
});
