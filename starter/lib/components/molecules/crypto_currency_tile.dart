import 'package:flutter/material.dart';
import 'package:starter/components/atoms/custom_text.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';

class CryptoCurrencyTile extends StatelessWidget {
  final CryptoCurrency _currency;

  const CryptoCurrencyTile(this._currency);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: Container(
            height: 52,
            width: 52,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 1,
                color: kPrimaryColor,
                style: BorderStyle.solid,
              ),
            ),
            child: Center(
              // child: CustomText(
              //   _currency.symbol,
              //   style: CustomTextStyle.SMALL,
              //   color: kPrimaryColor,
              // ),
            ),
          ),
          // title: CustomText(
          //  _currency.id,
          //   style: CustomTextStyle.REGULAR,
          // ),
        ),
        Divider(
          height: 2,
          thickness: 1,
          indent: 24,
          endIndent: 24,
        )
      ],
    );
  }
}
