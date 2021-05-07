import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:starter/utils/helpers/dio_helper.dart';
import 'package:starter/utils/interceptors/auth_interceptor.dart';

GetIt getIt = GetIt.instance;

void startGetItModules() {
  _networkModules();
}

void _networkModules() {
  getIt.registerSingleton<Dio>(
    DioHelper(env['BASE_URL']!).addInterceptor(AuthInterceptor()).dio,
  );
}
