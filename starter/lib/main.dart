import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as dot_env;
import 'package:get_it/get_it.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/core/di/modules.dart';
import 'package:starter/core/navigators/route_navigator.dart';
import 'package:starter/modules/home/blocs/crypto/crypto_currency_bloc.dart';
import 'package:starter/modules/home/screens/home_screen.dart';

Future main() async {
  await dot_env.load();
  startGetItModules();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starter',
      theme: _theme(),
      navigatorKey: GetIt.I.get<RouteNavigator>().navigatorKey,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CryptoCurrencyBloc>(
            create: (BuildContext context) => GetIt.I.get<CryptoCurrencyBloc>(),
          )
        ],
        child: HomeScreen(),
      ),
    );
  }

  ThemeData _theme() {
    return ThemeData(
      primaryColor: kPrimaryColor,
      primaryColorDark: kPrimaryColorDark,
      primaryColorLight: kPrimaryColorLight,
      accentColor: kPrimaryColorLight,
      canvasColor: kCanvasColor,
    );
  }
}
