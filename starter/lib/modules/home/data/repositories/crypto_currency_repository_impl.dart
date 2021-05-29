import 'package:starter/modules/home/data/datasource/dao/currency_dao.dart';
import 'package:starter/modules/home/data/datasource/services/currency_service.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';
import 'package:starter/modules/home/domain/repositories/crypto_currency_repository.dart';
import 'package:starter/utils/errors/errors.dart';

class CryptoCurrencyRepositoryImpl extends CryptoCurrencyRepository {
  final CurrencyService _service;
  final CurrencyDao _dao;

  CryptoCurrencyRepositoryImpl(this._service, this._dao);

  @override
  Future<List<CryptoCurrency>> getCryptoCurrencies() async {
    try {
      final response = await _service.getCryptoCurrencies();

      _dao.saveCryptoCurrencies(response);

      return response;
    } catch (err) {
      
      final result = _dao.getCryptoCurrencies();

      if (result != null) {
        return result;
      }

      throw WithoutContentException();
    }
  }
}
