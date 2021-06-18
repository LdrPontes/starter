import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/constants/typography.dart';

enum CaptionStyle { C1, C2, C3 }


class Caption extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const Caption({ this.text = '', this.textStyle = const TextStyle(), Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}


extension CaptionStyleExension on CaptionStyle {
  TextStyle get style {
    switch (this) {
      case CaptionStyle.C1:
        return const TextStyle(
          fontSize: 24,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.0,
          height: 36,
          color: kNeutralGrayishColorDark,
        );
      case CaptionStyle.C2:
        return const TextStyle(
          fontSize: 18,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.75,
          height: 36,
          color: kNeutralGrayishColorDark,
        );
      case CaptionStyle.C3:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.78,
          height: 30,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          letterSpacing: 0.78,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}