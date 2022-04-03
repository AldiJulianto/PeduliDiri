import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';

class TitleDasboard extends StatelessWidget {
  final String title;
  final String desc;

  TitleDasboard({
    required this.title,
    required this.desc
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: CostumeText(
            text: title,
            textStyle: DsUtamaTitleTextStyle,
          )
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: CostumeText(
            text: desc, 
            textStyle: DsUtamaDescTextStyle
          ),
        )
      ],
    );
  }
}