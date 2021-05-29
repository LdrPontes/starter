import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

abstract class CurrencyService {
  Future<List<CryptoCurrency>> getCryptoCurrencies();
}