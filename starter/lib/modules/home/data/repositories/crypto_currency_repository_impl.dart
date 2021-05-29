import 'package:starter/modules/home/data/datasource/remote/currency_service.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';
import 'package:starter/modules/home/domain/repositories/crypto_currency_repository.dart';

class CryptoCurrencyRepositoryImpl extends CryptoCurrencyRepository {
  final CurrencyService _service;

  CryptoCurrencyRepositoryImpl(this._service);

  @override
  Future<List<CryptoCurrency>> getCryptoCurrencies() {
    return _service.getCryptoCurrencies();
  }
}
