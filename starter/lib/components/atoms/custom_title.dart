import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/constants/typography.dart';

enum TitleStyle { Heading, Page, Section, Modal, Card }

class CustomTitle extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const Title({ this.text = '', this.textStyle = const TextStyle(), Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}


extension TitleStyleExension on TitleStyle {
  TextStyle get style {
    switch (this) {
      case TitleStyle.Heading:
        return 
        const TextStyle(
          fontSize: 64,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          height: 54,
          color: kNeutralGrayishColorDark,
        );
      case TitleStyle.Page:
        return const TextStyle(
          fontSize: 44,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 48,
          color: kNeutralGrayishColorDark,
        );
      case TitleStyle.Section:
        return const TextStyle(
          fontSize: 32,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 42,
          color: kNeutralGrayishColorDark,
        );
      case TitleStyle.Modal:
        return const TextStyle(
          fontSize: 24,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.0,
          height: 30,
          color: kNeutralGrayishColorDark,
        );
      case TitleStyle.Card:
        return const TextStyle(
          fontSize: 18,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.7,
          height: 30,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 64,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          height: 54,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}