import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final TextStyle style;
  final Color color;
  const CustomText(this.title, this.style, this.color,{Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style.copyWith(color: color),
    );
  }
}
