import 'package:flutter/material.dart';
import 'package:peduli_diri/ui/widgets/teks_widget.dart';
import 'package:peduli_diri/utility/constans.dart';

class DasboardView extends StatelessWidget {
  const DasboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor, size: 28),
        elevation: 0,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(
          "Peduli Diri",
          style: TextStyle(
              color: kPrimaryColor,
              fontFamily: fontPopppins,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Container(
            width: 35,
            height: 35,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 3))
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(iconPeduli))),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: kPrimaryColor,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             InkWell(
               child: Container(child: Text("Logout")),
               onTap: (){
                 Navigator.pushNamedAndRemoveUntil(context, loginRoute, (route) => false);
               },
             )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 15, 25, 15),
            height: 130,
            width: 327,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TeksWidgets(
              data: "Catatan Perjalanamu",
              fontColor: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: fontPopppins,
              fontSize: 22,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: TeksWidgets(
              data: "Catat semua perjalanan dengan Peduli Diri.",
              fontColor: kBlackColor,
              fontWeight: FontWeight.w300,
              fontFamily: fontPopppins,
              fontSize: 12,
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(45, 10, 45, 15  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15 )),
                    color: kLightColor,
                  ),
                  height: 110,
                  width: 110,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15 )),
                    color: kLightColor,
                  ),
                  height: 110,
                  width: 110,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Divider(
              thickness: 2,
              color: kLightColor,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TeksWidgets(
              data: "Awas Pandemi!",
              fontColor: Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: fontPopppins,
              fontSize: 22,
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: TeksWidgets(
              data: "Ketahui tentang Covid-19 dan cara pencegahannya dengan aplikasi Peduli Diri.",
              fontColor: kBlackColor,
              fontWeight: FontWeight.w300,
              fontFamily: fontPopppins,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7 )),
                    color: kLightColor,
                  ),
                  height: 99,
                  width: 300,
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7 )),
                    color: kLightColor,
                  ),
                  height: 99,
                  width: 300,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
