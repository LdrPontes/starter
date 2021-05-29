import 'package:flutter/material.dart';
import 'package:starter/components/molecules/crypto_currency_tile.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

class CryptoCurrencyList extends StatelessWidget {
  final List<CryptoCurrency> _currencies;
  const CryptoCurrencyList(this._currencies);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _currencies.length,
      itemBuilder: (context, index) {
        return CryptoCurrencyTile(_currencies[index]);
      },
    );
  }
}