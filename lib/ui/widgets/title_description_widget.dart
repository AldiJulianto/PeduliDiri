import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/teks_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class CostumeTitleDescription extends StatelessWidget {
  final String assetImage;
  final String title;
  final String desc;
  CostumeTitleDescription(this.title,this.desc,  this.assetImage );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              TeksWidgets(
                data: title,
                fontFamily: fontPopppins,
                fontColor: kPrimaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
              _image(assetImage),
              
            ],
          ),
          Container(
            child: TeksWidgets(
              data: desc,
              fontColor: kBlackColor,
              fontFamily: fontPopppins,
              fontSize: 12,
              fontWeight: FontWeight.w200,
            ),
          )
        ],
      ),
    );
  }

  Widget _image(String image){
    return Image.asset(image, width: 38,);
  }
}

class CostumeTitle2 extends StatelessWidget {
  final String title;
  final String desc;

  CostumeTitle2(this.title, this.desc);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              TeksWidgets(
                data: title,
                fontFamily: fontPopppins,
                fontColor: kPrimaryColor,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
              
            ],
          ),
          Container(
            child: TeksWidgets(
              data: desc,
              fontColor: kBlackColor,
              fontFamily: fontPopppins,
              fontSize: 12,
              fontWeight: FontWeight.w200,
            ),
          )
        ],
      ),
    );
  }
}