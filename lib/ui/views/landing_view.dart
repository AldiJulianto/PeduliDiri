import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peduli_diri/ui/widgets/costume_button_logReg.dart';
import 'package:peduli_diri/ui/widgets/teks_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class LandingView extends StatelessWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 95,
              ),
              _gambarLanding(),
              SizedBox(
                height: 110,
              ),
              _containerLanding(context),
            ],
          ),
        ),
      ),
    );
  }

  //Container Bawah
  Widget _containerLanding(BuildContext context) {
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
          //Teks judul Peduli diri
          TeksWidgets(
            data: "Peduli Diri",
            fontSize: 38,
            fontColor: kWhiteColor,
            fontFamily: fontPopppins,
            fontWeight: FontWeight.w700,
          ),

          //Batas
          SizedBox(
            height: 5,
          ),
          //Batas

          Padding(
            padding: EdgeInsets.only(left: 7),
            child: TeksWidgets(
              data:
                  "Pedulilah dengan dirimu dulu, catat perjalananmu dengan Aplikasi Peduli Diri.",
              fontSize: 12,
              fontColor: kWhiteColor,
              fontFamily: fontPopppins,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(
            height: 35,
          ),

          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [

                CostumeButtonLogReg(
                  "Masuk", 
                  kSecondColor, 
                  kWhiteColor, 
                  Size(MediaQuery.of(context).size.width * 0.75, 45), 
                  buttonFunction: (){Navigator.pushNamed(context, loginRoute);},
                  
                ),

                SizedBox(
                  height: 7,
                ),

                TeksWidgets(
                  data: "atau",
                  fontColor: kWhiteColor,
                  fontFamily: fontPopppins,
                ),

                SizedBox(
                  height: 7,
                ),

                CostumeButtonLogReg(
                  
                  "Daftar baru", 
                  kWhiteColor, 
                  kPrimaryColor, 
                  Size(MediaQuery.of(context).size.width * 0.75, 45), 
                  buttonFunction: (){
                    Navigator.pushNamed(context, RegisterRoute);
                  },
                  onPrimary: kPrimaryColor,
                  
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _gambarLanding() {
    return SvgPicture.asset(
      gambarLanding,
      width: 300,
    );
  }

}
