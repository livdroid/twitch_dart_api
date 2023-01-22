// Mocks generated by Mockito 5.3.2 from annotations
// in twitch_client/test/src/interface/chat_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:twitch_client/src/datasource/twitch_data_source.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [TwitchDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTwitchDataSource extends _i1.Mock implements _i2.TwitchDataSource {
  @override
  _i3.Future<dynamic> get({
    required String? path,
    required Map<String, dynamic>? queryParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #path: path,
            #queryParams: queryParams,
          },
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> patch({
    required String? path,
    required Map<String, dynamic>? data,
    required Map<String, dynamic>? queryParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [],
          {
            #path: path,
            #data: data,
            #queryParams: queryParams,
          },
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> post({
    required String? path,
    required Map<String, dynamic>? data,
    required Map<String, dynamic>? queryParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [],
          {
            #path: path,
            #data: data,
            #queryParams: queryParams,
          },
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> delete({
    required String? path,
    required Map<String, dynamic>? data,
    required Map<String, dynamic>? queryParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {
            #path: path,
            #data: data,
            #queryParams: queryParams,
          },
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
  @override
  _i3.Future<dynamic> put({
    required String? path,
    required Map<String, dynamic>? data,
    required Map<String, dynamic>? queryParams,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [],
          {
            #path: path,
            #data: data,
            #queryParams: queryParams,
          },
        ),
        returnValue: _i3.Future<dynamic>.value(),
        returnValueForMissingStub: _i3.Future<dynamic>.value(),
      ) as _i3.Future<dynamic>);
}
