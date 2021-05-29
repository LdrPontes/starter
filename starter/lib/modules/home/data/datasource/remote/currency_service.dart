import 'package:dio/dio.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

abstract class CurrencyService {
  final Dio _http;
  Dio get http => _http;

  CurrencyService(this._http);

  Future<List<CryptoCurrency>> getCryptoCurrencies();
}