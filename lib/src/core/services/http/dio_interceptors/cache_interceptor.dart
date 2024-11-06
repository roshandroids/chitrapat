import 'dart:developer';

import 'package:chitrapat/src/core/core.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';

/// Dio Interceptor used to cache http response in local storage
class CacheInterceptor implements Interceptor {
  /// Creates new instance of [CacheInterceptor]
  CacheInterceptor(this.storageService);

  /// Storage service used to store cache in local storage
  final StorageService storageService;

  /// Helper method to create a storage key from
  /// request/response information
  ///
  /// e.g. for a GET request to /v2/list_movies endpoint:
  /// storage key: 'GET:https://yts.mx/api/v2/list_movies.json'
  @visibleForTesting
  String createStorageKey(
    String method,
    String baseUrl,
    String path, [
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
  ]) {
    var storageKey = '${method.toUpperCase()}:${baseUrl + path}/';
    if (queryParameters.isNotEmpty) {
      storageKey += '?';
      queryParameters.forEach((key, dynamic value) {
        storageKey += '$key=$value&';
      });
    }
    return storageKey;
  }

  /// Method that intercepts Dio error
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('❌ ❌ ❌ Dio Error!');
    log('❌ ❌ ❌ Url: ${err.requestOptions.uri}');
    log('❌ ❌ ❌ ${err.stackTrace}');
    log('❌ ❌ ❌ Response Errors: ${err.response?.data}');
    final storageKey = createStorageKey(
      err.requestOptions.method,
      err.requestOptions.baseUrl,
      err.requestOptions.path,
      err.requestOptions.queryParameters,
    );
    if (storageService.has(storageKey)) {
      return handler.next(err);
    }
  }

  /// Method that intercepts Dio request

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.extra[AppConfigs.dioCacheForceRefreshKey] == true) {
      log('🌍 🌍 🌍 Retrieving request from network by force refresh');
      return handler.next(options);
    }
    final storageKey = createStorageKey(
      options.method,
      options.baseUrl,
      options.path,
      options.queryParameters,
    );
    if (storageService.has(storageKey)) {
      return handler.next(options);
    }
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final storageKey = createStorageKey(
      response.requestOptions.method,
      response.requestOptions.baseUrl,
      response.requestOptions.path,
      response.requestOptions.queryParameters,
    );

    if (response.statusCode != null &&
        response.statusCode! >= 200 &&
        response.statusCode! < 300) {
      log('🌍 🌍 🌍 Retrieved response from network');
      log('⬅️ ⬅️ ⬅️ Response');
      // ignore: lines_longer_than_80_chars
      log('<---- ${response.statusCode != 200 ? '❌ ${response.statusCode} ❌' : '✅ 200 ✅'} ${response.requestOptions.baseUrl}${response.requestOptions.path}');
      log('Query params: ${response.requestOptions.queryParameters}');
      log('-------------------------');

      return handler.next(response);
    }
  }
}
