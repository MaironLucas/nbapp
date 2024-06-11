import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class MyDio extends DioForNative {
  @override
  Future<Response<T>> request<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    const apiKey = const String.fromEnvironment('API_KEY');
    const apiHost = const String.fromEnvironment('API_HOST');
    options?.headers = {
      'x-rapidapi-key': apiKey,
      'x-rapidapi-host': apiHost,
    };
    return super.request(
      path,
      queryParameters: queryParameters,
      data: data,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
