import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/teks_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class CostumeButtonLogReg extends StatelessWidget {
  final String data;
  final Color colorButton;
  final Color colorTeks;
  final Color? onPrimary;
  final Size sizeButton;
  final Function? buttonFunction;

  CostumeButtonLogReg(
    this.data,
    this.colorButton,
    this.colorTeks,
    this.sizeButton,
    
    {
      this.onPrimary,
     required this.buttonFunction, 
    }
    
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: buttonFunction != null ? ()=> buttonFunction !() : null,
        style: ElevatedButton.styleFrom(
          primary: colorButton,
          minimumSize: sizeButton,
          onPrimary: onPrimary
        ),
        child: TeksWidgets(
          data: data,
          fontColor: colorTeks,
          fontFamily: fontPopppins,
          fontSize: 14,
        ),
      ),
    );
  }
  
}