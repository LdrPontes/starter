import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

abstract class CurrencyDao {

  void saveCryptoCurrencies(List<CryptoCurrency> currencies);

  List<CryptoCurrency>? getCryptoCurrencies();
}
