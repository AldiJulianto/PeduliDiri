import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class CostumeCardCarosel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
      height: 145,
      width: 375,
      decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(10)
        )
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3)
        ),
        items: [
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      kBGraColor, kPrimaryColor
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(card1, width: 110,),
                    width:145,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        CostumeText(
                          text: 'Catat semua perjalanan', 
                          textStyle: DsTitleCtTextStyle
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          child: CostumeText(
                            text: 'Catat semua perjalanananmu\ndengan Aplikasi Peduli Diri.', 
                            textStyle: DsDescCtTextStyle
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 120,),
                              Icon(Icons.keyboard_arrow_right_rounded, size: 30, color: kWhiteColor,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, FormAddRoute);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      kBGraColor, kPrimaryColor
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(card2, width: 145,),
                    width:145,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        CostumeText(
                          text: 'Catat semua perjalanan', 
                          textStyle: DsTitleCtTextStyle
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          child: CostumeText(
                            text: 'Catat semua perjalanananmu\ndengan Aplikasi Peduli Diri.', 
                            textStyle: DsDescCtTextStyle
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 120,),
                              Icon(Icons.keyboard_arrow_right_rounded, size: 30, color: kWhiteColor,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, landingRoute);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                     kPrimaryColor, kBGraColor, 
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(card3, width: 145,),
                    width:145,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30,),
                        CostumeText(
                          text: 'Catat semua perjalanan', 
                          textStyle: DsTitleCtTextStyle
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
                          child: CostumeText(
                            text: 'Catat semua perjalanananmu\ndengan Aplikasi Peduli Diri.', 
                            textStyle: DsDescCtTextStyle
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 120,),
                              Icon(Icons.keyboard_arrow_right_rounded, size: 30, color: kWhiteColor,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}