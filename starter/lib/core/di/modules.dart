import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:starter/core/navigators/route_navigator.dart';
import 'package:starter/interfaces/http.dart';
import 'package:starter/middlewares/auth_interceptor.dart';
import 'package:starter/modules/home/blocs/crypto/crypto_currency_bloc.dart';
import 'package:starter/modules/home/data/datasource/remote/currency_service.dart';
import 'package:starter/modules/home/data/repositories/crypto_currency_repository_impl.dart';
import 'package:starter/modules/home/domain/repositories/crypto_currency_repository.dart';
import 'package:starter/modules/home/external/currency_service_impl.dart';

GetIt getIt = GetIt.instance;

void startGetItModules() {
  _navigatorModules();
  _networkModules();
  _serviceModules();
  _repositoryModules();
  _blocModules();
}

void _networkModules() {
  getIt.registerSingleton<Dio>(
    HttpHelper(env['BASE_URL']!).addInterceptor(AuthInterceptor()).dio,
  );
}

void _serviceModules() {
  getIt.registerSingleton<CurrencyService>(CurrencyServiceImpl(GetIt.I.get<Dio>()));
}

void _repositoryModules() {
  getIt.registerSingleton<CryptoCurrencyRepository>(CryptoCurrencyRepositoryImpl(GetIt.I.get<CurrencyService>()));
}

void _blocModules() {
  getIt.registerSingleton<CryptoCurrencyBloc>( CryptoCurrencyBloc(GetIt.I.get<CryptoCurrencyRepository>()));
}

void _navigatorModules() {
  getIt.registerLazySingleton<RouteNavigator>(() => RouteNavigator());
}
