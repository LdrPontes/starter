import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:starter/core/navigators/route_navigator.dart';
import 'package:starter/interfaces/http.dart';
import 'package:starter/middlewares/auth_interceptor.dart';
import 'package:starter/modules/home/blocs/crypto/crypto_currency_bloc.dart';
import 'package:starter/modules/home/repositories/crypto_currency_repository_impl.dart';
import 'package:starter/modules/home/domain/repositories/crypto_currency_repository.dart';

GetIt getIt = GetIt.instance;

void startGetItModules() {
  _networkModules();
  _navigatorModules();
  _repositoryModules();
  _blocModules();
}

void _networkModules() {
  getIt.registerSingleton<Dio>(
    HttpHelper(env['BASE_URL']!).addInterceptor(AuthInterceptor()).dio,
  );
}

void _repositoryModules() {
  getIt.registerFactory<CryptoCurrencyRepository>(() => CryptoCurrencyRepositoryImpl());
}

void _blocModules() {
  getIt.registerSingletonWithDependencies<CryptoCurrencyBloc>(
      () => CryptoCurrencyBloc(GetIt.I.get<CryptoCurrencyRepository>()),
      dependsOn: [CryptoCurrencyRepository]);
}

void _navigatorModules() {
  getIt.registerLazySingleton(() => RouteNavigator());
}
