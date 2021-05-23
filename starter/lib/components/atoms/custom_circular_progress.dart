import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  final double _height;
  final double _width;
  final Color? _color;

  const CustomCircularProgress({required double height, required double width, Color? color})
      : _height = height,
        _width = width,
        _color = color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(_color ?? Colors.black),
      ),
    );
  }
}
