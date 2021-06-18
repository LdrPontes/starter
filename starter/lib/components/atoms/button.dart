import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class Button extends StatelessWidget {
  final Function onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final Color shadowColor;
  final Widget child;
  final String title;
  final TextStyle textStyle;
  const Button(this.title, this.child, this.backgroundColor, this.onPressed,
      this.textStyle, this.borderRadius, this.shadowColor);

  @override
  Widget build(BuildContext context) {
    return Story.simple(
      name: 'Button',
      child: TextButton(
        onPressed: () => onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
          shadowColor: MaterialStateProperty.all<Color>(shadowColor),
        ),
        child: Row(
          children: [Text(title, style: textStyle), child],
        ),
      ),
    );
  }
}
