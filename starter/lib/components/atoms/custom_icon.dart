import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  final String svgIcon;
  final Color color;
  const CustomIcon(this.svgIcon, this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgIcon,
      color: color,
    );
  }
}
