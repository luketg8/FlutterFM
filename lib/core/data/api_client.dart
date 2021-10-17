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

      return response.data;
    } on DioError catch (e, _) {
      if ([
        DioErrorType.receiveTimeout,
        DioErrorType.connectTimeout,
        DioErrorType.sendTimeout,
      ].contains(e.type)) {
        throw const NetworkFailure.noConnection();
      }

      if (e.response == null) {
        throw const NetworkFailure.other();
      }

      final responseData = e.response!.data;

      if (responseData.containsKey('message') &&
          responseData['message'] != null) {
        throw NetworkFailure.withMessage(responseData['message']);
      }

      throw const NetworkFailure.other();
    } catch (e) {
      throw const NetworkFailure.other();
    }
  }
}
