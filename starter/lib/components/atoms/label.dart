

import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/constants/typography.dart';

enum LabelStyle { Semibold, HeavyPrimary, Heavy }

class Label extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const Label({this.text = '', this.textStyle = const TextStyle(), Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}

extension LabelStyleExtension on LabelStyle {
  TextStyle get style {
    switch (this) {
      case LabelStyle.Semibold:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 16,
          color: kNeutralGrayishColorDark,
        );
      case LabelStyle.HeavyPrimary:
        return const TextStyle(
          fontSize: 12,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 16,
          color: kPrimaryColorDark,
        );
      case LabelStyle.Heavy:
        return const TextStyle(
          fontSize: 12,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          height: 16,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          height: 16,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}