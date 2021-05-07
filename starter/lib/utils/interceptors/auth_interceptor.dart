import 'package:dio/dio.dart';
import 'package:starter/utils/errors/errors.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      if (err.response?.statusCode == 401) {
        throw UnauthorizedException();
      }
    }
    handler.next(err);
  }
}
