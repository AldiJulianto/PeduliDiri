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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 15, 25, 20),
            height: 150,
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
            margin: EdgeInsets.fromLTRB(40, 20, 40, 20  ),
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
                Divider(
                  color: kLightColor,
                  height: 10,
                  thickness: 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
