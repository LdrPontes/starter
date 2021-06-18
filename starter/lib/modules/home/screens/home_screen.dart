import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:starter/components/atoms/custom_title.dart';
import 'package:starter/components/atoms/screen_loader.dart';
import 'package:starter/components/organisms/screen_error.dart';
import 'package:starter/components/organisms/crypto_currency_list.dart';
import 'package:starter/modules/home/blocs/crypto/crypto_currency_bloc.dart';

class HomeScreen extends StatelessWidget {
  final CryptoCurrencyBloc _bloc = GetIt.I.get<CryptoCurrencyBloc>();

  @override
  Widget build(BuildContext context) {
    _bloc.add(GetCryptoCurrenciesEvent());

    return Scaffold(
      appBar: AppBar(
        title: CustomTitle(
          text: 'Welcome to Starter Template',
          textStyle: TitleStyle.Page.style,
        ),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return BlocBuilder<CryptoCurrencyBloc, CryptoCurrencyState>(
      bloc: _bloc,
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
            onPressTryAgain: () => _bloc.add(GetCryptoCurrenciesEvent()),
          );
        }
        return Container();
      },
    );
  }
}
