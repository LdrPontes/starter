import 'package:flutter/material.dart';
import 'package:starter/constants/colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool isSwitched;
  final Function onChanged;
  final bool disable;
  final activeTrackColor;
  final activeColor;

  const CustomSwitch(this.onChanged,
      {this.disable = false,
      this.isSwitched = false,
      this.activeTrackColor = kPrimaryColorDark,
      this.activeColor = kPrimaryColorDark});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: disable ? null : (value) => onChanged,
      activeTrackColor: activeTrackColor,
      activeColor: activeColor,
    );
  }
}
