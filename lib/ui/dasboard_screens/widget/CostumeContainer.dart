import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/ContainPerjalanan.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/ContainerPandemi.dart';
import 'package:peduli_diri/ui/dasboard_screens/widget/TitleDasboard.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class ContainerPerjalanan extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleDasboard(
          title: 'Catatan Perjalanamu',
          desc: 'Catat semua perjalanan dengan Peduli Diri.'
        ),

        Container(
          margin: EdgeInsets.fromLTRB(25, 10, 25, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BoxPerjalanan(
                text: "Tambah Data", 
                image: iconBook, 
                function: (){
                  Navigator.pushNamed(context, FormAddRoute);
                }
              ),
              BoxPerjalanan(
                text: "Lihat Data", 
                image: iconBookSch, 
                function: (){}
              )
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 35),
          child: const Divider(
            thickness: 2,
            color: kLightColor,
          ),
        ),

        SizedBox(height: 5,),

        TitleDasboard(
          title: 'Awas Pandemi!',
          desc: 'Ketahui tentang Covid-19 dan cara pencegahannya dengan aplikasi Peduli Diri.'
        ),

        SizedBox(height: 10,),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(

            children: [
              BoxPandemi(
                title: 'Covid-19', 
                text: 'Ketahui tentang Covid-19', 
                desc: 'Kenali Covid-19 dengan aplikasi\nPeduli Diri.', 
                image: iconVirus, 
                function: (){}
              ),

              SizedBox(height: 15,),

              BoxPandemi(
                title: 'Pencegahan', 
                text: 'Antisipasi Covid-19', 
                desc: 'Ketahui bagaimana cara\nmengantisipasi Covid-19', 
                image: iconMask, 
                function: (){}
              ),
            ],
          ),
        )
      ],
    );
  }
}