import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter/modules/home/data/datasource/dao/currency_dao.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

class CurrencyDaoImpl extends CurrencyDao {
  final SharedPreferences _preferences;

  CurrencyDaoImpl(this._preferences);

  @override
  List<CryptoCurrency>? getCryptoCurrencies() {
    final result = _preferences.getStringList('crypto');

    return result?.map((e) => CryptoCurrency.fromJson(jsonDecode(e))).cast<CryptoCurrency>().toList();
  }

  @override
  void saveCryptoCurrencies(List<CryptoCurrency> currencies) {
    _preferences.setStringList('crypto', currencies.map((e) => jsonEncode(e.toJson())).cast<String>().toList());
  }
}
