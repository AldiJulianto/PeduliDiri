import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/shared/share_style.dart';
import 'package:peduli_diri/ui/widgets/CostumeButon.dart';
import 'package:peduli_diri/ui/widgets/CostumeText.dart';
import 'package:peduli_diri/utility/constans.dart';
import 'package:peduli_diri/utility/route_name.dart';

class LandingContain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      height: 341,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(65),
          topRight: Radius.circular(65),
        ),
        color: kPrimaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          //TITLE CONTAIN
          CostumeText(
            text: 'Peduli Diri', 
            textStyle: LdTitleTexstyle
          ),

          const SizedBox(height: 5,),

          //DESC CONTAIN
          Padding(
            padding: EdgeInsets.only(left: 7.0),
            child: CostumeText(
              text: 'Pedulilah dengan dirimu dulu, catat perjalananmu dengan Aplikasi Peduli Diri.', 
              textStyle: LdDescTextStyle,
            ),
          ),

          const SizedBox(height: 35,),

          //BUTTON LOGIN REGISTER CONTAIN
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [

                //LOGIN
                CostumeButton(
                  text: 'Masuk', 
                  textStyle: LrBtWhiteTextStyle, 
                  colorButton: kSecondColor, 
                  functionBt: (){
                    Navigator.pushNamed(context, loginRoute);
                  }
                ),

                const SizedBox(height: 7,),

                CostumeText(
                  text: 'atau', 
                  textStyle: LdDescTextStyle
                ),

                const SizedBox(height: 7,),

                //REGISTER
                CostumeButton(
                  text: 'Daftar baru', 
                  textStyle: LrBtBlueTextStyle, 
                  colorButton: kWhiteColor, 
                  onPrimary: kPrimaryColor,
                  functionBt: (){
                    Navigator.pushNamed(context, RegisterRoute);
                  }
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}