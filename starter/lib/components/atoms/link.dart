

import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/constants/typography.dart';

enum LinkStyle { Regular16, Regular12 }

class Link extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const Link({ this.text = '', this.textStyle = const TextStyle(), Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}

extension LinkStyleExtension on LinkStyle {
  TextStyle get style {
    switch (this) {
      case LinkStyle.Regular16:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      case LinkStyle.Regular12:
        return const TextStyle(
          fontSize: 12,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 16,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 24,
          color: kNeutralGrayishColorDark,
        );
    }
  }
}