import 'package:dio/dio.dart';

class DioHelper {
  final String _url;
  late final BaseOptions _options;
  late final Dio _dio;
  Dio get dio => _dio;

  DioHelper(this._url) {
    _buildBaseOptions();
    _buildDio();
  }

  void _buildBaseOptions() {
    _options = BaseOptions(
      baseUrl: _url,
      responseType: ResponseType.json,
    );
  }

  void _buildDio() {
    _dio = Dio(_options);
  }

  DioHelper addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);

    return this;
  }
}
