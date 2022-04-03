import 'package:flutter/material.dart';

class CostumeText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  CostumeText ({
    required this.text,
    required this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
    );
  }
}