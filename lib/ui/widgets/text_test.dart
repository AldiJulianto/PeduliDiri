import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  final String teks;
  final TextStyle teksStyle;

  CustomeText({
    required this.teks, required this.teksStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      teks,
      style: teksStyle,
    );
  }
}

