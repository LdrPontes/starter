import 'package:flutter/material.dart';
import 'package:starter/components/atoms/custom_circular_progress.dart';
import 'package:starter/constants/colors.dart';

class ScreenLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CustomCircularProgress(
          height: 72,
          width: 72,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
