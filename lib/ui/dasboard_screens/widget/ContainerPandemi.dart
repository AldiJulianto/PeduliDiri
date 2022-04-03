import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';

class BoxPandemi extends StatelessWidget {
  final String title;
  final String text;
  final String desc;
  final String image;
  final Function function;

  BoxPandemi({
    required this.title,
    required this.text,
    required this.desc,
    required this.image,
    required this.function
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){function;},
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: kLightColor,
        ),
        height: 99,
        width: 300,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image, width: 55,),
                  SizedBox(height:5,),
                  CostumeText(
                    text: title, 
                    textStyle: DsTitleCtTextStyle,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumeText(
                    text: text, 
                    textStyle: DsTitleCtTextStyle
                  ),
                  CostumeText(
                    text: desc, 
                    textStyle: DsDescCtTextStyle
                  ),
                  Container(
                    child: Row(
                      children: [
                      SizedBox(width: 150,),
                      Icon(Icons.keyboard_arrow_right_rounded, size: 30, color: kPrimaryColor,)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}