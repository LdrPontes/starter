import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';

enum CustomTextStyle { SMALL, REGULAR_LIGHT, REGULAR, BOLD_SMALL, BOLD_MEDIUM, BOLD_BIG, TITLE_SMALL, TITLE_MEDIUM }

class CustomText extends StatelessWidget {
  final String _font = 'Sora'; //Replace with your font name
  final String _text;

  final CustomTextStyle _style;
  final TextDecoration? _textDecoration;
  final TextAlign? _textAlign;
  final TextOverflow? _textOverflow;

  final bool _wrap;
  final Color? _color;

  const CustomText(
    this._text, {
    required CustomTextStyle style,
    TextDecoration? textDecoration,
    TextAlign? textAlign,
    TextOverflow? textOverflow = TextOverflow.fade,
    bool wrap = false,
    Color? color,
  })  : _style = style,
        _textDecoration = textDecoration,
        _textAlign = textAlign,
        _textOverflow = textOverflow,
        _wrap = wrap,
        _color = color;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: _textStyle,
      softWrap: _wrap,
      textAlign: _textAlign,
      overflow: _textOverflow,
    );
  }

  TextStyle get _textStyle {
    return _enumToStyle(_style).copyWith(fontFamily: _font, decoration: _textDecoration, color: _color);
  }

  TextStyle _enumToStyle(CustomTextStyle style) {
    switch (style) {
      case CustomTextStyle.SMALL:
        return TextStyle(
          fontSize: 12.0,
          height: 1.3,
        );
      case CustomTextStyle.REGULAR_LIGHT:
        return TextStyle(
          fontSize: 14,
          height: 1.4,
          color: kTextGreyDark,
        );
      case CustomTextStyle.REGULAR:
        return TextStyle(
          fontSize: 16.0,
          height: 1.5,
          color: kTextGreyDark,
        );
      case CustomTextStyle.BOLD_SMALL:
        return TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
          height: 1.4,
        );
      case CustomTextStyle.BOLD_MEDIUM:
        return TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          height: 1.5,
        );
      case CustomTextStyle.BOLD_BIG:
        return TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          height: 1.3,
          color: kTextGreyDark,
        );
      case CustomTextStyle.TITLE_SMALL:
        return TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          height: 2.0,
          color: kTitleColor,
        );
      case CustomTextStyle.TITLE_MEDIUM:
        return TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          height: 1.6,
          color: kTitleColor,
        );
    }
  }
}
