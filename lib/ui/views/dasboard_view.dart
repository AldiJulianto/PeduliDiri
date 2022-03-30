import 'package:carousel_slider/carousel_slider.dart';
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
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor
              ),
              accountName: TeksWidgets(
                data: "323243546545456",
                fontColor: kWhiteColor,
                fontFamily: fontPopppins,
                fontSize: 14,
              ),
              accountEmail: TeksWidgets(
                data: "Aldi Julianto",
                fontColor: Colors.black,
                fontFamily: fontPopppins,
                fontSize: 13,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: kWhiteColor,
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_card_rounded,color: Colors.black,),
              title: TeksWidgets(
                data: "Tambah Data",
                fontColor: Colors.black,
                fontFamily: fontPopppins,
                fontSize: 13,
              ),
              onTap: () {
                Navigator.pushNamed(context, AddRoute);
              },
            ),
            ListTile(
              leading: Icon(Icons.history, color: Colors.black,),
              title: TeksWidgets(
                data: "Lihat Data",
                fontColor: Colors.black,
                fontFamily: fontPopppins,
                fontSize: 13,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.apps_outage_rounded, color: Colors.black,),
              title: TeksWidgets(
                data: "Tentang",
                fontColor: Colors.black,
                fontFamily: fontPopppins,
                fontSize: 13,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.black,),
              title: TeksWidgets(
                data: "Keluar",
                fontColor: Colors.black,
                fontFamily: fontPopppins,
                fontSize: 13,
              ),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, landingRoute, (route) => false);
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 15, 25, 15),
            height: 140,
            width: 375,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: CarouselSlider(
              options: CarouselOptions(
                  viewportFraction: 1, height: 130, autoPlay: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TeksWidgets(
                data: "Catatan Perjalanamu",
                fontColor: Colors.black,
                fontWeight: FontWeight.w700,
                fontFamily: fontPopppins,
                fontSize: 22,
              )),
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
            margin: EdgeInsets.fromLTRB(45, 10, 45, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AddRoute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: kLightColor,
                    ),
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          iconBook,
                          width: 55,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TeksWidgets(
                          data: "Tambah data",
                          fontColor: Colors.black,
                          fontFamily: fontPopppins,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, TestRoute);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: kLightColor,
                    ),
                    height: 100,
                    width: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          iconBookSch,
                          width: 55,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        TeksWidgets(
                          data: "Lihat data",
                          fontColor: Colors.black,
                          fontFamily: fontPopppins,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ),
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
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: TeksWidgets(
              data:
                  "Ketahui tentang Covid-19 dan cara pencegahannya dengan aplikasi Peduli Diri.",
              fontColor: kBlackColor,
              fontWeight: FontWeight.w300,
              fontFamily: fontPopppins,
              fontSize: 12,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 45),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: kLightColor,
                  ),
                  height: 99,
                  width: 300,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset(iconVirus,width: 55,),
                            SizedBox(height: 3,),
                            TeksWidgets(
                              data: "Corona Virus",
                              fontColor: Colors.black,
                              fontSize: 12,
                              fontFamily: fontPopppins,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 0, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TeksWidgets(
                              data: "Ketahui Tentang Corona",
                              fontColor: Colors.black,
                              fontSize: 12,
                              fontFamily: fontPopppins,
                              fontWeight: FontWeight.w600,
                            ),
                            TeksWidgets(
                              data: "Kenali virus corona dengan \nAplikasi Peduli Diri",
                              fontColor: kBlackColor,
                              fontSize: 10,
                              fontFamily: fontPopppins,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: kLightColor,
                  ),
                  height: 99,
                  width: 300,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Image.asset(iconMask,width: 55,),
                            SizedBox(height: 3,),
                            TeksWidgets(
                              data: "Pencegahan",
                              fontColor: Colors.black,
                              fontSize: 12,
                              fontFamily: fontPopppins,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 0, 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TeksWidgets(
                              data: "Mencegah Corona",
                              fontColor: Colors.black,
                              fontSize: 12,
                              fontFamily: fontPopppins,
                              fontWeight: FontWeight.w600,
                            ),
                            TeksWidgets(
                              data: "Ketahui bagaimana cara \nmencegah virus Corona.",
                              fontColor: kBlackColor,
                              fontSize: 10,
                              fontFamily: fontPopppins,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
