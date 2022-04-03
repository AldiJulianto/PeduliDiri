import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeAppBar.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeCardCarousel.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeContainer.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class DasboardView extends StatelessWidget {
  const DasboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: CostumeAppBar,
      drawer: CostumeDrawerBar,
      body: Column( 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //CARD CAROUSEL
          CostumeCardCarosel(),
          //JARAK
          SizedBox(height: 5,),
          //CONTAIN
          ContainerPerjalanan()
        ],
      ),
    );
  }
}
