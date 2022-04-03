import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';


class BoxPerjalanan extends StatelessWidget {
  final String text;
  final String image;
  final Function function;

  BoxPerjalanan({
    required this.text,
    required this.image,
    required this.function
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function != null ? () => function():null,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: kLightColor,
        ),
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 50,),
            SizedBox(height: 5,),
            CostumeText(
              text: text, 
              textStyle: DsTitleCtTextStyle
            )
          ],
        ),
      ),
    );
  }
}