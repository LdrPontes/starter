import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:starter/modules/home/data/datasource/remote/currency_service.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

class CurrencyServiceImpl extends CurrencyService {
  CurrencyServiceImpl(Dio http) : super(http);

  @override
  Future<List<CryptoCurrency>> getCryptoCurrencies() async {
    try {
      final response = await http.get('/assets');  

      final result = response.data['data'].map((e) => CryptoCurrency.fromJson(e)).cast<CryptoCurrency>().toList();

      return result;
    } on DioError {
      rethrow;
    } catch (err){
      rethrow;
    }
  }
}
