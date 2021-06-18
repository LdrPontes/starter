import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';
import 'package:starter/constants/typography.dart';

enum InputStyle { Regular, RegularDark }

class Input extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const Input({this.text = '', this.textStyle = const TextStyle(), Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}

extension InputExtension on InputStyle {
  TextStyle get style {
    switch (this) {
      case InputStyle.Regular:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 30,
          letterSpacing: 0.78,
          color: kNeutralGrayishColor,
        );
      case InputStyle.RegularDark:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 30,
          letterSpacing: 0.78,
          color: kNeutralGrayishColorDark,
        );
      default:
        return const TextStyle(
          fontSize: 14,
          fontFamily: fontFamily,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w400,
          height: 30,
          letterSpacing: 0.78,
          color: kNeutralGrayishColor,
        );
    }
  }
}
