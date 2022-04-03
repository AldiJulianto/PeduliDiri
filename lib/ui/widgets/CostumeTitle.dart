import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';

class CostumeTitleLogin extends StatelessWidget {
  final String textTitle;
  final String textDescription;
  final Widget? child;

  CostumeTitleLogin({
    required this.textTitle,
    required this.textDescription,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              CostumeText(
                text: textTitle, 
                textStyle: LrTitleTextStyle,
              ),
              child!
            ],
          ),
          CostumeText(
            text: textDescription, 
            textStyle: LrDescTextStyle
          )
        ],
      ),
    );
  }
}

class CostumeTitleRegister extends StatelessWidget {
  final String textTitle;
  final String textDescription;


  CostumeTitleRegister({
    required this.textTitle,
    required this.textDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              CostumeText(
                text: textTitle, 
                textStyle: LrTitleTextStyle,
              ),
            ],
          ),
          CostumeText(
            text: textDescription, 
            textStyle: LrDescTextStyle
          )
        ],
      ),
    );
  }
}