import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';

class CostumeButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Color colorButton;
  final Color? onPrimary;
  final Function functionBt;

  CostumeButton({
    required this.text,
    required this.textStyle,
    required this.colorButton,
    this.onPrimary,
    required this.functionBt
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: functionBt != null ? ()=> functionBt () : null,
        child: CostumeText(
          text: text,
          textStyle: textStyle
        ),
        style: ElevatedButton.styleFrom(
          primary: colorButton,
          onPrimary: onPrimary,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.75, 45),
        ),
      ),
    );
  }
}