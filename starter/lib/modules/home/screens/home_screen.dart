import 'package:flutter/material.dart';
import 'package:starter/components/atoms/custom_text.dart';
import 'package:starter/components/atoms/screen_loader.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          'Welcome to Starter Template',
          style: CustomTextStyle.TITLE_SMALL,
          textAlign: TextAlign.center,
          color: Colors.white,
        ),
      ),
      body: ScreenLoader(),
    );
  }
}
