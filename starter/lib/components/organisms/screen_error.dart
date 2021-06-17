import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starter/components/atoms/custom_text.dart';
import 'package:starter/constants/colors.dart';

class ScreenError extends StatelessWidget {
  final String _title;
  final String _message;
  final void Function()? _onPressTryAgain;

  const ScreenError({required String title, required String message, void Function()? onPressTryAgain})
      : _title = title,
        _message = message,
        _onPressTryAgain = onPressTryAgain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/warning.svg',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 24,
            ),
            CustomText(_title, style: CustomTextStyle.TITLE_MEDIUM),
            SizedBox(
              height: 8,
            ),
            CustomText(
              _message,
              style: CustomTextStyle.REGULAR,
              wrap: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24,
            ),
            MaterialButton(
              onPressed: _onPressTryAgain,
              color: kPrimaryColor,
              child: CustomText(
                'Try Again',
                style: CustomTextStyle.REGULAR,
                // color: kWhite,
              ),
            )
          ],
        ),
      ),
    );
  }
}
