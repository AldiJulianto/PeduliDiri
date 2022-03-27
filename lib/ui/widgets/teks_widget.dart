import 'package:flutter/material.dart';

class TeksWidgets extends StatelessWidget {
  final String? data;
  final double? fontSize;
  final Color? fontColor;
  final String? fontFamily;
  final FontWeight? fontWeight;

  TeksWidgets({
    this.data,
    this.fontSize,
    this.fontColor,
    this.fontFamily,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data?? "String is Null",
      style: TextStyle(
          fontSize: fontSize,
          color: fontColor,
          fontFamily: fontFamily,
          fontWeight: fontWeight
      )
    );
  }
}
