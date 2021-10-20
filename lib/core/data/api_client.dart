import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_fm/core/domain/network_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

class ApiClient {
  late final Dio _dio;
  ApiClient() {
    _dio = Dio()
      ..options = BaseOptions(
        baseUrl: 'https://ws.audioscrobbler.com/2.0/',
        queryParameters: {
          'api_key': dotenv.env['api_key']!,
          'format': 'json',
        },
      );
  }

  Future<Map<String, dynamic>> makeRequest(
    Map<String, String> queryParams,
  ) async {
    try {
      final response = await _dio.getUri(
        Uri(
          queryParameters: queryParams,
        ),
      );

      if (response.data.containsKey('error')) {
        throw _resolveFailure(response.data);
      }

      return response.data;
    } on DioError catch (e, _) {
      if ([
            DioErrorType.receiveTimeout,
            DioErrorType.connectTimeout,
            DioErrorType.sendTimeout,
          ].contains(e.type) ||
          e.error is SocketException) {
        throw const NetworkFailure.noConnection();
      }

      if (e.response == null) {
        throw const NetworkFailure.other();
      }

      throw _resolveFailure(e.response!.data);
    } catch (e) {
      if (e is NetworkFailure) {
        rethrow;
      }

      throw const NetworkFailure.other();
    }
  }

  NetworkFailure _resolveFailure(dynamic responseData) {
    if (responseData.containsKey('message') &&
        responseData['message'] != null) {
      return NetworkFailure.withMessage(responseData['message']);
    }

    return const NetworkFailure.other();
  }
}
