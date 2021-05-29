import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:starter/modules/home/domain/entities/crypto_currency.dart';
import 'package:starter/modules/home/domain/repositories/crypto_currency_repository.dart';

part 'crypto_currency_event.dart';
part 'crypto_currency_state.dart';

class CryptoCurrencyBloc extends Bloc<CryptoCurrencyEvent, CryptoCurrencyState> {
  final CryptoCurrencyRepository _repository;

  CryptoCurrencyBloc(CryptoCurrencyRepository repository)
      : _repository = repository,
        super(CryptoCurrencyInitial());

  @override
  Stream<CryptoCurrencyState> mapEventToState(CryptoCurrencyEvent event) async* {
    if (event is GetCryptoCurrenciesEvent) {
      yield* getCryptoCurrencies();
    }
  }

  Stream<CryptoCurrencyState> getCryptoCurrencies() async* {
    yield CryptoCurrencyLoading(true);

    try {
      final result = await _repository.getCryptoCurrencies();

      yield CryptoCurrencySuccess(result);

    } catch (error) {
      yield CryptoCurrencyError();
    }
  }
}
