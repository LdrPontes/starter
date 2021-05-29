import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:starter/components/atoms/custom_text.dart';
import 'package:starter/components/atoms/screen_loader.dart';
import 'package:starter/components/organisms/screen_error.dart';
import 'package:starter/components/organisms/crypto_currency_list.dart';
import 'package:starter/modules/home/blocs/crypto/crypto_currency_bloc.dart';

class HomeScreen extends StatelessWidget {
  final bloc = GetIt.I.get<CryptoCurrencyBloc>();

  @override
  Widget build(BuildContext context) {
    bloc.add(GetCryptoCurrenciesEvent());

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          'Welcome to Starter Template',
          style: CustomTextStyle.TITLE_SMALL,
          textAlign: TextAlign.center,
          color: Colors.white,
        ),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return BlocBuilder<CryptoCurrencyBloc, CryptoCurrencyState>(
      builder: (context, state) {
        if (state is CryptoCurrencyLoading) {
          return ScreenLoader();
        }
        if (state is CryptoCurrencySuccess) {
          return CryptoCurrencyList(state.currencies);
        }
        if (state is CryptoCurrencyError) {
          return ScreenError(
            title: 'Error on load data',
            message: 'Unable to load cryptocurrency information',
            onPressTryAgain: () => bloc.add(GetCryptoCurrenciesEvent()),
          );
        }
        return Container();
      },
    );
  }
}
