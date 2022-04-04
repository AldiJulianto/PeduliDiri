import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeAppBar.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeCardCarousel.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/CostumeContainer.dart';
import 'package:peduli_diri/utility/constans.dart';

class DasboardView extends StatefulWidget {
  const DasboardView({Key? key}) : super(key: key);

  @override
  State<DasboardView> createState() => _DasboardViewState();
}

class _DasboardViewState extends State<DasboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: CostumeAppBar,
      drawer: CostumeDrawerBar,
      body: SafeArea(
        child: ListView(
          children: [ 
           Column( 
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
          ]
        ),
      ),
    );
  }
}
