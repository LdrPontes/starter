import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/constants/typography.dart';

enum ParagraphStyle { Semibold, Regular, Light }

class Paragraph extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const Paragraph({ this.text = '', this.textStyle = const TextStyle(), Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}

extension ParagraphStyleExtension on ParagraphStyle {
  TextStyle get style {
    switch (this) {
      case ParagraphStyle.Semibold:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      case ParagraphStyle.Regular:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      case ParagraphStyle.Light:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.normal,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}