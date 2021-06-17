import 'package:flutter/material.dart';
import 'package:starter/components/atoms/custom_icon.dart';
import 'package:starter/components/atoms/custom_text.dart';

enum PrimaryButton{
  Rest,
  Hover, 
  Pressed,
  Disable,    
}

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final Color backgroundColor;
  final double borderRadius;
  final Color shadowColor;
  final String svgIcon;
  final String title;
  final Color titleColor;
  final TextStyle textStyle;
  const CustomButton(this.title, this.textStyle, this.svgIcon, this.backgroundColor, this.onPressed, this.borderRadius, this.shadowColor, this.titleColor, Key? key ) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor), 
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))),
        shadowColor: MaterialStateProperty.all<Color>(shadowColor),
      ),
      child: Row(
        children: [
          CustomIcon(svgIcon, titleColor),
          CustomText(title, textStyle, titleColor),
        ],
      ),      
    );
  }
}

