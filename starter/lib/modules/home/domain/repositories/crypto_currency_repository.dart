import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

abstract class CryptoCurrencyRepository {
  Future<List<CryptoCurrency>> getCryptoCurrencies();
}