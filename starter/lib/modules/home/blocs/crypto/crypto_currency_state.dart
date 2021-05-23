part of 'crypto_currency_bloc.dart';

@immutable
abstract class CryptoCurrencyState {}

class CryptoCurrencyInitial extends CryptoCurrencyState {}

class CryptoCurrencyLoading extends CryptoCurrencyState {
  final bool isLoading;
  CryptoCurrencyLoading(this.isLoading);
}

class CryptoCurrencySuccess extends CryptoCurrencyState {
  final List<CryptoCurrency> currencies;

  CryptoCurrencySuccess(this.currencies);
}

class CryptoCurrencyError extends CryptoCurrencyState {}
