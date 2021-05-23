import 'package:json_annotation/json_annotation.dart';

part 'crypto_currency.g.dart';

@JsonSerializable()
class CryptoCurrency {
  final String id;
  final String symbol;
  final String priceUsd;

  CryptoCurrency(this.id, this.symbol, this.priceUsd);

  factory CryptoCurrency.fromJson(Map<String, dynamic> json) => _$CryptoCurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCurrencyToJson(this);
}